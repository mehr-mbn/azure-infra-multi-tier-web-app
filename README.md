# Enterprise-Ready Azure Infrastructure for a Multi-Tier Web App

This project demonstrates a complete Azure infrastructure deployment based on AZ-104 certification scope. All resources are created using Azure CLI and follow real-world best practices.

## 🌐 Project Overview

- Resource Group: `rg-webapp-infra`
- Region: `canadacentral`
- Purpose: Simulate a web-tier architecture with secure access, storage, monitoring, and automation

## 🧱 Components

| Layer         | Technology                                   |
|---------------|----------------------------------------------|
| Networking    | VNet, Subnets, NSG, Public IP, Load Balancer |
| Compute       | 2x Windows Server VMs (webvm1, webvm2)       |
| Web Tier      | IIS on each VM + Load Balancing              |
| Data Tier     | Azure SQL Database with Private Endpoint     |
| Storage       | Azure File Share mounted as Z:               |
| Monitoring    | Log Analytics + Alerts                       |
| Automation    | Auto Shutdown using Runbook                  |

## ⚙️ Key Features

- Secure SQL access with Private Endpoint + Private DNS
- Centralized logging with Log Analytics
- Alert on CPU > 80% with Azure Monitor
- Scheduled auto-shutdown of VMs at 11PM (Montreal Time)
- File sharing across VMs with Azure Files

## 🚀 Deployment Steps

1. Create resource group and virtual network
2. Deploy Load Balancer + NSG + 2 VMs
3. Install IIS + Test HTTP load balancing
4. Create Azure SQL Database with Private Endpoint
5. Mount Azure File Share to VMs
6. Enable Log Analytics + Alerts
7. Create Automation Runbook for nightly shutdown

## 📁 Folder Structure

```
project-root/
├── scripts/
│   ├── mount-fileshare.ps1
│   └── shutdown-vms.ps1
├── diagrams/
│   └── architecture.png
├── README.md
└── Full Azure Deployment Project Report.pdf
```

## 🛠️ Technologies Used

- Azure CLI
- Azure Monitor
- PowerShell
- Automation Account & Runbook
- Log Analytics
- Virtual Network + NSG
- Azure Storage (File Share)
- Azure SQL PaaS

## 🧠 What I Learned

- Real-world use of AZ-104 knowledge
- Private access control using endpoints
- Configuring alerts and performance monitoring
- Building maintainable cloud infra with auto-scaling potential