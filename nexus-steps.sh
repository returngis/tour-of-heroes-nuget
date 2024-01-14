docker volume create --name nexus-data

docker run -d -p 8081:8081 --name nexus -v nexus-data:/nexus-data sonatype/nexus3

# Wait for nexus to start
sleep 60

# Get the admin password
docker exec nexus cat /nexus-data/admin.password

# Go to http://localhost:8081/#user/nugetapitoken

API_KEY="310ddc61-f0c2-3e71-863e-3312101eb39d"

# Security -> Realms -> NuGet API Key Realm -> Enabled

dotnet build

dotnet pack

dotnet nuget push ./bin/Release/tour-of-heroes-nuget.1.0.0.nupkg --source http://nexus:8081/repository/nuget-hosted/ --api-key $API_KEY
