FROM microsoft/dotnet:sdk AS build-env
WORKDIR /app

COPY ./src/*.csproj ./
RUN dotnet restore

COPY ./src/ ./
RUN dotnet publish -c Release -o out

FROM microsoft/dotnet:aspnetcore-runtime
WORKDIR /app

COPY --from=build-env /app/out .
EXPOSE 80

ENTRYPOINT ["dotnet", "QuickstartIdentityServer.dll"]