function Write-CircleSpinner2 {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    [string]$c1 = [System.Text.Encoding]::UTF8.GetString((226,151,144))
    [string]$c2 = [System.Text.Encoding]::UTF8.GetString((226,151,147))
    [string]$c3 = [System.Text.Encoding]::UTF8.GetString((226,151,145))
    [string]$c4 = [System.Text.Encoding]::UTF8.GetString((226,151,146))
    1..$Cycles | % {
        write-host "`r`r[ $c1 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c2 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c3 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c4 ] $Text" -NoNewline
        start-sleep -m $Speed
    }
}
