# Stata 命令 open 的更新——open everything

> 作者：王美庭  
> Email: wangmeiting92@gmail.com

## 一、引言

基于命令使用的方便，我们增加了在不输入任何参数下默认打开当前路径的功能（即键入`open`即可打开当前目录）。同时我也更新了本文档（旧文档 [参见Stata 新命令：open--open everything](https://mp.weixin.qq.com/s/IdaTRmNS9itNinM7A3giIA)），详情如下：

该命令能打开任意指定的路径或文件，以及还能用指定的应用程序打开指定的文件，为`shellout`或`cdout`命令的加强版。此外，我们还设置了 **stata**、**base**、**plus** 和 **personal** 关键字，以此代表 Stata 中的系列系统路径。也就是说，我们可以直接使用`open stata`打开当前 Stata 的安装路径、使用`open plus`打开当前 Stata 的 plus 路径等等。

由于`open`调用了 cmd 中的命令，所以该命令仅能使用于在 windows 系统上安装的 Stata。另外，对于本身 Stata 的版本而言，该命令仅能使用于 16.0 及以上版本的 Stata 软件中。

> 如果 `open` 没有输入任何参数，则默认打开当前目录。

## 二、命令的安装

`open`及本人其他命令的代码都托管于 GitHub 上，读者可随时下载安装这些命令。

你可以通过系统自带的`net`命令进行安装：

```stata
net install open, from("https://raw.githubusercontent.com/Meiting-Wang/open/main")
```

也可以通过我所写的命令 `wmt` 进行安装：

```stata
wmt install open
```

> `wmt` 命令可以查询并安装所有我写过的命令。该命令本身可以通过 `net install wmt, from("https://raw.githubusercontent.com/Meiting-Wang/wmt/main")` 进行安装。更多细节参见 [Stata 新命令：wmt——查询并安装个人写的 Stata 新命令](https://mp.weixin.qq.com/s/P2V_6et9crS5GeNNfO-6xQ)。

## 三、语法与选项

**命令语法**：

- 打开指定的路径

```stylus
open ["][dirspec]["]
```

- 打开指定的文件

```stylus
open ["][filespec]["]
```

- 用指定的应用程序打开指定的文件

```stylus
open ["][appspec]["] ["][filespec]["]
```

## 四、实例

```stylus
clear all
cls

****** 打开文件夹
open stata //打开 Stata 的安装目录
open base //打开 Stata 中的 base 文件夹
open plus //打开 Stata 中的 plus 文件夹
open personal //打开 Stata 中的 personal 文件夹
open //默认打开当前文件夹
open . //打开当前文件夹
open subdir //打开当前文件夹的 subdir 子文件夹
open .. //打开上一层文件夹
open ..\fn //打开上一层文件夹的 fn 子文件夹
open "C:\Program Files\Notepad++" //打开指定文件夹(路径若有空格，则需加双引号)

****** 使用默认应用打开指定文件
open README.md
open .\subdir\PS2_WMT.pdf
open ".\subdir\PS4_WMT P10-14.pdf" //路径名或文件名有空格时需加双引号
open "X:\exercise\Stata\open\subdir\PS4_WMT P10-14.pdf"

****** 使用指定程序打开指定文件
open "C:\Program Files\Notepad++\notepad++.exe" "open.ado"
open "D:\softinstall\SumatraPDF\SumatraPDF.exe" ".\subdir\PS2_WMT.pdf"
```

> 以上所有实例都可以在`help open`中找到。
>
> ![](https://cdn.jsdelivr.net/gh/Meiting-Wang/pictures/picgo/picgo-20211003172155.png)

> 点击【阅读原文】可进入该命令的 github 项目。
