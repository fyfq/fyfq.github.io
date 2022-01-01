#!/bin/bash
echo '--------GIT及CURL--------'
cd ~
sudo apt install -y git
sudo apt install -y curl
echo '--------克隆HEXO--------'
git clone https://hub.fastgit.org/fyfq/fyfq.github.io.git
cd fyfq.github.io
git remote set-url origin git@github.com:fyfq/fyfq.github.io.git
echo '--------安装NVM--------'
curl -o- https://raw.fastgit.org/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
$([ -s "$NVM_DIR/nvm.sh" ]) && $(\. "$NVM_DIR/nvm.sh") # This loads nvm
export NVM_NODEJS_ORG_MIRROR=http://npm.taobao.org/mirrors/node
echo '--------安装NPM--------'
nvm install 16
npm config set registry http://mirrors.cloud.tencent.com/npm/
npm config get registry
echo '--------安装HEXO--------'
npm install -g hexo-cli
npm install hexo-deployer-git --save
npm install hexo-generator-searchdb --save
echo '--------配置GITHUB--------'
git config --global user.email "iamtomblack@outlook.com"
git config --global user.name "fyfq"
ssh-keygen -t ed25519 -C "iamtomblack@outlook.com"
echo '粘贴公钥到github后使用 git -T git@github.com 测试连通性'
