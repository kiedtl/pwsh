function Eksoer-String {
    param (
        [string]$msg,
        [string]$key,
        [string]$spacer = " "
    )
    while ( $key.Length -lt $msg.Length ) 
    {
        $key = $key + $key
    }
    [string]$ret_value = "`b"
    [byte[]]$msg_bytes = [System.Text.Encoding]::UTF8.GetBytes($msg)
    [byte[]]$key_bytes = [System.Text.Encoding]::UTF8.GetBytes($key)
    [array]$encrypt_b = @()
    for($i = 0; $i -lt $msg_bytes.count; $i++)
    {
        $encrypt_b += $msg_bytes[$i] -bXOR $key_bytes[$i]
    } 
    $encrypt_b | ForEach-Object {
        $ret_value = "${ret_value}${spacer}$_"
    }
    return $ret_value
}

function Reneksoer-String {
    param (
        [string]$enc,
        [string]$key,
        [string]$spacer = " "
    )
    while ( $key.Length -lt $enc.Length ) 
    {
        $key = $key + $key
    }
    "exor[i]: Message: $enc`nexor[i]: Key: $key"
    [string]$ret_value = "`b"
    [string[]]$enc_str = $enc.Split($spacer)
    $enc_int = New-Object System.Collections.Generic.List[System.Object]
    $enc_bytes = New-Object System.Collections.Generic.List[System.Object]
    $enc_str | Foreach-Object {
        try {
            $enc_int.Add([System.Int32]::Parse($_))
            $enc_bytes.Add($enc_int[-1])
        } catch { }
    }
    [byte[]]$key_bytes = [System.Text.Encoding]::UTF8.GetBytes($key)
    [byte[]]$decrypt_b = @() 
    "exor[i]: Using key bytes: $(-join ($key_bytes))"
    "exor[i]: Using message: $(-join ($enc_bytes))"
    for($i = 0; $i -lt $enc_bytes.count; $i++)
    {
        $decrypt_b += $enc_bytes[$i] -bXOR $key_bytes[$i]
    } 
    $decrypt_b | ForEach-Object {
        $ret_value = "${ret_value}$([System.Text.Encoding]::UTF8.GetString($_))"
    }
    return "exor[s]:  $ret_value"
}

Set-Alias -Name es -Value Eksoer-String 
Set-Alias -Name res -Value Reneksoer-String 