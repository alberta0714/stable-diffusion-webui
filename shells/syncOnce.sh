#!/usr/bin/env bash
SSHREMOTE=root@43.130.154.63
rsync -rvth ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/outputs/ /Users/sunzhanchao/Downloads/aioutputs/
#rsync -rvth ${SSHREMOTE}:/data/code/github/stable-diffusion-webui/outputs/ /cygdrive/e/ai/aioutputs
exit 0






