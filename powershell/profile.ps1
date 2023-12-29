$ErrorActionPreference='Stop'

Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

$(/opt/homebrew/bin/brew shellenv pwsh) | Invoke-Expression
