function Write-BlockSpinner {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    [string]$b1 = [System.Text.Encoding]::UTF8.GetString((226,150,150))
    [string]$b2 = [System.Text.Encoding]::UTF8.GetString((226,150,152))
    [string]$b3 = [System.Text.Encoding]::UTF8.GetString((226,150,157))
    [string]$b4 = [System.Text.Encoding]::UTF8.GetString((226,150,151))
    1..$Cycles | % {
        write-host "`r`r[ $b1 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $b2 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $b3 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $b4 ] $Text" -NoNewline
        start-sleep -m $Speed
    }
}
