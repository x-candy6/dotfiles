Set-PSReadlineOption -EditMode vi
Set-ExecutionPolicy  Unrestricted 

function prompt
{
    $host.UI.RawUI.WindowTitle = "leviathan"
    # Need to still show the working directory.
    #Write-Host "You landed in $PWD"

    # Nerd up, yo.
#    $Str = "$(conda info | Select-String -Pattern "active environment : (.*)" | ForEach-Object { $_.Matches.Groups[1].Value })"
    $Str = "xoxo >"
    "$str "
}

$VIMEXEPATH    = "C:\Program Files (x86)\Vim\vim90\vim"
#$PYTHONPATH = "C:\Users\candr3w\AppData\Local\Programs\Python\Python311\python3.exe"
Set-Alias vim  $VIMEXEPATH
Set-Alias vi   $VIMEXEPATH
Set-Alias v   $VIMEXEPATH
Set-Alias gpt chatblade
#Set-Alias p  $PYTHONPATH 
Set-Alias -Name "open ." -Value "open"
Set-Alias -Name ffmpeg -Value "C:\Program Files\ffmpeg\bin\ffmpeg.exe"
function cdh{Set-Location $HOME}
function cdd{set-location $HOME\Downloads}
function cdm{set-location \\192.168.5.10\magenta}
function cddt{set-location $HOME\Desktop}
function sshb{ssh -p 21796 birdy@192.168.5.10}
function yt-dlp-list{yt-dlp --download-archive archive.txt --cookies $HOME/cookies.txt -a }
function open {
    explorer .
}

Set-Alias which get-command
Set-Alias -Name touch -Value New-Item
function ref{
   . $PROFILE
   echo "Profile Refreshed" 
}

function Start-YouTubeDownload {
    yt-dlp --legacy-server-connect --cookies-from-browser firefox --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0" --sub-langs "en.*" --write-subs --download-archive archive.txt -a .\urls.txt
}

Set-Alias -Name ytdl -Value Start-YouTubeDownload

Invoke-Expression (& { (zoxide init powershell | Out-String) })
