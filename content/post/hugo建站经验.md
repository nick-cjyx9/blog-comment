+++
title="Hugo建站经验"
date="2023-01-08"
tags=[
	"技术","干货"
]
+++

1. 第一点hugo的版本一定要新，很多主题在老版本报错
2. 第二在`hugo new xxx.md`时，使用的front matter 默认使用`---`分割线和类似json的写法，这里推荐换作`+++`，默认配置在/archetypes/default.md修改，附上个人配置:
```
+++
author= "cjyx9"
title= "{{ replace .Name "-" " " | title }}"
date= "{{ .Date }}"
tags= [
    "",
]
+++


```
3. 个人认为网站更新部署过程繁琐，写了3个bat脚本，附上（置于blog的根目录）
newPost.bat
```
@echo off
set /p name=Enter post name:
set /p in=R U sure it's %name%?(press enter to continue,ctrl+c to exit)
hugo new /post/%name%.md

E:\Typora\Typora.exe E:/gayhub/blog/content/post/%name%.md
set /p in=Press `enter` to apply.
::这两行可不写
```
deploy.bat
```
cd E:/gayhub/blog
hugo -D
cd public
git add .
git commit -m"auto commit miao~"
git status
::检查下状态以保证commit正常，可不写
@echo off
set /p in=Press `enter` to apply.
git push
set /p in=Press `enter` to exit.
```
server.bat
```
"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --profile-directory=Default http://localhost:1313
hugo server
set /p in=Press `enter` to apply.
```

4. 关于百度收录：
- [提交](https://ziyuan.baidu.com/linksubmit/url?sitename=)
- [bd资源平台](https://ziyuan.baidu.com/dashboard/index)可以看到收录数量

5. 评论系统
    像gitcomment和disqus这种系统比较常见,
    推荐一个用github discussion的[giscus](https://giscus.app/zh-CN)
    如果主题不自带可以直接去`/themes/xxx/layouts`改

6. markdown
    力荐typora，界面清新，功能强大，picgo图床加上snipaste很舒服，目前买断88￥，3台机子可用，有经济实力可入正
    其次vscode加markdown插件：markdown all in one 和 Markdown Preview Mermaid Support基本可以实现预览和图表

7. 图床：

  推荐[smms](https://smms.app)+[snipaste](https://zh.snipaste.com/)

picgo似乎挺强大，但是个人不爱用，可以了解
