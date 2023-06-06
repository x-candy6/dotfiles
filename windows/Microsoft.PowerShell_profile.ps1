Set-PSReadlineOption -EditMode vi
Set-ExecutionPolicy  Unrestricted 

function prompt
{
    $host.UI.RawUI.WindowTitle = "leviathan"
    # Need to still show the working directory.
    #Write-Host "You landed in $PWD"

    # Nerd up, yo.
    $Str = "xoxo >> "
    "$str "
}

$VIMEXEPATH    = "C:\Program Files (x86)\Vim\vim90\vim"
$PYTHONPATH = "C:\Users\candr3w\AppData\Local\Microsoft\WindowsApps\python.exe"

Set-Alias vim  $VIMEXEPATH
Set-Alias vi   $VIMEXEPATH
Set-Alias v   $VIMEXEPATH
Set-Alias p  $PYTHONPATH 

Set-Alias -Name ffmpeg -Value "C:\Program Files\ffmpeg\bin\ffmpeg.exe"
function cdh{Set-Location $HOME}
function cdd{set-location $HOME\Downloads}
function cddt{set-location $HOME\Desktop}

function open {
    explorer .
}
Set-Alias -Name "open ." -Value "open"

