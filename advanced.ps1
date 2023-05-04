Param(
[Parameter(mandatory=$true)][string]$computername,[switch]$showlogprocs)
if ($showlogprocs)
{
	get-ciminstance -class win32_computersystem -computername $computername  `
	| fl numberoflogicalprocessors,totalphysicalmemory
}
else
{
	get-ciminstance  -class win32_computersystem -computername $computername `
	| fl numberofprocessors, totalphysicalmemory
}

i