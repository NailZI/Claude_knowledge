$agentPath = Join-Path $env:USERPROFILE '.claude\agents\*.md'
$agents = (Get-ChildItem $agentPath -ErrorAction SilentlyContinue | Select-Object -ExpandProperty BaseName) -join ', '
$msg = "SYSTEM: Available agents: $agents. Delegate: PowerShell=powershell-specialist, GitHub=github-specialist, Docs=doc-specialist, New project=project-manager."
Write-Output $msg
