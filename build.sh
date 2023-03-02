#!/usr/bin/env bash
SSHREMOTE=ubuntu@152.136.186.81
ssh ${SSHREMOTE} 'cd /usr/local/code/stable-diffusion-webui; python3 launch.py'
#pip3 install git+https://github.com/mlfoundations/open_clip.git@bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b --prefer-binary
#pip3 install git+https://github.com/TencentARC/GFPGAN.git@8d2447a2d918f8eba5a4a01463fd48e45126a379 --prefer-binary
#pip3 install git+https://github.com/openai/CLIP.git@d50d76daa670286dd6cacf3bcd80b5e4823fc8e1 --prefer-binary
pip3 install git+https://github.com/mlfoundations/open_clip.git@bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b --prefer-binary
#ssh ${SSHREMOTE} 'cd /usr/local/code/stable-diffusion-webui; pip3 install git+https://github.com/openai/CLIP.git@d50d76daa670286dd6cacf3bcd80b5e4823fc8e1 --prefer-binary'
python3 -m pip install CLIP
python3 -m pip install open_clip
python3 -m pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
python3 -m pip config unset global.index-url
python3 -m pip config get global.index-url
pip3 install -r requirements.txt
python3 setup.py install
Command: "git" -C "repositories/stable-diffusion-stability-ai" checkout 47b6b607fdd31875c9279cd2f4f16b92e4ea958e
git checkout 47b6b607fdd31875c9279cd2f4f16b92e4ea958e
git -c "repositories/stable-diffusion-stability-ai" checkout 47b6b607fdd31875c9279cd2f4f16b92e4ea958e


exit 0