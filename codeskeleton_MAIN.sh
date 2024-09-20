#!/bin/bash

# ===== Información general =====

# Nombre del script: CodeSkeleton
# Descripción: Script para generar plantillas de código.
# Versión: 0.1
# Autor: mr4h4 // adrianheredev@gmail.com

# Asignar permisos de ejecución al script (descomentar si es necesario)
# chmod +x "$(realpath "$0")"

# === CONFIGURAR ALIAS
ALIAS_NAME="codesk"
SCRIPT_PATH="$(realpath "$0")"
ZSHRC_FILE="$HOME/.zshrc"

# Verifica si el alias ya existe en .zshrc
if ! grep -q "alias $ALIAS_NAME=" "$ZSHRC_FILE"; then
    echo "Adding '$ALIAS_NAME' to $ZSHRC_FILE..."
    echo "" >> "$ZSHRC_FILE"  # Asegura que haya una nueva línea antes de añadir el alias
    echo "alias $ALIAS_NAME='bash \"$SCRIPT_PATH\"'" >> "$ZSHRC_FILE"
    echo "Alias set successfully. Please restart your console or execute 'source ~/.zshrc' to apply the changes."
else
    echo "The alias '$ALIAS_NAME' already exists in the file $ZSHRC_FILE."
fi

echo -e "
----------------------------------------------------------------------------------------------------                                                                                                   
                                                       .              /                          
              .. .                    ..       ....  .#          ,  ..                           
                  .  .#.    .        ,##%%%%%%#%&%%%@@@@%#%&...*,,     .                         
                  /&,//,.     /((%@@@@@@@@@@@@@@@@@@@@@@@@@#%%#%@. ..         .,                 
              .      ,@,....&(@&@@@@@@@@@@@@@@@@@@@@@@@@@(@@@@@&#%#&,     ..         ,           
                       /.%,@@@@/%/(@@@@@@@@@@@@@@@@@@@@@@@%@@@@@%@@@#%# *     *  .               
     .              ..*,*@&@%,@@/@@@@@@@@@@@@@@@@*#@@@@@@@(@@@@@@@@@@%&%,  .                     
      .   .. ,     .(.#@@@@@@@/@@@@@@@@@@@&%%&@&%@@@%.#@@@@#@@@@@@@@#%#(.#. .                    
           ....,...#.%%%@@@@(@@@@@@@@@@@@@@@%@@@@@@@@@@&,*%@@#@@#@@@,(##,.@ # .           (#.    
            . ....((%@@@@@&#@@@@(.@@@(@@@@@@&@@@@@@/&@@*,#@@@@%(@@#&.(###,,@        /#(# .       
                @(@@@@@@@@&,%@@%&%(*@@@@@@&@@@@#/&@@@@@@@@/*/(%(%&(%@@@@@###%/,(/*.(             
             . ,*&@((&@%&/@@@@@@@@&**%@@@@@@@@@&&&&&&&%&&&@@/*..,#%%@@@#@@@%%.../.               
              .&(/%#%%@@#/*@@&@@&&%*,,@@(//###(&@&((#%*//%,(*,,*./(*./*....&,#%&                 
           .,%(/,*#@%&@@@(@@@@@&%#*,..@#./,.................*((@#/(.........../(@/               
         .    .,..&@@@@@@@@@%@%%#%/,(#,(.................../#@@@@@.............,& ,,             
             , #&(@@%@@@*%@@@@@&///.@./#,...............,,*%%&@@#@@#@........**./#      .        
               (,@%@@@@*@@&@@@&(/(/*@./@*(.........,../.,/&,#@@@#(.(.*(.........&%  . ..         
         ....*//*/*(##%@@@&@&@@&(*..%,#@@#,(...##.,.(,*,@%.#@%@@......*,#&&@@&,.&.,              
                ,/*(#/##@##%&(((*...*#@@@@@@@@&@@&@@@@..,..%*@(...*...,,.,*/&&&@&* .             
                 .*(*#@@@/,(#((*(@&@@%&&&@@@@%*#%(/,*##@&@@@*....,/...*,..*(&%%%#/( ,            
          ....//,/.....%##....,#@@@%%#&@@%##&@%,.((#%@@@@@@@@**....,#.......,*(/(,(         .   .
              ....*./&@#*.,.%..,....*%(%%%@(#%(**#/%&%(%#%@*&%@(@@##@#*(//,.*#*.*(**.            
                  /(/..*((,../,.,&(/........,....,#%((**#(@&./#@%%@&/@,***&,                     
           ..  . ...#.,/#&(**/....((.....((*..../(*%,**,*,*&%,.#%#.&@#/#@*@%(                    
                ,.....&,(@@@@&*./*,%....(#*,.....#(##.@#,@&#&&%.@@&,@&((@##@@                    
               .. ..,...,//&@#.*.../&...%%#......*(*%/,(//@@/(&%..@../../. ##.                   
         . ...... .   ,, ,**,....../@#@&##%.............(&.#......../#.//                        
      . ((*..  *       (%,   . /*..*&&%%@%@....................,*/#,*.*%      .                  
         .   (     .        ,  ,*../@#@@@@%*.*##/#..............*.(#,.,&*.           ..          
  , .  .   .   .               ...*.,&*&%%@(.*((@/#@............,/*/*%./    ..      .,           
     ,%                 ..(,.,*,.*.(#%,.*(%@&/@.///@&/.............,.#(&. .,      .              
   #               . .....(*, .        ,*./&#@(#%.%#.&%@,..............(#&    *,                 
.                   ...    .            ../,./%@%%%%@,//.@/#..........,*(*..,.                   
                   .*   .           .  .     (,%&%%%#((.&/#,#&/.........*#%%      /               
                   .           .           ....,..(##//##/.(*&%*%@@%%/.%&/,                      
              .%                           .. ,, (..&%.#(/(/,..(%#/,&%,(*  ,.                    
            ..                             *.       %/@&@@@/(((#/.,....#                         
                                      ./             .*,#@@@&&###,((/*%                          
          .                                              #&(*/(%(&&#        
                          .                                                          *
----------------------------------------------------------------------------------------------------

░█████╗░░█████╗░██████╗░███████╗  ░██████╗██╗░░██╗███████╗██╗░░░░░███████╗████████╗░█████╗░███╗░░██╗
██╔══██╗██╔══██╗██╔══██╗██╔════╝  ██╔════╝██║░██╔╝██╔════╝██║░░░░░██╔════╝╚══██╔══╝██╔══██╗████╗░██║
██║░░╚═╝██║░░██║██║░░██║█████╗░░  ╚█████╗░█████═╝░█████╗░░██║░░░░░█████╗░░░░░██║░░░██║░░██║██╔██╗██║
██║░░██╗██║░░██║██║░░██║██╔══╝░░░  ╚═══██╗██╔═██╗░██╔══╝░░██║░░░░░██╔══╝░░░░░██║░░░██║░░██║██║╚████║
╚█████╔╝╚█████╔╝██████╔╝███████╗  ██████╔╝██║░╚██╗███████╗███████╗███████╗░░░██║░░░╚█████╔╝██║░╚███║
░╚════╝░░╚════╝░╚═════╝░╚══════╝  ╚═════╝░╚═╝░░╚═╝╚══════╝╚══════╝╚══════╝░░░╚═╝░░░░╚════╝░╚═╝░░╚══╝
                                          - Here-Develop -
----------------------------------------------------------------------------------------------------
                                       PLANTILLAS / TEMPLATES:
-(1) Bash        -(4) CSS
-(2) HTML
-(3) Python

----------------------------------------------------------------------------------------------------
"

# ===== Variables globales =====
SCRIPT_PATH="$(realpath "$0")"
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"
extension=".???"
BASHtemplate="$SCRIPT_DIR/templates/BASH-template.txt"
HTMLtemplate="$SCRIPT_DIR/templates/HTML-template.txt"
PYTHONtemplate="$SCRIPT_DIR/templates/PYTHON-template.txt"
CSStemplate="$SCRIPT_DIR/templates/CSS-template.txt"

# Funciones
# Solicitar valor al usuario para la variable $EscogerOpcion
read -p "Select an option >> " EscogerOpcion 

# SELECCIÓN DE LENGUAJE
case $EscogerOpcion in
    0)  # CONFIGURAR DIRECTORIO
        read -p "Set export directory >> (absolute path) " confDirectory
        exportto="$confDirectory"
        ;;
    1)  # BASH
        plantillaSeleccionada="Bash"
        extension=".sh"
        ;;
    2)  # HTML
        plantillaSeleccionada="HTML"
        extension=".html"
        ;;
    3)  # PYTHON
        plantillaSeleccionada="Python"
        extension=".py"
        ;;
    4)  # CSS
        plantillaSeleccionada="CSS"
        extension=".css"
        ;;
    *)
        echo "Invalid Option"
        exit 1
        ;;
esac

# GENERADOR DE ARCHIVOS
plantillaBASH() { # Generar plantilla de Bash.
   echo "You have selected the $plantillaSeleccionada template."
    read -p "Set File Name >> (without extension) " NombreArchivo #Solicitar valor al usuario para la variable $NombreArchivo
    echo "Generating '$NombreArchivo$extension'..."
    cp "$BASHtemplate" "$PWD/$NombreArchivo$extension"
    echo "$NombreArchivo$extension succesfully created."
}

plantillaHTML() { # Generar plantilla de HTML.
    echo "You have selected the $plantillaSeleccionada template."
    read -p "Set File Name >> (without extension) " NombreArchivo #Solicitar valor al usuario para la variable $NombreArchivo
    echo "Generating '$NombreArchivo$extension'..."
    cp "$HTMLtemplate" "$PWD/$NombreArchivo$extension"
    echo "$NombreArchivo$extension succesfully created."
}

plantillaPYTHON() { # Generar plantilla de Python.
     echo "You have selected the $plantillaSeleccionada template."
    read -p "Set File Name >> (without extension) " NombreArchivo #Solicitar valor al usuario para la variable $NombreArchivo
    echo "Generating '$NombreArchivo$extension'..."
    cp "$PYTHONtemplate" "$PWD/$NombreArchivo$extension"
    echo "$NombreArchivo$extension succesfully created."
}
plantillaCSS() { # Generar plantilla de CSS.
     echo "You have selected the $plantillaSeleccionada template."
    read -p "Set File Name >> (without extension) " NombreArchivo #Solicitar valor al usuario para la variable $NombreArchivo
    echo "Generating '$NombreArchivo$extension'..."
    cp "$CSStemplate" "$PWD/$NombreArchivo$extension"
    echo "$NombreArchivo$extension succesfully created."
}


# Asignar plantilla al generador
case "$extension" in
    .sh) plantillaBASH ;;
    .html) plantillaHTML ;;
    .py) plantillaPYTHON ;;
    .css) plantillaCSS ;;
    *) echo "The template could not be assigned correctly." ;;
esac
