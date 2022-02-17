[33mcommit 261e467294a3603e876767753ca114b960cf6f0a[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m)[m
Author: Sara Camila Laura Manzaneda <SCamilaLauraM@outlook.es>
Date:   Thu Feb 17 10:23:13 2022 -0300

    Agrgando Excepciones...

[1mdiff --git a/.vs/CsharpCourse/DesignTimeBuild/.dtbcache.v2 b/.vs/CsharpCourse/DesignTimeBuild/.dtbcache.v2[m
[1mindex e8c64e4..13e1f61 100644[m
Binary files a/.vs/CsharpCourse/DesignTimeBuild/.dtbcache.v2 and b/.vs/CsharpCourse/DesignTimeBuild/.dtbcache.v2 differ
[1mdiff --git a/.vs/CsharpCourse/v16/.suo b/.vs/CsharpCourse/v16/.suo[m
[1mindex 0a3e467..f00f89a 100644[m
Binary files a/.vs/CsharpCourse/v16/.suo and b/.vs/CsharpCourse/v16/.suo differ
[1mdiff --git a/CsharpCourse.sln b/CsharpCourse.sln[m
[1mindex 3e8bf60..6279f6c 100644[m
[1m--- a/CsharpCourse.sln[m
[1m+++ b/CsharpCourse.sln[m
[36m@@ -45,9 +45,13 @@[m [mProject("{9A19103F-16F7-4668-BE54-9A1E7A4F7556}") = "ForEach", "ForEach\ForEach.[m
 EndProject[m
 Project("{9A19103F-16F7-4668-BE54-9A1E7A4F7556}") = "MetodosForEach", "MetodosForEach\MetodosForEach.csproj", "{C28A9B64-77F5-415A-A0FF-0712F9838700}"[m
 EndProject[m
[31m-Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "TiposAnonimos", "TiposAnonimos\TiposAnonimos.csproj", "{D76AF9B9-F485-4330-9D58-16078C584F2C}"[m
[32m+[m[32mProject("{9A19103F-16F7-4668-BE54-9A1E7A4F7556}") = "TiposAnonimos", "TiposAnonimos\TiposAnonimos.csproj", "{D76AF9B9-F485-4330-9D58-16078C584F2C}"[m
 EndProject[m
[31m-Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "Tuplas", "Tuplas\Tuplas.csproj", "{E373ACC8-5AFE-4303-93A4-E8655D7A7EF3}"[m
[32m+[m[32mProject("{9A19103F-16F7-4668-BE54-9A1E7A4F7556}") = "Tuplas", "Tuplas\Tuplas.csproj", "{E373ACC8-5AFE-4303-93A4-E8655D7A7EF3}"[m
[32m+[m[32mEndProject[m
[32m+[m[32mProject("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "Excepciones", "Excepciones\Excepciones.csproj", "{082970A8-B13C-4DB8-8F1E-C5E5D367CB98}"[m
[32m+[m[32mEndProject[m
[32m+[m[32mProject("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "ExcepcionesPersonalizadas", "ExcepcionesPersonalizadas\ExcepcionesPersonalizadas.csproj", "{56098FEA-E60B-4EC6-8026-01E89A0319F0}"[m
 EndProject[m
 Global[m
 	GlobalSection(SolutionConfigurationPlatforms) = preSolution[m
[36m@@ -147,6 +151,14 @@[m [mGlobal[m
 		{E373ACC8-5AFE-4303-93A4-E8655D7A7EF3}.Debug|Any CPU.Build.0 = Debug|Any CPU[m
 		{E373ACC8-5AFE-4303-93A4-E8655D7A7EF3}.Release|Any CPU.ActiveCfg = Release|Any CPU[m
 		{E373ACC8-5AFE-4303-93A4-E8655D7A7EF3}.Release|Any CPU.Build.0 = Release|Any CPU[m
[32m+[m		[32m{082970A8-B13C-4DB8-8F1E-C5E5D367CB98}.Debug|Any CPU.ActiveCfg = Debug|Any CPU[m
[32m+[m		[32m{082970A8-B13C-4DB8-8F1E-C5E5D367CB98}.Debug|Any CPU.Build.0 = Debug|Any CPU[m
[32m+[m		[32m{082970A8-B13C-4DB8-8F1E-C5E5D367CB98}.Release|Any CPU.ActiveCfg = Release|Any CPU[m
[32m+[m		[32m{082970A8-B13C-4DB8-8F1E-C5E5D367CB98}.Release|Any CPU.Build.0 = Release|Any CPU[m
[32m+[m		[32m{56098FEA-E60B-4EC6-8026-01E89A0319F0}.Debug|Any CPU.ActiveCfg = Debug|Any CPU[m
[32m+[m		[32m{56098FEA-E60B-4EC6-8026-01E89A0319F0}.Debug|Any CPU.Build.0 = Debug|Any CPU[m
[32m+[m		[32m{56098FEA-E60B-4EC6-8026-01E89A0319F0}.Release|Any CPU.ActiveCfg = Release|Any CPU[m
[32m+[m		[32m{56098FEA-E60B-4EC6-8026-01E89A0319F0}.Release|Any CPU.Build.0 = Release|Any CPU[m
 	EndGlobalSection[m
 	GlobalSection(SolutionProperties) = preSolution[m
 		HideSolutionNode = FALSE[m
[1mdiff --git a/Excepciones/Excepciones.csproj b/Excepciones/Excepciones.csproj[m
[1mnew file mode 100644[m
[1mindex 0000000..2082704[m
[1m--- /dev/null[m
[1m+++ b/Excepciones/Excepciones.csproj[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<Project Sdk="Microsoft.NET.Sdk">[m
[32m+[m
[32m+[m[32m  <PropertyGroup>[m
[32m+[m[32m    <OutputType>Exe</OutputType>[m
[32m+[m[32m    <TargetFramework>net5.0</TargetFramework>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m
[32m+[m[32m</Project>[m
[1mdiff --git a/Excepciones/Program.cs b/Excepciones/Program.cs[m
[1mnew file mode 100644[m
[1mindex 0000000..9fe930c[m
[1m--- /dev/null[m
[1m+++ b/Excepciones/Program.cs[m
[36m@@ -0,0 +1,39 @@[m
[32m+[m[32m﻿using System;[m
[32m+[m[32musing System.IO;[m
[32m+[m[32mnamespace Excepciones[m
[32m+[m[32m{[m
[32m+[m[32m    class Program[m
[32m+[m[32m    {[m
[32m+[m[32m        static void Main(string[] args)[m
[32m+[m[32m        {[m
[32m+[m[32m            try[m
[32m+[m[32m            {[m
[32m+[m[32m                //Poner un @ al principio para evitar que la \ se lea como salto de linea[m
[32m+[m[32m                string content = File.ReadAllText(@"C:\Users\HP\source\repos\Variables\Excepciones\pato.txt");[m
[32m+[m[32m                Console.WriteLine(content);[m
[32m+[m[32m               // string content2 = File.ReadAllText(@"C:\Users\HP\source\repos\Variables\Excepciones\pato2.txt");[m
[32m+[m[32m                //Console.WriteLine(content2);[m
[32m+[m[32m                //para voluntariamente agregar una excepcion[m
[32m+[m[32m                throw new Exception("ocurrio algo raro");[m
[32m+[m
[32m+[m[32m            }[m
[32m+[m[32m            // generalizar con la palabra "Exception"[m
[32m+[m[32m            catch (FileNotFoundException ex)[m
[32m+[m[32m            {[m
[32m+[m[32m                Console.WriteLine("El archivo no fue encontrado");[m
[32m+[m[32m            }[m
[32m+[m[32m            catch (Exception ex)//sugerencia de siempre ponerlo al mismo[m
[32m+[m[32m            {[m
[32m+[m[32m                Console.WriteLine(ex.Message);[m
[32m+[m[32m            }[m
[32m+[m[32m            finally[m
[32m+[m[32m            {[m
[32m+[m[32m                Console.WriteLine("Cerramos todo, ejecuta pase lo que pase");[m
[32m+[m[41m                [m
[32m+[m[32m            }[m
[32m+[m[32m            //Console.WriteLine("seguimos");[m
[32m+[m
[32m+[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/Excepciones/bin/Debug/net5.0/Excepciones.dll b/Excepciones/bin/Debug/net5.0/Excepciones.dll[m
[1mnew file mode 100644[m
[1mindex 0000000..286c71a[m
Binary files /dev/null and b/Excepciones/bin/Debug/net5.0/Excepciones.dll differ
[1mdiff --git a/Excepciones/bin/Debug/net5.0/Excepciones.exe b/Excepciones/bin/Debug/net5.0/Excepciones.exe[m
[1mnew file mode 100644[m
[1mindex 0000000..bfc4583[m
Binary files /dev/null and b/Excepciones/bin/Debug/net5.0/Excepciones.exe differ
[1mdiff --git a/Excepciones/bin/Debug/net5.0/Excepciones.pdb b/Excepciones/bin/Debug/net5.0/Excepciones.pdb[m
[1mnew file mode 100644[m
[1mindex 0000000..0e9e76f[m
Binary files /dev/null and b/Excepciones/bin/Debug/net5.0/Excepciones.pdb differ
[1mdiff --git a/Excepciones/bin/Debug/net5.0/ref/Excepciones.dll b/Excepciones/bin/Debug/net5.0/ref/Excepciones.dll[m
[1mnew file mode 100644[m
[1mindex 0000000..72bac06[m
Binary files /dev/null and b/Excepciones/bin/Debug/net5.0/ref/Excepciones.dll differ
[1mdiff --git a/Excepciones/obj/Debug/net5.0/.NETCoreApp,Version=v5.0.AssemblyAttributes.cs b/Excepciones/obj/Debug/net5.0/.NETCoreApp,Version=v5.0.AssemblyAttributes.cs[m
[1mnew file mode 100644[m
[1mindex 0000000..2f7e5ec[m
[1m--- /dev/null[m
[1m+++ b/Excepciones/obj/Debug/net5.0/.NETCoreApp,Version=v5.0.AssemblyAttributes.cs[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32m// <autogenerated />[m
[32m+[m[32musing System;[m
[32m+[m[32musing System.Reflection;[m
[32m+[m[32m[assembly: global::System.Runtime.Versioning.TargetFrameworkAttribute(".NETCoreApp,Version=v5.0", FrameworkDisplayName = "")][m
[1mdiff --git a/Excepciones/obj/Debug/net5.0/Excepciones.AssemblyInfo.cs b/Excepciones/obj/Debug/net5.0/Excepciones.AssemblyInfo.cs[m
[1mnew file mode 100644[m
[1mindex 0000000..a2448da[m
[1m--- /dev/null[m
[1m+++ b/Excepciones/obj/Debug/net5.0/Excepciones.AssemblyInfo.cs[m
[36m@@ -0,0 +1,23 @@[m
[32m+[m[32m//------------------------------------------------------------------------------[m
[32m+[m[32m// <auto-generated>[m
[32m+[m[32m//     Este código fue generado por una herramienta.[m
[32m+[m[32m//     Versión de runtime:4.0.30319.42000[m
[32m+[m[32m//[m
[32m+[m[32m//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si[m
[32m+[m[32m//     se vuelve a generar el código.[m
[32m+[m[32m// </auto-generated>[m
[32m+[m[32m//------------------------------------------------------------------------------[m
[32m+[m
[32m+[m[32musing System;[m
[32m+[m[32musing System.Reflection;[m
[32m+[m
[32m+[m[32m[assembly: System.Reflection.AssemblyCompanyAttribute("Excepciones")][m
[32m+[m[32m[assembly: System.Reflection.AssemblyConfigurationAttribute("Debug")][m
[32m+[m[32m[assembly: System.Reflection.AssemblyFileVersionAttribute("1.0.0.0")][m
[32m+[m[32m[assembly: System.Reflection.AssemblyInformationalVersionAttribute("1.0.0")][m
[32m+[m[32m[assembly: System.Reflection.AssemblyProductAttribute("Excepciones")][m
[32m+[m[32m[assembly: System.Reflection.AssemblyTitleAttribute("Excepciones")][m
[32m+[m[32m[assembly: System.Reflection.AssemblyVersionAttribute("1.0.0.0")][m
[32m+[m
[32m+[m[32m// Generado por la clase WriteCodeFragment de MSBuild.[m
[32m+[m
[1mdiff --git a/Excepciones/obj/Debug/net5.0/Excepciones.AssemblyInfoInputs.cache b/Excepciones/obj/Debug/net5.0/Excepciones.AssemblyInfoInputs.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..1104925[m
[1m--- /dev/null[m
[1m+++ b/Excepciones/obj/Debug/net5.0/Excepciones.AssemblyInfoInputs.cache[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m763524f434654ed7d7f42b339a28b033cd8799e4[m
[1mdiff --git a/Excepciones/obj/Debug/net5.0/Excepciones.GeneratedMSBuildEditorConfig.editorconfig b/Excepciones/obj/Debug/net5.0/Excepciones.GeneratedMSBuildEditorConfig.editorconfig[m
[1mnew file mode 100644[m
[1mindex 0000000..2610919[m
[1m--- /dev/null[m
[1m+++ b/Excepciones/obj/Debug/net5.0/Excepciones.GeneratedMSBuildEditorConfig.editorconfig[m
[36m@@ -0,0 +1,10 @@[m
[32m+[m[32mis_global = true[m
[32m+[m[32mbuild_property.TargetFramework = net5.0[m
[32m+[m[32mbuild_property.TargetPlatformMinVersion =[m[41m [m
[32m+[m[32mbuild_property.UsingMicrosoftNETSdkWeb =[m[41m [m
[32m+[m[32mbuild_property.ProjectTypeGuids =[m[41m [m
[32m+[m[32mbuild_property.PublishSingleFile =[m[41m [m
[32m+[m[32mbuild_property.IncludeAllContentForSelfExtract =[m[41m [m
[32m+[m[32mbuild_property._SupportedPlatformList = Android,iOS,Linux,macOS,Windows[m
[32m+[m[32mbuild_property.RootNamespace = Excepciones[m
[32m+[m[32mbuild_property.ProjectDir = C:\Users\HP\source\repos\Variables\Excepciones\[m
[1mdiff --git a/Excepciones/obj/Debug/net5.0/Excepciones.assets.cache b/Excepciones/obj/Debug/net5.0/Excepciones.assets.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..090cb2d[m
Binary files /dev/null and b/Excepciones/obj/Debug/net5.0/Excepciones.assets.cache differ
[1mdiff --git a/Excepciones/obj/Debug/net5.0/Excepciones.csproj.CoreCompileInputs.cache b/Excepciones/obj/Debug/net5.0/Excepciones.csproj.CoreCompileInputs.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..42b01a7[m
[1m--- /dev/null[m
[1m+++ b/Excepciones/obj/Debug/net5.0/Excepciones.csproj.CoreCompileInputs.cache[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m612374da3fbf4393a27203c2a7da2edaf29a2cc1[m
[1mdiff --git a/Excepciones/obj/Debug/net5.0/Excepciones.csproj.FileListAbsolute.txt b/Excepciones/obj/Debug/net5.0/Excepciones.csproj.FileListAbsolute.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..7298fdf[m
[1m--- /dev/null[m
[1m+++ b/Excepciones/obj/Debug/net5.0/Excepciones.csproj.FileListAbsolute.txt[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\bin\Debug\net5.0\Excepciones.exe[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\bin\Debug\net5.0\Excepciones.deps.json[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\bin\Debug\net5.0\Excepciones.runtimeconfig.json[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\bin\Debug\net5.0\Excepciones.runtimeconfig.dev.json[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\bin\Debug\net5.0\Excepciones.dll[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\bin\Debug\net5.0\ref\Excepciones.dll[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\bin\Debug\net5.0\Excepciones.pdb[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\obj\Debug\net5.0\Excepciones.GeneratedMSBuildEditorConfig.editorconfig[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\obj\Debug\net5.0\Excepciones.AssemblyInfoInputs.cache[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\obj\Debug\net5.0\Excepciones.AssemblyInfo.cs[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\obj\Debug\net5.0\Excepciones.csproj.CoreCompileInputs.cache[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\obj\Debug\net5.0\Excepciones.dll[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\obj\Debug\net5.0\ref\Excepciones.dll[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\obj\Debug\net5.0\Excepciones.pdb[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Excepciones\obj\Debug\net5.0\Excepciones.genruntimeconfig.cache[m
[1mdiff --git a/Excepciones/obj/Debug/net5.0/Excepciones.dll b/Excepciones/obj/Debug/net5.0/Excepciones.dll[m
[1mnew file mode 100644[m
[1mindex 0000000..286c71a[m
Binary files /dev/null and b/Excepciones/obj/Debug/net5.0/Excepciones.dll differ
[1mdiff --git a/Excepciones/obj/Debug/net5.0/Excepciones.genruntimeconfig.cache b/Excepciones/obj/Debug/net5.0/Excepciones.genruntimeconfig.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..67b4465[m
[1m--- /dev/null[m
[1m+++ b/Excepciones/obj/Debug/net5.0/Excepciones.genruntimeconfig.cache[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32mc71fe26ec416fa0ac26ee31d214d0966112715b6[m
[1mdiff --git a/Excepciones/obj/Debug/net5.0/Excepciones.pdb b/Excepciones/obj/Debug/net5.0/Excepciones.pdb[m
[1mnew file mode 100644[m
[1mindex 0000000..0e9e76f[m
Binary files /dev/null and b/Excepciones/obj/Debug/net5.0/Excepciones.pdb differ
[1mdiff --git a/Excepciones/obj/Debug/net5.0/apphost.exe b/Excepciones/obj/Debug/net5.0/apphost.exe[m
[1mnew file mode 100644[m
[1mindex 0000000..bfc4583[m
Binary files /dev/null and b/Excepciones/obj/Debug/net5.0/apphost.exe differ
[1mdiff --git a/Excepciones/obj/Debug/net5.0/ref/Excepciones.dll b/Excepciones/obj/Debug/net5.0/ref/Excepciones.dll[m
[1mnew file mode 100644[m
[1mindex 0000000..72bac06[m
Binary files /dev/null and b/Excepciones/obj/Debug/net5.0/ref/Excepciones.dll differ
[1mdiff --git a/Excepciones/obj/Excepciones.csproj.nuget.g.props b/Excepciones/obj/Excepciones.csproj.nuget.g.props[m
[1mnew file mode 100644[m
[1mindex 0000000..0c1c5e6[m
[1m--- /dev/null[m
[1m+++ b/Excepciones/obj/Excepciones.csproj.nuget.g.props[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32m﻿<?xml version="1.0" encoding="utf-8" standalone="no"?>[m
[32m+[m[32m<Project ToolsVersion="14.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">[m
[32m+[m[32m  <PropertyGroup Condition=" '$(ExcludeRestorePackageImports)' != 'true' ">[m
[32m+[m[32m    <RestoreSuccess Condition=" '$(RestoreSuccess)' == '' ">True</RestoreSuccess>[m
[32m+[m[32m    <RestoreTool Condition=" '$(RestoreTool)' == '' ">NuGet</RestoreTool>[m
[32m+[m[32m    <ProjectAssetsFile Condition=" '$(ProjectAssetsFile)' == '' ">$(MSBuildThisFileDirectory)project.assets.json</ProjectAssetsFile>[m
[32m+[m[32m    <NuGetPackageRoot Condition=" '$(NuGetPackageRoot)' == '' ">$(UserProfile)\.nuget\packages\</NuGetPackageRoot>[m
[32m+[m[32m    <NuGetPackageFolders Condition=" '$(NuGetPackageFolders)' == '' ">C:\Users\HP\.nuget\packages\;C:\Program Files (x86)\Microsoft Visual Studio\Shared\NuGetPackages</NuGetPackageFolders>[m
[32m+[m[32m    <NuGetProjectStyle Condition=" '$(NuGetProjectStyle)' == '' ">PackageReference</NuGetProjectStyle>[m
[32m+[m[32m    <NuGetToolVersion Condition=" '$(NuGetToolVersion)' == '' ">5.11.1</NuGetToolVersion>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m  <ItemGroup Condition=" '$(ExcludeRestorePackageImports)' != 'true' ">[m
[32m+[m[32m    <SourceRoot Include="C:\Users\HP\.nuget\packages\" />[m
[32m+[m[32m    <SourceRoot Include="C:\Program Files (x86)\Microsoft Visual Studio\Shared\NuGetPackages\" />[m
[32m+[m[32m  </ItemGroup>[m
[32m+[m[32m  <PropertyGroup>[m
[32m+[m[32m    <MSBuildAllProjects>$(MSBuildAllProjects);$(MSBuildThisFileFullPath)</MSBuildAllProjects>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m</Project>[m
\ No newline at end of file[m
[1mdiff --git a/Excepciones/obj/Excepciones.csproj.nuget.g.targets b/Excepciones/obj/Excepciones.csproj.nuget.g.targets[m
[1mnew file mode 100644[m
[1mindex 0000000..53cfaa1[m
[1m--- /dev/null[m
[1m+++ b/Excepciones/obj/Excepciones.csproj.nuget.g.targets[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m﻿<?xml version="1.0" encoding="utf-8" standalone="no"?>[m
[32m+[m[32m<Project ToolsVersion="14.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">[m
[32m+[m[32m  <PropertyGroup>[m
[32m+[m[32m    <MSBuildAllProjects>$(MSBuildAllProjects);$(MSBuildThisFileFullPath)</MSBuildAllProjects>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m</Project>[m
\ No newline at end of file[m
[1mdiff --git a/Excepciones/obj/project.nuget.cache b/Excepciones/obj/project.nuget.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..e830a78[m
[1m--- /dev/null[m
[1m+++ b/Excepciones/obj/project.nuget.cache[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "version": 2,[m
[32m+[m[32m  "dgSpecHash": "f0cwLkVOmdVmTsJ0xlcRnSrR+I6LXCcPN4ChXOnj6ehway9zynYMs2vi/5B/R9lPzTX3C9D7TmF7txSBjRAzyQ==",[m
[32m+[m[32m  "success": true,[m
[32m+[m[32m  "projectFilePath": "C:\\Users\\HP\\source\\repos\\Variables\\Excepciones\\Excepciones.csproj",[m
[32m+[m[32m  "expectedPackageFiles": [],[m
[32m+[m[32m  "logs": [][m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/Excepciones/pato.txt b/Excepciones/pato.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..5eec782[m
[1m--- /dev/null[m
[1m+++ b/Excepciones/pato.txt[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32mHOLA MUNDO[m
\ No newline at end of file[m
[1mdiff --git a/ExcepcionesPersonalizadas/ExcepcionesPersonalizadas.csproj b/ExcepcionesPersonalizadas/ExcepcionesPersonalizadas.csproj[m
[1mnew file mode 100644[m
[1mindex 0000000..2082704[m
[1m--- /dev/null[m
[1m+++ b/ExcepcionesPersonalizadas/ExcepcionesPersonalizadas.csproj[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<Project Sdk="Microsoft.NET.Sdk">[m
[32m+[m
[32m+[m[32m  <PropertyGroup>[m
[32m+[m[32m    <OutputType>Exe</OutputType>[m
[32m+[m[32m    <TargetFramework>net5.0</TargetFramework>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m
[32m+[m[32m</Project>[m
[1mdiff --git a/ExcepcionesPersonalizadas/Program.cs b/ExcepcionesPersonalizadas/Program.cs[m
[1mnew file mode 100644[m
[1mindex 0000000..498d3a1[m
[1m--- /dev/null[m
[1m+++ b/ExcepcionesPersonalizadas/Program.cs[m
[36m@@ -0,0 +1,12 @@[m
[32m+[m[32m﻿using System;[m
[32m+[m
[32m+[m[32mnamespace ExcepcionesPersonalizadas[m
[32m+[m[32m{[m
[32m+[m[32m    class Program[m
[32m+[m[32m    {[m
[32m+[m[32m        static void Main(string[] args)[m
[32m+[m[32m        {[m
[32m+[m[32m            Console.WriteLine("Hello World!");[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/ExcepcionesPersonalizadas/obj/Debug/net5.0/.NETCoreApp,Version=v5.0.AssemblyAttributes.cs b/ExcepcionesPersonalizadas/obj/Debug/net5.0/.NETCoreApp,Version=v5.0.AssemblyAttributes.cs[m
[1mnew file mode 100644[m
[1mindex 0000000..2f7e5ec[m
[1m--- /dev/null[m
[1m+++ b/ExcepcionesPersonalizadas/obj/Debug/net5.0/.NETCoreApp,Version=v5.0.AssemblyAttributes.cs[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32m// <autogenerated />[m
[32m+[m[32musing System;[m
[32m+[m[32musing System.Reflection;[m
[32m+[m[32m[assembly: global::System.Runtime.Versioning.TargetFrameworkAttribute(".NETCoreApp,Version=v5.0", FrameworkDisplayName = "")][m
[1mdiff --git a/ExcepcionesPersonalizadas/obj/Debug/net5.0/ExcepcionesPersonalizadas.AssemblyInfo.cs b/ExcepcionesPersonalizadas/obj/Debug/net5.0/ExcepcionesPersonalizadas.AssemblyInfo.cs[m
[1mnew file mode 100644[m
[1mindex 0000000..16726dd[m
[1m--- /dev/null[m
[1m+++ b/ExcepcionesPersonalizadas/obj/Debug/net5.0/ExcepcionesPersonalizadas.AssemblyInfo.cs[m
[36m@@ -0,0 +1,23 @@[m
[32m+[m[32m//------------------------------------------------------------------------------[m
[32m+[m[32m// <auto-generated>[m
[32m+[m[32m//     Este código fue generado por una herramienta.[m
[32m+[m[32m//     Versión de runtime:4.0.30319.42000[m
[32m+[m[32m//[m
[32m+[m[32m//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si[m
[32m+[m[32m//     se vuelve a generar el código.[m
[32m+[m[32m// </auto-generated>[m
[32m+[m[32m//------------------------------------------------------------------------------[m
[32m+[m
[32m+[m[32musing System;[m
[32m+[m[32musing System.Reflection;[m
[32m+[m
[32m+[m[32m[assembly: System.Reflection.AssemblyCompanyAttribute("ExcepcionesPersonalizadas")][m
[32m+[m[32m[assembly: System.Reflection.AssemblyConfigurationAttribute("Debug")][m
[32m+[m[32m[assembly: System.Reflection.AssemblyFileVersionAttribute("1.0.0.0")][m
[32m+[m[32m[assembly: System.Reflection.AssemblyInformationalVersionAttribute("1.0.0")][m
[32m+[m[32m[assembly: System.Reflection.AssemblyProductAttribute("ExcepcionesPersonalizadas")][m
[32m+[m[32m[assembly: System.Reflection.AssemblyTitleAttribute("ExcepcionesPersonalizadas")][m
[32m+[m[32m[assembly: System.Reflection.AssemblyVersionAttribute("1.0.0.0")][m
[32m+[m
[32m+[m[32m// Generado por la clase WriteCodeFragment de MSBuild.[m
[32m+[m
[1mdiff --git a/ExcepcionesPersonalizadas/obj/Debug/net5.0/ExcepcionesPersonalizadas.AssemblyInfoInputs.cache b/ExcepcionesPersonalizadas/obj/Debug/net5.0/ExcepcionesPersonalizadas.AssemblyInfoInputs.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..0c3d794[m
[1m--- /dev/null[m
[1m+++ b/ExcepcionesPersonalizadas/obj/Debug/net5.0/ExcepcionesPersonalizadas.AssemblyInfoInputs.cache[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m9260f531a2691c00a90a768a7b4221ba5da5954c[m
[1mdiff --git a/ExcepcionesPersonalizadas/obj/Debug/net5.0/ExcepcionesPersonalizadas.GeneratedMSBuildEditorConfig.editorconfig b/ExcepcionesPersonalizadas/obj/Debug/net5.0/ExcepcionesPersonalizadas.GeneratedMSBuildEditorConfig.editorconfig[m
[1mnew file mode 100644[m
[1mindex 0000000..f34c177[m
[1m--- /dev/null[m
[1m+++ b/ExcepcionesPersonalizadas/obj/Debug/net5.0/ExcepcionesPersonalizadas.GeneratedMSBuildEditorConfig.editorconfig[m
[36m@@ -0,0 +1,10 @@[m
[32m+[m[32mis_global = true[m
[32m+[m[32mbuild_property.TargetFramework = net5.0[m
[32m+[m[32mbuild_property.TargetPlatformMinVersion =[m[41m [m
[32m+[m[32mbuild_property.UsingMicrosoftNETSdkWeb =[m[41m [m
[32m+[m[32mbuild_property.ProjectTypeGuids =[m[41m [m
[32m+[m[32mbuild_property.PublishSingleFile =[m[41m [m
[32m+[m[32mbuild_property.IncludeAllContentForSelfExtract =[m[41m [m
[32m+[m[32mbuild_property._SupportedPlatformList = Android,iOS,Linux,macOS,Windows[m
[32m+[m[32mbuild_property.RootNamespace = ExcepcionesPersonalizadas[m
[32m+[m[32mbuild_property.ProjectDir = C:\Users\HP\source\repos\Variables\ExcepcionesPersonalizadas\[m
[1mdiff --git a/ExcepcionesPersonalizadas/obj/Debug/net5.0/ExcepcionesPersonalizadas.assets.cache b/ExcepcionesPersonalizadas/obj/Debug/net5.0/ExcepcionesPersonalizadas.assets.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..f3292e4[m
Binary files /dev/null and b/ExcepcionesPersonalizadas/obj/Debug/net5.0/ExcepcionesPersonalizadas.assets.cache differ
[1mdiff --git a/ExcepcionesPersonalizadas/obj/ExcepcionesPersonalizadas.csproj.nuget.g.props b/ExcepcionesPersonalizadas/obj/ExcepcionesPersonalizadas.csproj.nuget.g.props[m
[1mnew file mode 100644[m
[1mindex 0000000..0c1c5e6[m
[1m--- /dev/null[m
[1m+++ b/ExcepcionesPersonalizadas/obj/ExcepcionesPersonalizadas.csproj.nuget.g.props[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32m﻿<?xml version="1.0" encoding="utf-8" standalone="no"?>[m
[32m+[m[32m<Project ToolsVersion="14.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">[m
[32m+[m[32m  <PropertyGroup Condition=" '$(ExcludeRestorePackageImports)' != 'true' ">[m
[32m+[m[32m    <RestoreSuccess Condition=" '$(RestoreSuccess)' == '' ">True</RestoreSuccess>[m
[32m+[m[32m    <RestoreTool Condition=" '$(RestoreTool)' == '' ">NuGet</RestoreTool>[m
[32m+[m[32m    <ProjectAssetsFile Condition=" '$(ProjectAssetsFile)' == '' ">$(MSBuildThisFileDirectory)project.assets.json</ProjectAssetsFile>[m
[32m+[m[32m    <NuGetPackageRoot Condition=" '$(NuGetPackageRoot)' == '' ">$(UserProfile)\.nuget\packages\</NuGetPackageRoot>[m
[32m+[m[32m    <NuGetPackageFolders Condition=" '$(NuGetPackageFolders)' == '' ">C:\Users\HP\.nuget\packages\;C:\Program Files (x86)\Microsoft Visual Studio\Shared\NuGetPackages</NuGetPackageFolders>[m
[32m+[m[32m    <NuGetProjectStyle Condition=" '$(NuGetProjectStyle)' == '' ">PackageReference</NuGetProjectStyle>[m
[32m+[m[32m    <NuGetToolVersion Condition=" '$(NuGetToolVersion)' == '' ">5.11.1</NuGetToolVersion>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m  <ItemGroup Condition=" '$(ExcludeRestorePackageImports)' != 'true' ">[m
[32m+[m[32m    <SourceRoot Include="C:\Users\HP\.nuget\packages\" />[m
[32m+[m[32m    <SourceRoot Include="C:\Program Files (x86)\Microsoft Visual Studio\Shared\NuGetPackages\" />[m
[32m+[m[32m  </ItemGroup>[m
[32m+[m[32m  <PropertyGroup>[m
[32m+[m[32m    <MSBuildAllProjects>$(MSBuildAllProjects);$(MSBuildThisFileFullPath)</MSBuildAllProjects>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m</Project>[m
\ No newline at end of file[m
[1mdiff --git a/ExcepcionesPersonalizadas/obj/ExcepcionesPersonalizadas.csproj.nuget.g.targets b/ExcepcionesPersonalizadas/obj/ExcepcionesPersonalizadas.csproj.nuget.g.targets[m
[1mnew file mode 100644[m
[1mindex 0000000..53cfaa1[m
[1m--- /dev/null[m
[1m+++ b/ExcepcionesPersonalizadas/obj/ExcepcionesPersonalizadas.csproj.nuget.g.targets[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m﻿<?xml version="1.0" encoding="utf-8" standalone="no"?>[m
[32m+[m[32m<Project ToolsVersion="14.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">[m
[32m+[m[32m  <PropertyGroup>[m
[32m+[m[32m    <MSBuildAllProjects>$(MSBuildAllProjects);$(MSBuildThisFileFullPath)</MSBuildAllProjects>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m</Project>[m
\ No newline at end of file[m
[1mdiff --git a/ExcepcionesPersonalizadas/obj/project.nuget.cache b/ExcepcionesPersonalizadas/obj/project.nuget.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..ba2157b[m
[1m--- /dev/null[m
[1m+++ b/ExcepcionesPersonalizadas/obj/project.nuget.cache[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "version": 2,[m
[32m+[m[32m  "dgSpecHash": "klOjsI4EREZhnlq/CaMp5YORHkOT3IcWGybKRW1XrLBIKAaH3K4Wxosrnq4Hrv1VB2i3q7AAilzW7hczXlPXtA==",[m
[32m+[m[32m  "success": true,[m
[32m+[m[32m  "projectFilePath": "C:\\Users\\HP\\source\\repos\\Variables\\ExcepcionesPersonalizadas\\ExcepcionesPersonalizadas.csproj",[m
[32m+[m[32m  "expectedPackageFiles": [],[m
[32m+[m[32m  "logs": [][m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/SobrecargaDeMetodos/obj/Debug/net5.0/SobrecargaDeMetodos.csproj.AssemblyReference.cache b/SobrecargaDeMetodos/obj/Debug/net5.0/SobrecargaDeMetodos.csproj.AssemblyReference.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..f5e894a[m
Binary files /dev/null and b/SobrecargaDeMetodos/obj/Debug/net5.0/SobrecargaDeMetodos.csproj.AssemblyReference.cache differ
[1mdiff --git a/Tuplas/Program.cs b/Tuplas/Program.cs[m
[1mindex f8dd707..e3233d0 100644[m
[1m--- a/Tuplas/Program.cs[m
[1m+++ b/Tuplas/Program.cs[m
[36m@@ -51,7 +51,24 @@[m [mnamespace Tuplas[m
                 Console.WriteLine($"{p2.name} {p2.id}");[m
             }[m
 [m
[32m+[m[32m            //Nos ayuda a regresar más de un valor en una función[m
[32m+[m[32m            var cityInfo = getLocationBO();[m
[32m+[m[32m            Console.WriteLine($"lat:{cityInfo.lat}, long: {cityInfo.lng}, nombre: {cityInfo.name}");[m
 [m
[32m+[m[32m            //para recuperar solamente un elemento. Ignorar con guiones[m
[32m+[m[32m            var (_, lng, _) = getLocationBO();[m
[32m+[m[32m            Console.WriteLine(lng);[m
[32m+[m[41m            [m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        //Asi declaramos una funcion que nos devuelve una Tupla[m
[32m+[m[41m [m
[32m+[m[32m        public static (float lat, float lng, string name) getLocationBO()[m
[32m+[m[32m        {[m
[32m+[m[32m            float lat = 68.30f;[m
[32m+[m[32m            float lng = 86.08f;[m
[32m+[m[32m            string name = "Bolivia";[m
[32m+[m[32m            return (lat, lng, name );[m
         }[m
     }[m
 }[m
[1mdiff --git a/Tuplas/bin/Debug/net5.0/Tuplas.dll b/Tuplas/bin/Debug/net5.0/Tuplas.dll[m
[1mindex f262f0a..154afc8 100644[m
Binary files a/Tuplas/bin/Debug/net5.0/Tuplas.dll and b/Tuplas/bin/Debug/net5.0/Tuplas.dll differ
[1mdiff --git a/Tuplas/bin/Debug/net5.0/Tuplas.pdb b/Tuplas/bin/Debug/net5.0/Tuplas.pdb[m
[1mindex 3e6828b..a9125ce 100644[m
Binary files a/Tuplas/bin/Debug/net5.0/Tuplas.pdb and b/Tuplas/bin/Debug/net5.0/Tuplas.pdb differ
[1mdiff --git a/Tuplas/bin/Debug/net5.0/ref/Tuplas.dll b/Tuplas/bin/Debug/net5.0/ref/Tuplas.dll[m
[1mindex a00ee36..a73a3aa 100644[m
Binary files a/Tuplas/bin/Debug/net5.0/ref/Tuplas.dll and b/Tuplas/bin/Debug/net5.0/ref/Tuplas.dll differ
[1mdiff --git a/Tuplas/obj/Debug/net5.0/Tuplas.csproj.AssemblyReference.cache b/Tuplas/obj/Debug/net5.0/Tuplas.csproj.AssemblyReference.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..f5e894a[m
Binary files /dev/null and b/Tuplas/obj/Debug/net5.0/Tuplas.csproj.AssemblyReference.cache differ
[1mdiff --git a/Tuplas/obj/Debug/net5.0/Tuplas.csproj.FileListAbsolute.txt b/Tuplas/obj/Debug/net5.0/Tuplas.csproj.FileListAbsolute.txt[m
[1mindex 0e9fab6..97fde6e 100644[m
[1m--- a/Tuplas/obj/Debug/net5.0/Tuplas.csproj.FileListAbsolute.txt[m
[1m+++ b/Tuplas/obj/Debug/net5.0/Tuplas.csproj.FileListAbsolute.txt[m
[36m@@ -13,3 +13,4 @@[m [mC:\Users\HP\source\repos\Variables\Tuplas\obj\Debug\net5.0\Tuplas.dll[m
 C:\Users\HP\source\repos\Variables\Tuplas\obj\Debug\net5.0\ref\Tuplas.dll[m
 C:\Users\HP\source\repos\Variables\Tuplas\obj\Debug\net5.0\Tuplas.pdb[m
 C:\Users\HP\source\repos\Variables\Tuplas\obj\Debug\net5.0\Tuplas.genruntimeconfig.cache[m
[32m+[m[32mC:\Users\HP\source\repos\Variables\Tuplas\obj\Debug\net5.0\Tuplas.csproj.AssemblyReference.cache[m
[1mdiff --git a/Tuplas/obj/Debug/net5.0/Tuplas.dll b/Tuplas/obj/Debug/net5.0/Tuplas.dll[m
[1mindex f262f0a..154afc8 100644[m
Binary files a/Tuplas/obj/Debug/net5.0/Tuplas.dll and b/Tuplas/obj/Debug/net5.0/Tuplas.dll differ
[1mdiff --git a/Tuplas/obj/Debug/net5.0/Tuplas.pdb b/Tuplas/obj/Debug/net5.0/Tuplas.pdb[m
[1mindex 3e6828b..a9125ce 100644[m
Binary files a/Tuplas/obj/Debug/net5.0/Tuplas.pdb and b/Tuplas/obj/Debug/net5.0/Tuplas.pdb differ
[1mdiff --git a/Tuplas/obj/Debug/net5.0/ref/Tuplas.dll b/Tuplas/obj/Debug/net5.0/ref/Tuplas.dll[m
[1mindex a00ee36..a73a3aa 100644[m
Binary files a/Tuplas/obj/Debug/net5.0/ref/Tuplas.dll and b/Tuplas/obj/Debug/net5.0/ref/Tuplas.dll differ
