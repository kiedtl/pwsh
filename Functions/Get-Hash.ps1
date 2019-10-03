function Get-Hash {
    param (
        [Alias('t')]
        [string]$Text,
        [Alias('a')]
        [int32]$Algorithm = 256
    )
    $alg = [System.Security.Cryptography.HashAlgorithm]::Create(("SHA${Algorithm}"))
    $fs = [System.Text.Encoding]::UTF8.GetBytes($Text)
    try {
        $hexbytes = $alg.ComputeHash($fs) | % { $_.ToString('x2') }
        [string]::join('', $hexbytes)
    } finally {
        $alg.dispose()
    }
}