FROM mcr.microsoft.com/devcontainers/dotnet:1-8.0-bookworm

RUN sudo apt install dirmngr ca-certificates gnupg -y \
&& sudo gpg --homedir /tmp --no-default-keyring --keyring /usr/share/keyrings/mono-official-archive-keyring.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
&& echo "deb [signed-by=/usr/share/keyrings/mono-official-archive-keyring.gpg] https://download.mono-project.com/repo/debian stable-buster main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list \
&& sudo apt update \
&& sudo apt install mono-devel -y \
&& sudo curl -o /usr/local/bin/nuget.exe https://dist.nuget.org/win-x86-commandline/latest/nuget.exe

USER vscode

# Put alias in bashrc
RUN echo "alias nuget='mono /usr/local/bin/nuget.exe'" >> ~/.bashrc



