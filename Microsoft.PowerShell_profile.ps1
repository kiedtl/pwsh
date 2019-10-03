# ===== PROMPT =====
function prompt() {
	return "$ "
}

# ===== ALIASES =====
try {
	remove-alias ls
	remove-alias cat
	remove-alias mv
	remove-alias cp
	remove-alias rm
	remove-alias sleep
	remove-alias kill
	remove-alias diff
	remove-alias echo
} catch { }
set-alias git hub

# ===== VARIABLES =====
$env:LS_COLORS = "$(vivid generate molokai)"
$global:github_key = "2b44763e78aa2b644024378998f7a918d8f744ab"

# ===== SCRIPTS =====
Set-Location $psscriptroot\Functions\
Get-ChildItem .\*.ps1 | Foreach-Object {
    . $_
}
Set-Location $HOME

# ===== FUNCTIONS =====
function lsd() {
	$args += '--color'
	ls @args
}

function reboot { shutdown /r /t 5 }
function halt { shutdown /s /t 5 }