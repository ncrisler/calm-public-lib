#name             "DeleteVm"
#maintainer       "Calm.io"
#maintainer_email "ops.calm.io"
#description      "This script deletes VM in system center virtual machine manager"

Import-Module "C:\Program Files\Microsoft System Center 2012 R2\Virtual Machine Manager\bin\psModules\virtualmachinemanager\virtualmachinemanager.psd1"
get-vm -name "@@{VM_NAME}@@" | Stop-SCVirtualMachine
Remove-SCVirtualMachine -VM "@@{VM_NAME}@@" -Force
Remove-VM -VM "@@{VM_NAME}@@" -Force
