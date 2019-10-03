$values = @("33","36","37","38","39","46","45","44","42","43","47","58","59","94","94","46","46","126","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187")

$rand = get-random -maximum 999 -setseed (get-random -setseed ([datetime]::now.tostring("HHmmssff")))
$dest = -join (([text.encoding]::ascii.getbytes("PowerShell $((($PSVersionTable.PSVersion).ToString())) $((get-date -format "o"))")) | % { 
	[char][int]($values[(((([int]$_) * $rand) - 97) % $values.Count)]) 
})

if ((get-date -format "MM/dd").ToString() -eq "04/01") { 
	$dest = [text.encoding]::utf8.getstring((32,32,40,226,140,144,226,151,145,95,226,151,145,41)) 
}

$host.UI.RawUI.WindowTitle = $dest
