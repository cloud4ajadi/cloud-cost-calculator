# Cloud Cost Calculator – Azure Static Website Deployment

## Project Overview

This project demonstrates how to deploy a static website to Microsoft Azure using Azure CLI and automate deployments using GitHub Actions.

The website is a simple Cloud Cost Calculator that estimates monthly infrastructure cost based on the number of virtual machines and storage used.

## Technologies Used

* HTML
* CSS
* JavaScript
* Azure Blob Storage Static Website
* Azure CLI
* GitHub Actions CI/CD

## Deployment Steps

### 1. Clone the repository

git clone https://github.com/yourusername/cloud-cost-calculator.git

### 2. Login to Azure

az login

### 3. Run the deployment script

chmod +x deploy-static-site.sh
./deploy-static-site.sh

### 4. Access the website

After deployment, Azure will output the website URL.

## CI/CD Automation

GitHub Actions automatically uploads new site files to Azure whenever changes are pushed to the main branch.

## Project Structure

cloud-cost-calculator/
│
├── index.html
├── styles.css
├── calculator.js
├── deploy-static-site.sh
└── .github/workflows/deploy.yml

![Deployment](https://github.com/cloud4ajadi/cloud-cost-calculator/actions/workflows/deploy.yml/badge.svg)