function Write-BlockSpinner {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    [string]$t1 = [System.Text.Encoding]::UTF8.GetString((226,151,162))
    [string]$t2 = [System.Text.Encoding]::UTF8.GetString((226,151,163))
    [string]$t3 = [System.Text.Encoding]::UTF8.GetString((226,151,164))
    [string]$t4 = [System.Text.Encoding]::UTF8.GetString((226,151,165))
    1..$Cycles | % {
        write-host "`r`r[ $t1 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $t2 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $t3 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $t4 ] $Text" -NoNewline
        start-sleep -m $Speed
    }
}
