clear all
cls

****** 打开文件夹
open stata //打开 Stata 的安装目录
open base //打开 Stata 中的 base 文件夹
open plus //打开 Stata 中的 plus 文件夹
open personal //打开 Stata 中的 personal 文件夹
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
