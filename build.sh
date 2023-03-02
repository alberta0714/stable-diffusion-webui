#!/usr/bin/env bash
SSHREMOTE=ubuntu@152.136.186.81
ssh ${SSHREMOTE} 'cd /usr/local/code/stable-diffusion-webui; python3 launch.py'
#pip3 install git+https://github.com/mlfoundations/open_clip.git@bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b --prefer-binary
#pip3 install git+https://github.com/TencentARC/GFPGAN.git@8d2447a2d918f8eba5a4a01463fd48e45126a379 --prefer-binary
#pip3 install git+https://github.com/openai/CLIP.git@d50d76daa670286dd6cacf3bcd80b5e4823fc8e1 --prefer-binary
#pip3 install git+https://github.com/mlfoundations/open_clip.git@bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b --prefer-binary
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
git -c "repositories/stable-diffusion-stability-ai" checkout fc1488421a2761937b9d54784194157882cbc3b1
yum remove git
yum -y install https://packages.endpoint.com/rhel/7/os/x86_64/endpoint-repo-1.7-1.x86_64.rpm
yum install git
git --version


# upgrade git failed
#yum remove epel-release.noarch
#yum remove ius-release.noarch
#yum install https://repo.ius.io/ius-release-el7.rpm
#yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# upgrade git
# https://blog.csdn.net/qq_15371293/article/details/124477590
yum install -y curl-devel expat-devel gettext-devel openssl-devel zlib-devel
yum install -y gcc perl-ExtUtils-MakeMaker
# 升级 解决 SSL connect error
yum update -y nss curl libcurl
mkdir -p /usr/local/git
#https://github.com/git/git/tags?after=v2.23.2
wget https://github.com/git/git/archive/refs/tags/v2.8.4.tar.gz
wget https://github.com/git/git/archive/refs/tags/v1.8.5.tar.gz
make prefix=/usr/local/git all
make prefix=/usr/local/git install
# 成功了
nohup ./webui.sh --share > stdout.log 2>&1 &
tail -f stdout.log

# 模型下载和安装
wget -O koreanDollLikeness_v10.safetensors https://civitai.com/api/download/models/8750
cd models/Stable-diffusion
wget -O chilloutmix_NiPrunedFp32.safetensors https://civitai.com/api/download/models/9475 --no-check-certificate
作者：jasoai https://www.bilibili.com/read/cv21955055 出处：bilibili


exit 0