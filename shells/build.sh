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
wget -O chilloutmix_NiPrunedFp32Fix.safetensors https://civitai.com/api/download/models/9475 --no-check-certificate


#####
https://civitai.com/models/8101/female-cartoon-deer
wget -O femaleCartoonDeer_10.safetensors https://civitai.com/api/download/models/9561 --no-check-certificate

https://civitai.com/models/15447/kaiba-anime-style-unique-cartoonish-anime-style
wget -O kaibaAnimeStyleUnique_lighterVersion12.safetensors https://civitai.com/api/download/models/18213 --no-check-certificate

https://civitai.com/models/1618/cartoonishdoll
wget -O cartoonish_doll.pt https://civitai.com/api/download/models/1761 --no-check-certificate

https://civitai.com/models/4181/hotfantasy-ai-anime-hd-v13-720p
wget -O hotfantasyAIAnimeHDV1_hotfantasyAIAnimeV13 https://civitai.com/api/download/models/6199 --no-check-certificate












git clone https://github.com/kohya-ss/sd-webui-additional-networks extensions/sd-webui-additional-networks
git clone https://github.com/kohya-ss/sd-webui-additional-networks sd-webui-additional-networks
cd extensions/sd-webui-additional-networks/models
wget -O koreanDollLikeness_v10.safetensors https://civitai.com/api/download/models/8750 --no-check-certificate
wget -O koreanDollLikeness_v1.safetensors https://civitai.com/api/download/models/13739 --no-check-certificate
wget -O chilloutnight_.safetensors https://civitai.com/api/download/models/9770 --no-check-certificate

best quality, ultra high res, (photorealistic:1.4), Iwoman, Hatsune Miku , sleeveless white button shirt,  black skirt, black choker, cute,(Kpop idol), (aegyo sal:1 ), (platinum blonde hair:1), ((puffy eyes)),(red hair:1), facing front, full body , looking at viewer
paintings, sketches,(worst quality:2), (low quality:2), (normal quality:2),lowres, normal quality, ((monochrome)),((grayscale)),skin spots, acnes, skin blemishes, age spot, glans, nsfw, nipples


(8k, RAW photo, best quality, masterpiece:1.2), (realistic, photo-realistic:1.37), omertosa, 1girl, (Kpop idol), (aegyo sal:1), cute, cityscape, night, rain, wet, professional lighting, photon mapping, radiosity, physically-based rendering,
EasyNegative, paintings, sketches, (worst quality:2), (low quality:2), (normal quality:2), lowres, normal quality, ((monochrome)), ((grayscale)), skin spots, acnes, skin blemishes, age spot, glans,extra fingers,fewer fingers,strange fingers,bad hand

rsync -r root@43.130.154.63:/data/code/github/stable-diffusion-webui/outputs/ /Users/sunzhanchao/Downloads/aiputputs/

exit 0


photography of a beautiful Chinese girl, 1girl,
64k, RAW photo, (ultra high res), ultra detailed, ((physically-based rendering)), best quality, solo focus,masterpiece,best quality,official art,
(realistic, photo-realistic:1.4), (high detailed skin:1.6),(pose:1.4),(detailed face:1.5),
extremely detailed CG unity 8k wallpaper,
(long shot:1.3),(fujifilm xt3:1.4),
<lora:koreanDollLikeness_v10:0.3>,
<lora:south_v1:0.4>,
<lora:juan_v1:0.3>,
(red space suit:1.3),(red armor:1.3), ((beautiful detailed eyes)),(gray hair),
(soft light:1.3),(global illumination),(studio light),(vivd colors:1.4),vibrant details,
(WE scene:1.2),(industrial building),
Negative prompt: (EasyNegative:1.2), ng_deepnegative_v1_75t, paintings, sketches, (worst quality:2), (low quality:2), (normal quality:2), lowres, ((monochrome)), (grayscale:1.2), (skin spots:1.6), acnes, (skin blemishes), (age spot), glans,extra fingers,fewer fingers,(watermark:1.2),(letters:1.2),(nsfw:1.2),teeth,(sexy:1.2),(belly:1.5),(English Text),same face,extra leges,((NASA logo)),(big breast:1.7),((USA flag)),
(twisted fingers: 1.3), (excessively bent fingers: 1.3),(worst quality, low quality:1.4),((on stomach:2.0)),((tranny)),(interlocked fingers: 1.3),
Size: 1024x1024, Seed: 1827603352, Model: chilloutmix_NiPrunedFp32Fix, Steps: 108, Sampler: DPM++ 2M Karras, CFG scale: 7, Mask blur: 4, Model hash: fc2511737a, ControlNet Model: control_sd15_openpose [fef5e48e], ControlNet Module: openpose, ControlNet Weight: 1, ControlNet Enabled: True, Denoising strength: 0.75, ControlNet Guidance Strength: 1


pip install torch==1.13.1 torchvision==0.14.1  --extra-index-url https://download.pytorch.org/whl/cu117
pip install torchvision==0.14.1+cu117 --extra-index-url https://download.pytorch.org/whl/cu117
pip install torch==1.13.1+cu117 --no-cache-dir --extra-index-url https://download.pytorch.org/whl/cu117
