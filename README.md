# rFactor2-IconGenerator

#### BR
Script PowerShell para redimensionar ícones de carros do rFactor 2 em todas as resoluções necessárias usando o ImageMagick.

## Requisitos
- [ImageMagick](https://imagemagick.org/script/download.php) instalado e disponível no PATH

## Estrutura de pastas
```
sua-pasta/
├── icon_generator.bat
├── icon_generator.ps1
├── originais/           ← coloque seus arquivos PNG aqui
│   ├── carro_a.png
│   └── carro_b.png
└── exportadas/          ← criada automaticamente
```

## Configurações (opcional)
Abra o `icon_generator.ps1` e edite a seção no topo:

```powershell
$inputFolderName  = "originais"   # Pasta com os arquivos PNG originais
$outputFolderName = "exportadas"  # Pasta onde as imagens redimensionadas serão salvas
$resizeFilter     = "Mitchell"    # Filtro de redimensionamento do ImageMagick
```

## Como usar
1. Coloque seus arquivos PNG dentro da pasta `originais`
2. Dê dois cliques em `icon_generator.bat`
3. As imagens redimensionadas serão salvas automaticamente na pasta `exportadas`

## Como preparar a imagem base
1. Vá na Oficina da Steam e se inscreva no **SHOWROOM ICON CARSET FOR RFACTOR 2 UI** de Lucas Clezar: https://steamcommunity.com/sharedfiles/filedetails/?id=2447692715 (ou outro de sua preferência);
2. No rFactor 2, em Settings, selecione o showroom **icone_side**;
3. Configure a maior resolução possível (de preferência 2560x1440) e utilize o modo Fullscreen
4. No rFactor 2, configure um botão diferente de F12 para Screenshot — não use F12 nem o mesmo botão da Steam, pois a imagem não será gerada corretamente;
5. Carregue a pintura do carro desejado:
   - 5.1. Selecione um carro e clique em Customize;
   - 5.2. Vá em Create Skin Folder e coloque os arquivos da sua pintura na pasta criada;
   - 5.3. Clique em Reload Skin.
6. Clique no botão que remove a cor de fundo;
7. Faça a screenshot com o botão configurado — o arquivo será salvo em `UserData\Screenshots`;
8. Vá até a pasta de Screenshots e renomeie o arquivo seguindo a convenção de nomenclatura do seu skinpack;
9. Execute o script — ele irá gerar um arquivo por resolução usando o seu nome de arquivo como base, seguindo o padrão `seunome-icon-WWWWxHHH.png`.

## Resoluções geradas
Cada imagem de entrada gera 5 arquivos:

| Arquivo | Resolução |
|---------|-----------|
| icon-2048x1152 | 2048 x 1152 |
| icon-1024x576  | 1024 x 576  |
| icon-512x288   | 512 x 288   |
| icon-256x144   | 256 x 144   |
| icon-128x72    | 128 x 72    |

## Observações
- Apenas arquivos `.png` são processados;
- Os arquivos originais nunca são modificados;
- O filtro `Mitchell` produz resultados nítidos e de alta qualidade para esse tipo de imagem.

## Changelog

### v1.0.0
- Lançamento inicial;
- Redimensionamento em lote de arquivos PNG em todas as resoluções de ícone exigidas pelo rFactor 2;
- Remoção automática do fundo usando o trim do ImageMagick;
- Nomes das pastas de entrada/saída e filtro de redimensionamento configuráveis;
- Arquivos gerados seguem a convenção de nomenclatura de ícones do rFactor 2.

---

#### US
A PowerShell script to batch resize car icons for rFactor 2 into all required resolutions using ImageMagick.

## Requirements

- Windows
- [ImageMagick](https://imagemagick.org/download/#windows) installed and available in PATH

## Folder structure
```
your-folder/
├── icon_generator.bat
├── icon_generator.ps1
├── originais/           ← place your PNG files here
│   ├── car_a.png
│   └── car_b.png
└── exportadas/          ← created automatically
```

## Settings (optional)
Open `icon_generator.ps1` and edit the top section (if you need):

```powershell
$inputFolderName  = "originais"   # Folder containing the original PNG files
$outputFolderName = "exportadas"  # Folder where resized images will be saved
$resizeFilter     = "Mitchell"    # ImageMagick resize filter
```

## How to use
1. Place your PNG files inside the `originais` folder;
2. Double-click `icon_generator.bat`;
3. The resized images will be saved automatically in the `exportadas` folder.

## How to prepare the source image
1. Go to the Steam Workshop and subscribe to **SHOWROOM ICON CARSET FOR RFACTOR 2 UI** by Lucas Clezar: https://steamcommunity.com/sharedfiles/filedetails/?id=2447692715 (or another of your preference);
2. In rFactor 2, go to Settings and select the showroom **icone_side**;
3. Set the highest resolution possible (preferably 2560x1440) and use Fullscreen mode;
4. In rFactor 2, assign a different key for Screenshot — do not use F12 or the same key as Steam, otherwise the image will not be generated correctly;
5. Load the car livery:
   - 5.1. Select a car and click Customize;
   - 5.2. Go to Create Skin Folder and place your livery files in the created folder;
   - 5.3. Click Reload Skin.
6. Click the button that removes the background color;
7. Take the screenshot using the key you configured — the file will be saved to `UserData\Screenshots`;
8. Go to the Screenshots folder and rename the file following your skinpack naming convention;
9. Run the script — it will generate one file per resolution using your filename as the base, following the pattern `yourfilename-icon-WWWWxHHH.png`.

## Output resolutions
Each input image generates 5 files:

| File | Resolution |
|------|------------|
| icon-2048x1152 | 2048 x 1152 |
| icon-1024x576  | 1024 x 576  |
| icon-512x288   | 512 x 288   |
| icon-256x144   | 256 x 144   |
| icon-128x72    | 128 x 72    |

## Notes
- Only `.png` files are processed;
- The original files are never modified;
- The `Mitchell` filter produces sharp, high-quality results for this type of image.

## Changelog

### v1.0.0
- Initial release;
- Batch resizing of PNG files into all required rFactor 2 icon resolutions;
- Automatic background removal using ImageMagick trim;
- Configurable input/output folder names and resize filter;
- Generated files follow the rFactor 2 icon naming convention.
