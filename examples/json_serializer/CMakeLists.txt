project(json_serializer LANGUAGES CSharp)

include(CSharpUtilities)

add_executable(json_serializer Program.cs)

set_property(TARGET json_serializer PROPERTY VS_DOTNET_REFERENCES
    "packages/Newtonsoft.Json.12.0.1/lib/net40/Newtonsoft.Json.dll"
)

nuget(json_serializer)
