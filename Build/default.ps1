properties {
    $BaseDirectory = Resolve-Path ..     
    $ArtifactsDirectory = "$BaseDirectory\Artifacts\"     
	$LibDir = "$BaseDirectory\Lib"
	$SrcDir = "$BaseDirectory\Src\"
}

task default -depends Clean,  Compile,FooterCompile, HeaderCompile,CoverCompile, BuildHtml

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
	$files = (dir $SrcDir\Guidelines\0*_*.md)

	if (!(Test-Path -Path "$ArtifactsDirectory\Guidelines")) {
		New-Item -ItemType Directory -Force -Path "$ArtifactsDirectory\Guidelines"
	}

	$outfile = "$ArtifactsDirectory\Guidelines\FintekCodingGuidelines.md"
		
	$files | %{
		Write-Host "Including " $_.FullName
		(Get-Content $_.FullName).replace('%semver%', $script:Semver).replace('%commitdate%', $script:CommitDate) |  Add-Content $outfile
	}
	
	Copy-Item -Path "$SrcDir\Guidelines\style.css" -Destination "$ArtifactsDirectory\Guidelines" -recurse -Force	
	Copy-Item -Path "$SrcDir\Guidelines\Images" -Destination "$ArtifactsDirectory\Guidelines" -recurse -Force
}

task CoverCompile {
	$files = (dir $SrcDir\Guidelines\Cover.md)

	if (!(Test-Path -Path "$ArtifactsDirectory\Guidelines")) {
		New-Item -ItemType Directory -Force -Path "$ArtifactsDirectory\Guidelines"
	}

	$outfile = "$ArtifactsDirectory\Guidelines\Cover.md"
		
	$files | %{
		Write-Host "Including " $_.FullName
		(Get-Content $_.FullName).replace('%semver%', $script:Semver).replace('%commitdate%', $script:CommitDate) |  Add-Content $outfile
	}
}

task FooterCompile {
	$files = (dir $SrcDir\Guidelines\Footer.md)

	if (!(Test-Path -Path "$ArtifactsDirectory\Guidelines")) {
		New-Item -ItemType Directory -Force -Path "$ArtifactsDirectory\Guidelines"
	}

	$outfile = "$ArtifactsDirectory\Guidelines\Footer.md"
		
	$files | %{
		Write-Host "Including " $_.FullName
		(Get-Content $_.FullName).replace('%semver%', $script:Semver).replace('%commitdate%', $script:CommitDate) |  Add-Content $outfile
	}
}

task HeaderCompile {
	$files = (dir $SrcDir\Guidelines\Header.md)

	if (!(Test-Path -Path "$ArtifactsDirectory\Guidelines")) {
		New-Item -ItemType Directory -Force -Path "$ArtifactsDirectory\Guidelines"
	}

	$outfile = "$ArtifactsDirectory\Guidelines\Header.md"
		
	$files | %{
		Write-Host "Including " $_.FullName
		(Get-Content $_.FullName).replace('%semver%', $script:Semver).replace('%commitdate%', $script:CommitDate) |  Add-Content $outfile
	}
}





task BuildHtml {

	$PreviousPwd = $PWD;

	try
	{
		Set-Location "$ArtifactsDirectory\Guidelines"

		$footerfile = "$ArtifactsDirectory\Footer.html"
		$headerfile = "$ArtifactsDirectory\Header.html"
		$coverfile = "$ArtifactsDirectory\Cover.html"
		$outfile = "$ArtifactsDirectory\Rules.html"
		$outfilePdf = "$ArtifactsDirectory\Rules.pdf"
		$coverfilePdf = "$ArtifactsDirectory\Cover.pdf"

		$combinedPdf = "$ArtifactsDirectory\FintekCodingGuidelines.pdf"
		
		if (Test-Path $outfile) {
			Remove-Item $outfile
		}
	
		if (Test-Path $outfilePdf) {
			Remove-Item $outfilePdf
		}

		& "$LibDir\Pandoc\pandoc.exe"  -f markdown_phpextra+raw_html Cover.md -o $coverfile --self-contained	
		& "$LibDir\Pandoc\pandoc.exe"  -f markdown_phpextra+raw_html Footer.md -o $footerfile --self-contained
		& "$LibDir\Pandoc\pandoc.exe"  -f markdown_phpextra+raw_html Header.md -o $headerfile --self-contained
		& "$LibDir\Pandoc\pandoc.exe"  -f markdown_phpextra+raw_html+backtick_code_blocks FintekCodingGuidelines.md -o $outfile --self-contained		
		
		#& "$LibDir\Pandoc\pandoc.exe"  -f html -t html5 --css "$SrcDir\Guidelines\style.css" -V geometry:margin=.1in $outfile -o $outfilePdf --latex-engine=xelatex --variable mainfont="utf8" 
		
		& "$LibDir\Pandoc\wkhtmltopdf.exe" --page-size A4 --disable-smart-shrinking --footer-font-size 8 --margin-top 0 --margin-left 0 --margin-right 0 --margin-bottom 0  $coverfile $coverfilePdf
		& "$LibDir\Pandoc\wkhtmltopdf.exe" --page-size A4 --disable-smart-shrinking --footer-font-size 8 --footer-html $footerfile --header-html $headerfile --margin-top 1in --margin-left 1in --margin-right 1in --margin-bottom 1in $outfile $outfilePdf

		& "$LibDir\gs\bin\gswin64.exe" -dBATCH -dNOPAUSE -dQUIET -dNOPAGEPROMPT -q -sDEVICE=pdfwrite -sOutputFile="$combinedPdf" "$coverfilePdf" "$outfilePdf"

	}
	finally
	{
		Set-Location $PreviousPwd
	}
	
}