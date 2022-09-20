
https://e-ruption.fr

# Site web d'E-ruption



### Spawn the project 

```bash
export eruption_WebENV="production"
export HUGO_THEME_GIT_SSH=${HUGO_THEME_GIT_SSH:-"git@github.com:StaticMania/roxo-hugo.git"}
#

npm run preps:all
npm i
npm run spawn:project:gen

```


### Run locally 


```bash

export DESIRED_VERSION=0.0.0
export DESIRED_VERSION=master

cd ~/e-ruption.work
git clone git@github.com:e-ruption/website.git ~/e-ruption.work

git checkout ${DESIRED_VERSION}


export PATH=$PATH:/usr/local/go/bin && go version
export HUGO_SERVER_IP=127.0.0.1
export HUGO_PORT_NO=5654


hugo serve -b http://${HUGO_SERVER_IP}:${HUGO_PORT_NO} -p ${HUGO_PORT_NO} --bind ${HUGO_SERVER_IP} -w

```

<!-- 
* spinning up the hugo project :

```bash
export PATH=$PATH:/usr/local/go/bin && go version
export HUGO_PORT_NO=5654
export HUGO_SERVER_IP=0.0.0.0
export HUGO_THEME_SSH_URI="git@github.com:themefisher/hargo-hugo"
export HUGO_THEME_VERSION="master"
export HUGO_THEME_VERSION="ae67348579fdd36395711b1e726bc67c48bc9169"

hugo new site eruptor
cp -fR ./eruptor/* .
rm -fr ./eruptor/

git clone ${HUGO_THEME_SSH_URI} ./themes/hargo

cd ./themes/hargo

git checkout ${HUGO_THEME_VERSION}
rm -fr ./.git/

cd ../..


# then edit the config.toml
cat <<EOF> ./config.toml
baseURL = 'http://e-ruption.fr/'
languageCode = 'en-us'
title = 'Disrupt the market'
themesDir = "./themes/"
theme = "hargo"
EOF


hugo serve --baseURL http://${HUGO_SERVER_IP}:${HUGO_PORT_NO} --bind ${HUGO_SERVER_IP} --port ${HUGO_PORT_NO}

# Press Ctrl + C

# Set up example site :

cp -f themes/hargo/exampleSite/config.toml .

cp -fR themes/hargo/exampleSite/content/* ./content
cp -fR themes/hargo/exampleSite/data/* ./data
cp -fR themes/hargo/exampleSite/resources/* ./resources
cp -fR themes/hargo/exampleSite/static/* ./static

hugo serve --baseURL http://${HUGO_SERVER_IP}:${HUGO_PORT_NO} --bind ${HUGO_SERVER_IP} --port ${HUGO_PORT_NO}

# Press Ctrl + C

```


-->

### Deploy your PR to https://surge.sh 


```bash
# npm i
npm run pr
```

### Deploy to production to https://e-ruption.fr


```bash
# npm i
npm run ci:release:build:gh_pages
```