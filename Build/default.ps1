properties {
    $BaseDirectory = Resolve-Path ..     
    $ArtifactsDirectory = "$BaseDirectory\Artifacts\"     
	$LibDir = "$BaseDirectory\Lib"
	$SrcDir = "$BaseDirectory\Src\"
}

task default -depends Clean,  Compile,  BuildHtml

task Clean {	
	if (Test-Path $ArtifactsDirectory) {
		Get-ChildItem $ArtifactsDirectory | ForEach { Remove-Item $_.FullName -Recurse -Force }
	}
}

# task ExtractVersionsFromGit {
    
#         $json = . "$LibDir\GitVersion.exe" 
        
#         if ($LASTEXITCODE -eq 0) {
#             $version = (ConvertFrom-Json ($json -join "`n"));
          
#             $script:SemVer = $version.SemVer;
#             $script:CommitDate = ([datetime]$version.CommitDate).ToString("MMMM d, yyyy");
#         }
#         else {
#             Write-Output $json -join "`n";
#         }
# }

task Compile {
	$files = (dir $SrcDir\Guidelines\*.md)

	if (!(Test-Path -Path "$ArtifactsDirectory\Guidelines")) {
		New-Item -ItemType Directory -Force -Path "$ArtifactsDirectory\Guidelines"
	}

	$outfile = "$ArtifactsDirectory\Guidelines\CSharpCodingGuidelines.md"
		
	$files | %{
		Write-Host "Including " $_.FullName
		(Get-Content $_.FullName).replace('%semver%', $script:Semver).replace('%commitdate%', $script:CommitDate) |  Add-Content $outfile
	}
	
	Copy-Item -Path "$SrcDir\Guidelines\style.css" -Destination "$ArtifactsDirectory\Guidelines" -recurse -Force
	
	Copy-Item -Path "$SrcDir\Guidelines\Images" -Destination "$ArtifactsDirectory\Guidelines" -recurse -Force
}


task BuildHtml {

	$PreviousPwd = $PWD;

	try
	{
		Set-Location "$ArtifactsDirectory\Guidelines"

		$outfile = "$ArtifactsDirectory\CSharpCodingGuidelines.html"
		$outfilePdf = "$ArtifactsDirectory\CSharpCodingGuidelines.pdf"
		
		if (Test-Path $outfile) {
			Remove-Item $outfile
		}
	
		if (Test-Path $outfilePdf) {
			Remove-Item $outfilePdf
		}

		& "$LibDir\Pandoc\pandoc.exe"  -f markdown_phpextra+raw_html+fenced_code_blocks+fenced_code_attributes+backtick_code_blocks CSharpCodingGuidelines.md -o $outfile --self-contained 
		& "$LibDir\Pandoc\pandoc.exe"  -f html -t html5 --css "$SrcDir\Guidelines\style.css" $outfile -o $outfilePdf --latex-engine=xelatex --variable mainfont="utf8"

	}
	finally
	{
		Set-Location $PreviousPwd
	}
	
}