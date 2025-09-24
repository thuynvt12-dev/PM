# Project Management App

This repository contains a .NET solution with multiple projects (Core, EF, WebApp). The **WebApp** is the likely startup project.

## Quick Start (Developer)

```bash
# 1) Install .NET SDK 8 (or 7) from https://dotnet.microsoft.com/download
# 2) Restore & run (from repo root):
dotnet restore src/WebApp/WebApp.csproj
dotnet build src/WebApp/WebApp.csproj -c Debug
dotnet run --project src/WebApp/WebApp.csproj
```

If you prefer a solution file:

```bash
dotnet new sln -n ProjectMgmt
dotnet sln add src/Identity.Core/Identity.Core.csproj
dotnet sln add src/Identity.EF/Identity.EF.csproj
dotnet sln add src/Project.Core/Project.Core.csproj
dotnet sln add src/Project.EF/Project.EF.csproj
dotnet sln add src/WebApp/WebApp.csproj
```

## GitHub Actions CI

This repo includes `.github/workflows/dotnet-ci.yml` which:
- Restores NuGet packages
- Builds all .csproj (prioritizing `src/WebApp/WebApp.csproj`)
- Runs tests if any `*Tests.csproj` exists
- Uploads test results as an artifact

CI runs on pushes and PRs targeting `main`.

## Folder Structure

```
src/
  Identity.Core/
  Identity.EF/
  Project.Core/
  Project.EF/
  WebApp/
```

## Requirements

- .NET SDK 8.0.x (or 7.0.x)
- Optionally: Visual Studio 2022 / Rider / VS Code + C# Dev Kit
