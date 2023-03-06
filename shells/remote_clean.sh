#!/usr/bin/env bash
SSHREMOTE=root@43.130.154.63
#scp -r ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/out.tar.gz /e/ai/
#scp -r ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/extensions/sd-webui-additional-networks.tar.gz /e/ai/
#rsync -rvth ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/outputs/ /Users/sunzhanchao/Downloads/aioutputs/
#rsync -rvth ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/outputs/ /cygdrive/e/ai/aioutputs

ssh ${SSHREMOTE} 'rm -rf /data/code/github/stable-diffusion-webui/outputs/* ; ls /data/code/github/stable-diffusion-webui/outputs/'

exit 0