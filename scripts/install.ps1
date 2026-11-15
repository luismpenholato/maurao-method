param(
    [Parameter(Mandatory = $true)]
    [string] $Target,

    [ValidateSet('codex', 'claude', 'cursor', 'copilot', 'gemini', 'cline', 'all')]
    [string] $Tool = 'all',

    [switch] $Force
)

$ErrorActionPreference = 'Stop'
$sourceRoot = Split-Path -Parent $PSScriptRoot
$targetRoot = (Resolve-Path -LiteralPath $Target).Path

function Copy-Safely([string] $Source, [string] $Destination) {
    if ((Test-Path -LiteralPath $Destination) -and -not $Force) {
        Write-Host "Skipped existing path: $Destination"
        return
    }

    $parent = Split-Path -Parent $Destination
    New-Item -ItemType Directory -Force -Path $parent | Out-Null
    Copy-Item -LiteralPath $Source -Destination $Destination -Recurse -Force:$Force
    Write-Host "Installed: $Destination"
}

Copy-Safely (Join-Path $sourceRoot 'AGENTS.md') (Join-Path $targetRoot 'AGENTS.md')
Copy-Safely (Join-Path $sourceRoot '.maurao') (Join-Path $targetRoot '.maurao')
Copy-Safely (Join-Path $sourceRoot 'skills') (Join-Path $targetRoot 'skills')
Copy-Safely (Join-Path $sourceRoot 'technology-packs') (Join-Path $targetRoot 'technology-packs')
Copy-Safely (Join-Path $sourceRoot 'templates') (Join-Path $targetRoot 'templates')
Copy-Safely (Join-Path $sourceRoot 'commands') (Join-Path $targetRoot 'commands')

if ($Tool -in @('claude', 'all')) {
    Copy-Safely (Join-Path $sourceRoot 'CLAUDE.md') (Join-Path $targetRoot 'CLAUDE.md')
    Copy-Safely (Join-Path $sourceRoot 'skills') (Join-Path $targetRoot '.claude\skills')
}

if ($Tool -in @('cursor', 'all')) {
    Copy-Safely (Join-Path $sourceRoot '.cursor') (Join-Path $targetRoot '.cursor')
}

if ($Tool -in @('copilot', 'all')) {
    Copy-Safely (Join-Path $sourceRoot '.github\copilot-instructions.md') (Join-Path $targetRoot '.github\copilot-instructions.md')
    Copy-Safely (Join-Path $sourceRoot 'skills') (Join-Path $targetRoot '.agents\skills')
}

if ($Tool -in @('gemini', 'all')) {
    Copy-Safely (Join-Path $sourceRoot 'GEMINI.md') (Join-Path $targetRoot 'GEMINI.md')
}

if ($Tool -in @('cline', 'all')) {
    Copy-Safely (Join-Path $sourceRoot '.clinerules') (Join-Path $targetRoot '.clinerules')
}

Write-Host 'Maurao Method installation completed.'
