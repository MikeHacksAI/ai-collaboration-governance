# Final Migration Script - AI Collaboration Governance
# Date: 2026-02-28
# Purpose: Migrate all AI governance files from N:\DockerContainers to new repo

$ErrorActionPreference = "Stop"

# ─── Configuration ────────────────────────────────────────────────────────────
$repoRoot   = "C:\repos\projects\ai-collaboration-governance"
$sourceRoot = "N:\DockerContainers\project-helper-files"
$sourceAI   = "N:\DockerContainers\project-helper-files\AI-chat-history-reports"
$logFile    = "$repoRoot\scripts\final-migration-log_$(Get-Date -Format 'MM-dd-yyyy_HH-mm').txt"

# ─── Destinations ─────────────────────────────────────────────────────────────
$destDriftLog    = "$repoRoot\drift-log"
$destGovernance  = "$repoRoot\governance"
$destIncidents   = "$repoRoot\incidents"
$destChatHistory = "$repoRoot\ai-chat-history"

# ─── Functions ────────────────────────────────────────────────────────────────
function Write-Log {
    param([string]$Message, [string]$Level = "INFO")
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $entry = "[$timestamp] [$Level] $Message"
    Write-Host $entry -ForegroundColor $(if($Level -eq "WARN"){"Yellow"}elseif($Level -eq "ERROR"){"Red"}else{"White"})
    Add-Content -Path $logFile -Value $entry
}

function Copy-ItemSafe {
    param([string]$Source, [string]$Destination, [string]$Label)
    if (Test-Path $Source) {
        $destDir = Split-Path $Destination -Parent
        if (-not (Test-Path $destDir)) {
            New-Item -ItemType Directory -Path $destDir -Force | Out-Null
        }
        Copy-Item -Path $Source -Destination $Destination -Recurse -Force
        Write-Log "COPIED: $Label"
        return $true
    } else {
        Write-Log "NOT FOUND: $Label - $Source" "WARN"
        return $false
    }
}

# ─── Create Missing Destination Folders ───────────────────────────────────────
$folders = @($destDriftLog, $destGovernance, $destIncidents, $destChatHistory)
foreach ($folder in $folders) {
    if (-not (Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder -Force | Out-Null
        Write-Log "Created folder: $folder"
    }
}

Write-Log "════════════════════════════════════════════"
Write-Log "Starting Final Migration"
Write-Log "════════════════════════════════════════════"

$copied  = 0
$skipped = 0

# ─── DRIFT LOG FILES ──────────────────────────────────────────────────────────
Write-Log "--- Migrating drift-log files ---"

$driftFiles = @(
    @{ From = "$sourceRoot\Incorrect AI Assumptions - Google Drive.md";        To = "$destDriftLog\Incorrect AI Assumptions - Google Drive.md" },
    @{ From = "$sourceRoot\## Chat Customization Diagnostics.md";              To = "$destDriftLog\## Chat Customization Diagnostics.md" },
    @{ From = "$sourceAI\NAS-REBUILD-ASSUMPTIONS.02-27-2026.md";               To = "$destDriftLog\NAS-REBUILD-ASSUMPTIONS.02-27-2026.md" },
    @{ From = "$sourceAI\NAS-Setup-Failure-MSFT-Copilot_02-25-2026.md";        To = "$destDriftLog\NAS-Setup-Failure-MSFT-Copilot_02-25-2026.md" }
)

foreach ($file in $driftFiles) {
    if (Copy-ItemSafe -Source $file.From -Destination $file.To -Label (Split-Path $file.From -Leaf)) {
        $copied++
    } else { $skipped++ }
}

# Handle the Intent-over-literal file separately due to special unicode hyphens
$intentFile = Get-ChildItem "$sourceAI" -Filter "*Intent*drift*" -ErrorAction SilentlyContinue
if ($intentFile) {
    Copy-Item -Path $intentFile.FullName -Destination "$destDriftLog\Intent-over-literal-drift_02-28-2026.md" -Force
    Write-Log "COPIED: Intent-over-literal-drift_02-28-2026.md"
    $copied++
} else {
    Write-Log "NOT FOUND: Intent-over-literal-drift file" "WARN"
    $skipped++
}

# ─── GOVERNANCE FILES ─────────────────────────────────────────────────────────
Write-Log "--- Migrating governance files ---"

$governanceFiles = @(
    @{ From = "$sourceRoot\Mike's AI Collaboration Charter.md"; To = "$destGovernance\Mikes AI Collaboration Charter.md" },
    @{ From = "$sourceRoot\MSAN-LinkedIn.md";                   To = "$destGovernance\MSAN-LinkedIn.md" },
    @{ From = "$sourceRoot\OneTastic-Troubleshooting.md";       To = "$destGovernance\OneTastic-Troubleshooting.md" },
    @{ From = "$sourceAI\AI-Governance";                        To = "$destGovernance\AI-Governance" }
)

foreach ($file in $governanceFiles) {
    if (Copy-ItemSafe -Source $file.From -Destination $file.To -Label (Split-Path $file.From -Leaf)) {
        $copied++
    } else { $skipped++ }
}

# ─── INCIDENT FILES ───────────────────────────────────────────────────────────
Write-Log "--- Migrating incident files ---"

# Copy Halted Deletion folder
if (Copy-ItemSafe -Source "$sourceRoot\Halted Deletion of Pi5 Files" -Destination "$destIncidents\Halted Deletion of Pi5 Files" -Label "Halted Deletion of Pi5 Files folder") {
    $copied++
} else { $skipped++ }

# Copy incident files using wildcard search
$incidentPatterns = @(
    "*Incident Report*Filename*",
    "*Copilot*attempts*overwrite*"
)

foreach ($pattern in $incidentPatterns) {
    $matches = Get-ChildItem $sourceAI -Filter $pattern -ErrorAction SilentlyContinue
    foreach ($match in $matches) {
        $dest = Join-Path $destIncidents $match.Name
        Copy-Item -Path $match.FullName -Destination $dest -Force
        Write-Log "COPIED: $($match.Name)"
        $copied++
    }
}

# ─── AI CHAT HISTORY FILES ────────────────────────────────────────────────────
Write-Log "--- Migrating ai-chat-history files ---"

$chatFiles = @(
    @{ From = "$sourceAI\AI-chat-history-summary.md";           To = "$destChatHistory\AI-chat-history-summary.md" },
    @{ From = "$sourceAI\AI-chat-history-summary-deepseek.md";  To = "$destChatHistory\AI-chat-history-summary-deepseek.md" },
    @{ From = "$sourceAI\AI-chat-history-summary-microsoft.md"; To = "$destChatHistory\AI-chat-history-summary-microsoft.md" },
    @{ From = "$sourceAI\MikeHacksAI-Audit-Summary.md";         To = "$destChatHistory\MikeHacksAI-Audit-Summary.md" },
    @{ From = "$sourceAI\Copilot-Drift-Admissions-Log.md";      To = "$destChatHistory\Copilot-Drift-Admissions-Log.md" },
    @{ From = "$sourceAI\Deepseek";                             To = "$destChatHistory\Deepseek" },
    @{ From = "$sourceAI\LinkedIn Discount";                    To = "$destChatHistory\LinkedIn Discount" },
    @{ From = "$sourceAI\Microsoft";                            To = "$destChatHistory\Microsoft" }
)

foreach ($file in $chatFiles) {
    if (Copy-ItemSafe -Source $file.From -Destination $file.To -Label (Split-Path $file.From -Leaf)) {
        $copied++
    } else { $skipped++ }
}

# ─── DELETE TEMP FILES ────────────────────────────────────────────────────────
Write-Log "--- Deleting temp files ---"

$tempFiles = @(
    "$sourceRoot\tmpclaude-aced-cwd",
    "$sourceRoot\tmpclaude-e943-cwd"
)

foreach ($temp in $tempFiles) {
    if (Test-Path $temp) {
        Remove-Item -Path $temp -Force
        Write-Log "DELETED: $(Split-Path $temp -Leaf)"
    } else {
        Write-Log "NOT FOUND (skip delete): $(Split-Path $temp -Leaf)" "WARN"
    }
}

# ─── Final Summary ────────────────────────────────────────────────────────────
Write-Log "════════════════════════════════════════════"
Write-Log "Migration Complete"
Write-Log "Copied : $copied item(s)"
Write-Log "Skipped: $skipped item(s)"
Write-Log "════════════════════════════════════════════"
Write-Log ""
Write-Log "Verifying new repo structure..."

Get-ChildItem $repoRoot -Recurse -File | ForEach-Object {
    Write-Log "  $($_.FullName)"
}

Write-Log ""
Write-Log "IMPORTANT: Originals NOT deleted (except tmpclaude temp files)"
Write-Log "Verify repo contents then manually delete originals from N:\"
Write-Log "Log saved to: $logFile"