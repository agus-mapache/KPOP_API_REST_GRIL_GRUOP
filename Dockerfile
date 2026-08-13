# Fase de compilación (Build)
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src

# Copiar el archivo de proyecto y restaurar dependencias
COPY ["KPOPAPI.csproj", "./"]
RUN dotnet restore "KPOPAPI.csproj"

# Copiar todo el código restante y compilar
COPY . .
RUN dotnet publish "KPOPAPI.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Fase final (Runtime para ejecución)
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS final
WORKDIR /app
COPY --from=build /app/publish .

# Exponer el puerto que usa Railway (por defecto usa el puerto 8080)
ENV ASPNETCORE_URLS=http://+:8080
EXPOSE 8080

ENTRYPOINT ["dotnet", "KPOPAPI.dll"]