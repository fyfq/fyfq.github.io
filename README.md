# 部署手册
## GIT安装
```bash
yum install git
```
## NPM安装
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export NVM_NODEJS_ORG_MIRROR=http://npm.taobao.org/mirrors/node

# 修改NPM源
npm config set registry http://mirrors.cloud.tencent.com/npm/
# 验证
npm config get registry
nvm install 16
```
## 安装HEXO
```bash
npm install -g hexo-cli
npm install hexo-deployer-git --save
# 主题搜索插件
npm install hexo-generator-searchdb --save
``` 
## GITHUB SSH密钥生成
```bash
git config --global user.mail "iamtomblack@outlook.com"
git config --global user.user "fyfq"
ssh-keygen -t ed25519 -C "iamtomblack@outlook.com"
# 在GITHUB粘贴公钥后测试
ssh -T git@github.com
```
