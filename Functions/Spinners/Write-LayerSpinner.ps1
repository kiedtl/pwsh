function Write-LayerSpinner {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    [string]$c1 = [System.Text.Encoding]::UTF8.GetString((45))
    [string]$c2 = [System.Text.Encoding]::UTF8.GetString((61))
    [string]$c3 = [System.Text.Encoding]::UTF8.GetString((226,137,161))
    1..$Cycles | % {
        write-host "`r`r[ $c1 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c2 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c3 ] $Text" -NoNewline
        start-sleep -m $Speed
    }
}
