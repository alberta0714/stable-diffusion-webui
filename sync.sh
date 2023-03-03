#!/usr/bin/env bash
SSHREMOTE=root@43.130.154.63
#while True
#do
  #scp -r ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/out.tar.gz /e/ai/
  #scp -r ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/extensions/sd-webui-additional-networks.tar.gz /e/ai/
  rsync -rvth ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/outputs/ /Users/sunzhanchao/Downloads/aioutputs/
  #rsync -rvth ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/outputs/ /e/ai/outputs/
#echo "slee 15 seconds ..."
#sleep 15
#done
exit 0