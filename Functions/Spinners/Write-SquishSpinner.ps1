function Write-SquishSpinner {
    param(
        [int]$Cycles,
        [int]$Speed,
        [string]$Text
    )
    [string]$c1 = [System.Text.Encoding]::UTF8.GetString((226,149,171))
    [string]$c2 = [System.Text.Encoding]::UTF8.GetString((226,149,170))
    1..$Cycles | % {
        write-host "`r`r[ $c1 ] $Text" -NoNewline
        start-sleep -m $Speed
        write-host "`r`r[ $c2 ] $Text" -NoNewline
        start-sleep -m $Speed
    }
}
