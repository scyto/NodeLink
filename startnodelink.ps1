# define vars
$path = "C:\NodeLink"
$dll = "NodeLink.dll"
$json = "NodeLink.runtimeconfig.json"
$uri = "http://automationshack.com/Files"
$oldver = "NodeLink.exe"

Write-Output "checking if NodeLink directory exists, if not it will create it"
If(!(test-path $path))
{
    New-Item -ItemType Directory -Force -Path $path
}

Write-Output "checking if NodeLink.dll exists, if not it will copy latest from automationshack"
If(!(test-path $path"\"$dll -PathType Leaf))
{
#    Invoke-WebRequest $uri"\"$dll -OutFile $path"\"$dll
}

Write-Output "checking if NodeLink JSON exists, if not it will copy latest from automationshack"
#when i used -Out-File instead of -o file was wrtten with wrong EOL encoding, wierd, this works.
If(!(test-path $path"\"$json -PathType Leaf ))
{
    Invoke-WebRequest -o $path"\"$json $uri"/"$json 
}

Write-Output "if nodelink.exe exists (aka this is an existig install) rename the file to allow downgrade if required as this is held in host state."
If((Test-Path $path"\"$oldver -PathType Leaf))
{
    Rename-Item -Path $path"\"$oldver -NewName $oldver".migrated"
}

Write-Output "starting NodeLink"
dotnet $path"\"$dll 
pwsh