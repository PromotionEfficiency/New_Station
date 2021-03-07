$computer_name = Read-Host -Prompt 'Input BC name'
Rename-Computer -NewName $computer_name
add-computer –domainname promoe.com.sa -Credential AD\Administrator -restart -force