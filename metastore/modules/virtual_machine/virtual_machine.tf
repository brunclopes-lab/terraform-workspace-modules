# Create virtual network
resource "azurerm_virtual_network" "my_terraform_vnet" {
  name                = "${var.prefix_name}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}

# Create subnet
resource "azurerm_subnet" "my_terraform_subnet" {
  name                 = "${var.prefix_name}-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.my_terraform_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
  service_endpoints    = ["Microsoft.Storage"]

  depends_on = [azurerm_virtual_network.my_terraform_vnet]
}

# Create public IPs
resource "azurerm_public_ip" "my_terraform_public_ip" {
  name                = "${var.prefix_name}-public-ip"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  allocation_method   = "Dynamic"

  depends_on = [azurerm_virtual_network.my_terraform_vnet]
}

# Create Network Security Group and rules
resource "azurerm_network_security_group" "my_terraform_nsg" {
  name                = "${var.prefix_name}-nsg"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "RDP"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "web"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  depends_on = [azurerm_virtual_network.my_terraform_vnet]
}

# Create network interface
resource "azurerm_network_interface" "my_terraform_nic" {
  name                = "${var.prefix_name}-nic"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "my_nic_configuration"
    subnet_id                     = azurerm_subnet.my_terraform_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.my_terraform_public_ip.id
  }

  depends_on = [azurerm_subnet.my_terraform_subnet, azurerm_public_ip.my_terraform_public_ip]
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "example" {
  network_interface_id      = azurerm_network_interface.my_terraform_nic.id
  network_security_group_id = azurerm_network_security_group.my_terraform_nsg.id

  depends_on = [azurerm_network_interface.my_terraform_nic, azurerm_network_security_group.my_terraform_nsg]
}


# Create virtual machine
resource "azurerm_windows_virtual_machine" "my_vm" {
  name                  = "vm${replace(var.prefix_name, "-", "")}"
  admin_username        = var.vm_user
  admin_password        = var.vm_password
  location              = var.resource_group_location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.my_terraform_nic.id]
  size                  = "Standard_E2s_v3"

  os_disk {
    name                 = "disk${replace(var.prefix_name, "-", "")}"
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = 128
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }

  tags = {
  ambiente   = var.ambiente
  owner      = var.owner
  managed-by = var.managed_by
  start      = "Auto"
  stop       = "Auto"
    }

  depends_on = [azurerm_network_interface.my_terraform_nic]
}