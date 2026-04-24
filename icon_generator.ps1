# ============================================================
# SETTINGS
# ============================================================

$inputFolderName  = "originais"   # Folder containing the original PNG files
$outputFolderName = "exportadas"  # Folder where resized images will be saved
$resizeFilter     = "Mitchell"    # ImageMagick resize filter

# ============================================================

$scriptFolder = Split-Path -Parent $MyInvocation.MyCommand.Path
$inputFolder  = Join-Path $scriptFolder $inputFolderName
$outputFolder = Join-Path $scriptFolder $outputFolderName

# Creates the output folder if it doesn't exist
if (!(Test-Path -Path $outputFolder)) {
    New-Item -ItemType Directory -Path $outputFolder | Out-Null
}

# Exits if the input folder is not found
if (!(Test-Path -Path $inputFolder)) {
    Write-Host "Folder '$inputFolderName' not found. Create it and place your PNG files inside."
    exit
}

# Target resolutions
$resolucoes = @(
    @{ nome = "icon-2048x1152"; altura = 1152 },
    @{ nome = "icon-1024x576";  altura = 576  },
    @{ nome = "icon-512x288";   altura = 288  },
    @{ nome = "icon-256x144";   altura = 144  },
    @{ nome = "icon-128x72";    altura = 72   }
)

# Processes each PNG file in the input folder
Get-ChildItem -Path $inputFolder -Filter *.png | ForEach-Object {
    $imagem   = $_.FullName
    $nomeBase = [System.IO.Path]::GetFileNameWithoutExtension($_.Name)

    foreach ($res in $resolucoes) {
        $altura    = $res.altura
        $nomeSaida = "$nomeBase-$($res.nome).png"
        $saida     = Join-Path $outputFolder $nomeSaida

        # Trims the image, resizes by height and saves as PNG
        magick "$imagem" -trim +repage -filter $resizeFilter -resize x${altura} "$saida"

        Write-Host "Done: $saida"
    }
}

Write-Host ""
Write-Host "All images processed."
Pause
