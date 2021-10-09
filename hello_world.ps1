Write-Output "Hello World"

""" print username """
Write-Output "Hello "+ $env:USERNAME


""" PowerShell Functions """
function Receive-Output {
    process { Write-Host $_ -ForegroundColor Green}
    
}
""" Call Function ( Pipe result via function )"""
Write-Output "Hello "+ $env:USERNAME | Receive-Output

Write-Host "Hello "+ $env:USERNAME | Receive-Output


""" Download Files (WGET) """
Invoke-WebRequest -Uri https://ergast.com/api/f1/seasons.json -UseBasicParsing

""" calls the commit function in powershell_functions.ps1 """
commit "updates" master