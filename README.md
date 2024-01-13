# Tour of heroes nuget package

This is a nuget package for the Tour of heroes API in other to show how to publish a nuget package to GitHub packages.

## Create a classic Personal Access Token

> [GitHub Packages only supports authentication using a personal access token (classic)](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-nuget-registry#authenticating-to-github-packages)

1. Go to your [GitHub settings > tokens](https://github.com/settings/tokens) and create a new token with the `write:packages` scope.

<img src="images/Create a classic PAT for packages.png" />

2. Copy the generated token and save it somewhere safe.

3. Add the token to your nuget.config file

```xml
cat <<EOF > nuget.config
<?xml version="1.0" encoding="utf-8"?>
<configuration>
    <packageSources>
        <clear />
        <add key="github" value="https://nuget.pkg.github.com/returngis/index.json" />
    </packageSources>
    <packageSourceCredentials>
        <github>
            <add key="Username" value="0gis0" />
            <add key="ClearTextPassword" value="$PAT" />
        </github>
    </packageSourceCredentials>
</configuration>
EOF
``````

