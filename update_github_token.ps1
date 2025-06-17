param(
    [string]$GithubToken
)

if (-not $GithubToken) {
    Write-Host "Please provide the github token as an input parameter."
    exit
}

# Set the remote URL for fetch operations
$fetchUrl = "https://subway122:$GithubToken@github.com/Omnimed/Omnimed-delphi-kiosk-releases.git"
git remote set-url origin $fetchUrl

# Set the remote URL for push operations
$pushUrl = "https://subway122:$GithubToken@github.com/subway122/Omnimed-delphi-kiosk-releases.git"
git remote set-url --push origin $pushUrl

Write-Host "Git remote URLs updated successfully."