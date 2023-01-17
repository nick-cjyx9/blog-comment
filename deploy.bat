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