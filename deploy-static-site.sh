#!/bin/bash

RESOURCE_GROUP="jamiu_project_rg"
LOCATION="canadacentral"
STORAGE_ACCOUNT="jamiu060cloudcostcal"

echo "Creating resource group..."
az group create \
--name $RESOURCE_GROUP \
--location $LOCATION

echo "Creating storage account..."
az storage account create \
--name $STORAGE_ACCOUNT \
--resource-group $RESOURCE_GROUP \
--location $LOCATION \
--sku Standard_LRS

echo "Enabling static website hosting..."
az storage blob service-properties update \
--account-name $STORAGE_ACCOUNT \
--static-website \
--index-document index.html \
--404-document 404.html

echo "Getting storage account key..."
ACCOUNT_KEY=$(az storage account keys list \
--resource-group $RESOURCE_GROUP \
--account-name $STORAGE_ACCOUNT \
--query "[0].value" \
--output tsv)

echo "Uploading website files..."
az storage blob upload-batch \
--account-name $STORAGE_ACCOUNT \
--account-key $ACCOUNT_KEY \
--destination '$web' \
--source .

echo "Getting website URL..."
az storage account show \
--name $STORAGE_ACCOUNT \
--resource-group $RESOURCE_GROUP \
--query "primaryEndpoints.web" \
--output tsv