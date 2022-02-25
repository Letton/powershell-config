
Import-Module oh-my-posh
oh-my-posh --init --shell pwsh --config "~/.oh-my-posh/themes/custom.omp.json" | Invoke-Expression


#Welcome message
$curUser    = (Get-ChildItem Env:\USERNAME).Value
$curComp    = (Get-ChildItem Env:\COMPUTERNAME).Value
$pvmaj      = $Host.Version.Major
$pvmin      = $Host.Version.Minor
$psversion  = "$pvmaj.$pvmin"
$identity   = "$curUser@$curComp"


#-----------------------------------------------------
# WINDOW TITLE
#-----------------------------------------------------
$Host.UI.RawUI.WindowTitle = "PowerShell"
#-----------------------------------------------------


#-----------------------------------------------------
# CONFIG
# Edit following to your convenience
#-----------------------------------------------------
$line1      = "💻 Windows PowerShell"    # First line
$line2      = "📦 Version $psversion"    # Second line
$line3      = "❤️ $identity"             # Third line
$line4      = "🎉 Happy coding!"         # Fourth line

$line1color = "White"                     # First line color
$line2color = "White"                    # Second line color
$line3color = "White"                   # Third line color
$line4color = "White"                    # Fourth line color

$bgColor    = 'Black'                  # Background Color
$padding    = 2                          # Padding
#-----------------------------------------------------


# Calculate max length based on four lines above
$lengths    = [array] $line1.tostring().Length, $line2.tostring().Length, $line3.tostring().Length, $line4.tostring().Length
$size       = $lengths | measure -Maximum
$max        = $size.Maximum


#-----------------------------------------------------
# WELCOME MESSAGE
#-----------------------------------------------------
Write-Host ((" " * $padding), (" " * ($max[0]+1)), (" " * $padding)) -BackgroundColor $bgColor;
Write-Host ((" " * $padding), ("$line1"), (" " * ($max[0]-($line1.Length))), (" " * $padding)) -BackgroundColor $bgColor -ForegroundColor $line1color;
Write-Host ((" " * $padding), ("$line2"), (" " * ($max[0]-($line2.Length))), (" " * $padding)) -BackgroundColor $bgColor -ForegroundColor $line2color;
Write-Host ((" " * $padding), ("$line3"), (" " * ($max[0]-($line3.Length))), (" " * $padding)) -BackgroundColor $bgColor -ForegroundColor $line3color;
Write-Host ((" " * $padding), ("$line4"), (" " * ($max[0]-($line4.Length))), (" " * $padding)) -BackgroundColor $bgColor -ForegroundColor $line4color;
Write-Host ((" " * $padding), (" " * ($max[0]+1)), (" " * $padding)) -BackgroundColor $bgColor;
Write-Host ((" " * $padding), (" " * ($max[0]+1)), (" " * $padding)) -BackgroundColor $bgColor;


# Alias
Set-Alias vim nvim


