<# 
.NAME
    Get-String
.SYNOPSIS
    Transform a byte array into a UTF-8 string.
.PARAMETER Bytes
    The byte array to transform.
.ALIASES gs

#>
function Get-String {
    Param (
        [Parameter(
            Mandatory=$true,
            ValueFromPipeline=$true,
            Position=1
        )]
        [byte[]]$Bytes
    )
    return ([System.Text.Encoding]::UTF8.GetString($Bytes))
}

Set-Alias -Name gs -Value Get-String
