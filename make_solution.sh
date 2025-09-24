#!/usr/bin/env bash
set -euo pipefail

# Create a solution and add all known projects
dotnet new sln -n ProjectMgmt
dotnet sln add src/Identity.Core/Identity.Core.csproj
dotnet sln add src/Identity.EF/Identity.EF.csproj
dotnet sln add src/Project.Core/Project.Core.csproj
dotnet sln add src/Project.EF/Project.EF.csproj
dotnet sln add src/WebApp/WebApp.csproj
