# Using Docker Desktop exec this in the nuget container: cat /nexus-data/admin.password

# Go to http://localhost:8081/#user/nugetapitoken

API_KEY="dfc7f9c2-264d-3ff9-8ec1-16e6a70e1aea"

cat <<EOF > nuget.config
<?xml version="1.0" encoding="utf-8"?>
<configuration>
    <packageSources>
        <clear />
        <add key="nexus" value="http://nexus:8081/repository/nuget-group/index.json" />
    </packageSources>
    <packageSourceCredentials>
        <nexus>
            <add key="Username" value="admin" />
            <add key="ClearTextPassword" value="$API_KEY" />
        </nexus>
    </packageSourceCredentials>
</configuration>
EOF

dotnet build

dotnet pack

dotnet nuget push ./bin/Release/tour-of-heroes-nuget.1.0.0.nupkg --source nexus


