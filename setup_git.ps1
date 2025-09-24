Param(
    [Parameter(Mandatory=$true)][string]$GithubUser,
    [Parameter(Mandatory=$true)][string]$RepoName
)

if (-Not (Test-Path ".git")) {
    git init
}

git add .
git commit -m "Initial commit: import Project Management app"
git branch -M main

try { git remote remove origin } catch {}

git remote add origin ("https://github.com/{0}/{1}.git" -f $GithubUser, $RepoName)
git push -u origin main
