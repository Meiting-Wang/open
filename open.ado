* Description: Open everything
* Author: Meiting Wang, Ph.D. Candidate, Institute for Economic and Social Research, Jinan University
* Email: wangmeiting92@gmail.com
* Created on Sep 30, 2021



program define open
version 16.0

syntax [anything(id="Path name or file name" everything)]
/*
编程注意事项：
- 要使得anything能够传递双引号且不报错，则需加everything选项
- anything会自动忽略用户在最前端和最后端输入的空格
*/

* 设置默认值
if `"`anything'"' == "" {
	local anything "."
}

* 核心程序
if `"`anything'"' == "stata" {
	! start "" "`c(sysdir_stata)'"
}
else if `"`anything'"' == "base" {
	! start "" "`c(sysdir_base)'"
}
else if `"`anything'"' == "plus" {
	! start "" "`c(sysdir_plus)'"
}
else if `"`anything'"' == "personal" {
	! start "" "`c(sysdir_personal)'"
}
else {
	! start "" `anything'
}

end
