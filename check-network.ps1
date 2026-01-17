Write-Host "Pinging 8.8.8.8..."
Test-Connection -ComputerName 8.8.8.8 -Count 4

Write-Host "`nGetting IP configuration..."
Get-NetIPAddress

Write-Host "`nTesting DNS resolution..."
Resolve-DnsName google.com

Write-Host "`nTraceroute to 1.1.1.1"
Test-NetConnection -ComputerName 1.1.1.1 -TraceRoute
