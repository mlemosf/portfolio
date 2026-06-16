#!/bin/bash
# Envia um site hugo para o servidor remoto

url=root@192.53.170.124
dir=/var/www/matheuslemos.com/public/
ssh_identity_file=${HOME}/.ssh/linode_notedebian

# hugo && rsync \
# 	    -avz \
# 		-e "ssh -i ${ssh_identity_file}" \
# 	    --delete public/ \
# 		${url}:${dir}
hugo && rsync \
	    -avz \
		-e "ssh -i ${ssh_identity_file}" \
	    --delete public/ \
		${url}:${dir}



if [ $? -eq 0 ]; then
    echo "Site atualizado com sucesso"
    exit 0
else
    echo "Falha atualizando o site"
    exit 1
fi
