{smcl}
{right:Updated time: Sep 30, 2021}
{* -----------------------------title------------------------------------ *}{...}
{p 0 14 2}
{bf:[W-18] open} {hline 2} Open everything. You can view the source code in {browse "https://github.com/Meiting-Wang/open":github}.


{* -----------------------------Syntax------------------------------------ *}{...}
{title:Syntax}

{p 4 4 2}
Open specified directory

{p 8 8 2}
{cmd:open} ["][{it:dirspec}]["]

{p 4 4 2}
Open specified file

{p 8 8 2}
{cmd:open} ["][{it:filespec}]["]

{p 4 4 2}
Use the specified application to open the specified file

{p 8 8 2}
{cmd:open} ["][{it:appspec}]["] ["][{it:filespec}]["]


{* -----------------------------Contents------------------------------------ *}{...}
{title:Contents}

{p 4 4 2}
{help open##Description:Description}{break}
{help open##Examples:Examples}{break}
{help open##Author:Author}{break}


{* -----------------------------Description------------------------------------ *}{...}
{marker Description}{title:Description}

{p 4 4 2}
{cmd:open} can open any specified directory or file, and can use the specified application to open the specified file. If the directory name or file name contains spaces, double quotation marks are required.

{p 4 4 2}
In addition, we use {bf:stata}, {bf:base}, {bf:plus}, and {bf:personal} keywords to represent Stata's series system directories. Namely, for instance, you can use {stata open stata} to open Stata's installation directory.

{p 4 4 2}
Because {cmd:open} calls the cmd program, the command is only available for windows systems.

{p 4 4 2}
It is worth noting that this command can only be used in version 16.0 or later.


{* -----------------------------Examples------------------------------------ *}{...}
{marker Examples}{title:Examples}

{p 4 4 2}Open specified directory{p_end}
{p 8 10 2}. {stata open stata}{p_end}
{p 8 10 2}. {stata open base}{p_end}
{p 8 10 2}. {stata open plus}{p_end}
{p 8 10 2}. {stata open personal}{p_end}
{p 8 10 2}. {stata open .}{p_end}
{p 8 10 2}. {stata open ..}{p_end}
{p 8 10 2}. {bf:open subdir}{p_end}
{p 8 10 2}. {bf:open ..\fn}{p_end}
{p 8 10 2}. {bf:open "C:\Program Files\Notepad++"}{p_end}

{p 4 4 2}Open specified file{p_end}
{p 8 10 2}. {bf:open README.md}{p_end}
{p 8 10 2}. {bf:open .\subdir\PS2_WMT.pdf}{p_end}
{p 8 10 2}. {bf:open ".\subdir\PS4_WMT P10-14.pdf"}{p_end}
{p 8 10 2}. {bf:open "X:\exercise\Stata\open\subdir\PS4_WMT P10-14.pdf"}{p_end}

{p 4 4 2}Use the specified application to open the specified file{p_end}
{p 8 10 2}. {bf:open "C:\Program Files\Notepad++\notepad++.exe" "open.ado"}{p_end}
{p 8 10 2}. {bf:open "D:\softinstall\SumatraPDF\SumatraPDF.exe" ".\subdir\PS2_WMT.pdf"}{p_end}


{* -----------------------------Author------------------------------------ *}{...}
{marker Author}{title:Author}

{p 4 4 2}
Meiting Wang{break}
Institute for Economic and Social Research, Jinan University{break}
Guangzhou, China{break}
wangmeiting92@gmail.com

