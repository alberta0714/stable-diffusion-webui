#!/usr/bin/env bash
SSHREMOTE=root@43.130.154.63
while True
do
#scp -r ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/out.tar.gz /e/ai/
#scp -r ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/extensions/sd-webui-additional-networks.tar.gz /e/ai/
rsync -rvth ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/outputs/ /Users/sunzhanchao/Downloads/aiputputs/
#rsync -rvth ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/outputs/ /e/ai/outputs/
sleep 15
done
exit 0