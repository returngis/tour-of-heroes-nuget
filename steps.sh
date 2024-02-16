source .env

dotnet build

dotnet pack

dotnet nuget push ./bin/Release/tour-of-heroes-nuget.1.0.6.nupkg --source github

dotnet nuget push ./bin/Release/tour-of-heroes-nuget.1.0.6.nupkg --source github --api-key $PAT