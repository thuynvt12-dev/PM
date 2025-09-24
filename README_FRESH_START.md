# Fresh Start Repo

Steps:
1. dotnet restore src/WebApp/WebApp.csproj
2. dotnet build src/WebApp/WebApp.csproj
3. dotnet tool install --global dotnet-ef
4. dotnet ef migrations add InitAll -p src/Identity.EF -s src/WebApp
5. dotnet ef database update -p src/Identity.EF -s src/WebApp
6. dotnet run --project src/WebApp/WebApp.csproj
