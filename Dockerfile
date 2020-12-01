# Container image that runs your code
FROM mcr.microsoft.com/dotnet/sdk:3.1

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Installing Sarif.Multitool
RUN dotnet tool install --global Sarif.Multitool

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
