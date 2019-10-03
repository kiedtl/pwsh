function Download-File {
	param (
		[parameter(Mandatory=$true,ValueFromPipeline=$true)]
		[alias('s')]
		$Source,
		[parameter(Mandatory=$true)]
		[alias('d')]
		$Destination,
		[alias('a')]
		[switch]
		$UseAria,
		[alias('u')]
		$UserAgent = ("DownloadFilePowerShell/1.0.0 (+http://github.com/lptstr/psutil/) PowerShell/$($PSVersionTable.PSVersion.Major).$($PSVersionTable.PSVersion.Minor) (Windows NT $([System.Environment]::OSVersion.Version.Major).$([System.Environment]::OSVersion.Version.Minor); $(if($env:PROCESSOR_ARCHITECTURE -eq 'AMD64'){'Win64; x64; '})$(if($env:PROCESSOR_ARCHITEW6432 -eq 'AMD64'){'WOW64; '})$PSEdition)")
	)
	$webc = New-Object Net.Webclient
	$webc.Headers.add('Referer', (dl-file-fn-strip_filename $Source))
	$webc.Headers.Add('User-Agent', $UserAgent)
	$webc.downloadFile($Source, $Destination)
}

function dl-file-fn-fname($path) { split-path $path -leaf }
function dl-file-fn-strip_ext($fname) { $fname -replace '\.[^\.]*$', '' }
function dl-file-fn-strip_filename($path) { $path -replace [regex]::escape((dl-file-fn-fname $path)) }
