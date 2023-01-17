cd E:/gayhub/blog
@echo off
set /p name=Enter name:
set /p in=R U sure it's %name%?
hugo new /post/%name%.md
E:\Typora\Typora.exe E:/gayhub/blog/content/post/%name%.md
set /p in=Press `enter` to apply.