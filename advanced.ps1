write-host 'number of arguments was :'
($args.lenth)
Write-Output 'and there were '
foreach ($arg in $args)
{
    write-output $arg
}