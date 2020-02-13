# zhuyst123/puppeteer-chrome-prerender
与[prerender-spa-plugin](https://github.com/chrisvfritz/prerender-spa-plugin)配合完成前端预渲染的Docker镜像。

## 使用
插件使用需要添加puppeteer的启动参数`executablePath`，否则无法完成预渲染构建。

```js
const PrerenderSPAPlugin = require('prerender-spa-plugin')
renderer: new PrerenderSPAPlugin.PuppeteerRenderer({
    ...
    executablePath: 'google-chrome-unstable'
}
```

```dockerfile
FROM zhuyst123/puppeteer-chrome-prerender

ADD . .

RUN yarn install

RUN npm run build
```