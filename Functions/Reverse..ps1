function reverse([string]$text) {
	[array]$str = @()
	0..$text.Length | % {
		$str += $text[$_]
	}
	$rev = @()
	0..$str.Length | % {
		$rev += $str[( - (($_) + 1))]
	}
	$ret = ""
	0..$rev.Length | % {
		$ret += $rev[$_]
	}
	return $ret
}