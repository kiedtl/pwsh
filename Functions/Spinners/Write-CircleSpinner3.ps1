function Write-CircleSpinner3 {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    [string]$c1 = [System.Text.Encoding]::UTF8.GetString((226,151,156))
    [string]$c2 = [System.Text.Encoding]::UTF8.GetString((226,151,160))
    [string]$c3 = [System.Text.Encoding]::UTF8.GetString((226,151,157))
    [string]$c4 = [System.Text.Encoding]::UTF8.GetString((226,151,158))
    [string]$c5 = [System.Text.Encoding]::UTF8.GetString((226,151,161))
    [string]$c6 = [System.Text.Encoding]::UTF8.GetString((226,151,159))
    1..$Cycles | % {
        write-host "`r`r[ $c1 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c2 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c3 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c4 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c5 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c6 ] $Text" -NoNewline
        start-sleep -m $Speed
    }
}
