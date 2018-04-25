# KNAPP
搭建一个提高开发效率的iOS静态库工程。探索了出了一个提高静态库工程开发的搭建方法，并在GitHub创建了对应的开源项目。  此项目模板完美解决静态库工程和demoApp工程的集成，提高开发调试效率,方便静态库的源码和demo源码的管理维护。



# [推荐使用git_subtree 进行引用静态库](https://kunnan.github.io/2018/04/25/git_subtree/)

>* git remote -v
>```
>devzkndeMacBook-Pro:KNAPP devzkn$ git remote -v
KNCocoaTouchStaticLibrary	git@github.com:zhangkn/KNCocoaTouchStaticLibrary.git (fetch)
KNCocoaTouchStaticLibrary	git@github.com:zhangkn/KNCocoaTouchStaticLibrary.git (push)
origin	git@github.com:zhangkn/KNAPP.git (fetch)
origin	git@github.com:zhangkn/KNAPP.git (push)
>```


# 步骤(git clone的方式)
>* [搭建一个提高开发效率的iOS静态库工程](https://blog.csdn.net/z929118967/article/details/73872024)
>* 1、快速创建一个静态库，利用KNAPP的模板
```
devzkndeMacBook-Pro:cocoapodStatic devzkn$ git clone git@github.com:zhangkn/KNAPP.git
```
>* 进入存放静态库的目录
```
cd /Users/devzkn/code/cocoapodDemo/cocoapodStatic/KNAPP/
```
>* 3、拷贝静态库
```
devzkndeMacBook-Pro:KNAPP devzkn$ git clone git@github.com:zhangkn/KNCocoaTouchStaticLibrary.git
```


# see also
>* [KNCocoaTouchStaticLibrary](https://github.com/zhangkn/KNCocoaTouchStaticLibrary)





