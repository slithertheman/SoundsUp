$wav = "https://github.com/slithertheman/BadUSBDIR/blob/main/fnaf-4-jumpscare-but-its-earrape.wav?raw=true"

$w = -join($wav,"?dl=1")
iwr $w -1 $env:TMP\s.wav

function Play-WAV{
$PlayWav=New-Object System.Media.SoundPlayer;$PlayWav.SoundLocation="$env:TMP\s.wav";$PlayWav.playsync()
}

#----------------------------------------------------------------------------------------------------

# This turns the volume up to max level
$k=[Math]::Ceiling(100/2);$o=New-Object -ComObject WScript.Shell;for($i = 0;$i -lt $k;$i++){$o.SendKeys([char] 175)}
