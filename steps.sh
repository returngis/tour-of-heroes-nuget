source .env

dotnet build

dotnet pack

dotnet nuget push ./bin/Release/tour-of-heroes-nuget.1.0.0.nupkg --source github

dotnet nuget push ./bin/Release/tour-of-heroes-nuget.1.0.0.nupkg --source github --api-key $PAT