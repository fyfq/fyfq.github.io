#!/bin/bash
yum install git
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export NVM_NODEJS_ORG_MIRROR=http://npm.taobao.org/mirrors/node

npm config set registry http://mirrors.cloud.tencent.com/npm/
npm config get registry
nvm install 16
npm install -g hexo-cli
npm install hexo-deployer-git --save
npm install hexo-generator-searchdb --save
git config --global user.mail "iamtomblack@outlook.com"
git config --global user.user "fyfq"
ssh-keygen -t ed25519 -C "iamtomblack@outlook.com"
echo '粘贴公钥到github后使用 git -T git@github.com 测试连通性'
