# AZ-104-Training

### instrctions:
1. Run custom script using : **command to execute:: ./file-name** in our case: `./custom_script.sh`
- this installs a webpage --> navigate to `vm-ip/video/test.html` to view the second page
- extentions can also be `added after vm creation` : 
```sh
az vm extension set \
 --publisher Microsoft.Azure.Extensions \
 --version 2.0 \
 --name CustomScript \
 --resource-group myResourceGroupAG \
 --vm-name myVM \
 --settings '{ "fileUris": ["https://raw.githubusercontent.com/Azure/azure-docs-powershell-samples/master/application-gateway/iis/install_nginx.sh"], "commandToExecute": "./install_nginx.sh" }'
 ```
##### view logs for custom script 
1. for linux navigate to `/var/log/azure/custom-script/handler.log` file 
- ```sudo tail -f /var/log/azure/custom-script/handler.log```
2. for windows navigate to `C:\WindowsAzure\Logs\Plugins\Microsoft.Compute.CustomScriptExtension\<version>`
