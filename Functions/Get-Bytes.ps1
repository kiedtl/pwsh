<# 
.NAME
    Get-Bytes
.SYNOPSIS
    Transform a UTF-8 string to a byte array.
.PARAMETER String
    The string to transform.
.ALIASES gb

#>
function Get-Bytes {
    Param (
        [Parameter(
            Mandatory=$true,
            ValueFromPipeline=$true,
            Position=1
        )]
        [string]$String
    )
    return ([System.Text.Encoding]::UTF8.GetBytes($String))
}

Set-Alias -Name gb -Value Get-Bytes

