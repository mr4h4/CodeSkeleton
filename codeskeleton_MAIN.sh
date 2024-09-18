#!/bin/bash

# ===== Información general =====

# Nombre del script: CodeSkeleton
# Descripción: 
# Versión: 0.1
# Autor: Here-Develop // adrianheredev@gmail.com


## ===== Inicio =====
#Asignación de permisos
chmod +rwx "$0"
#===CONFIGURAR ALIAS
ALIAS_NAME="codesk"
SCRIPT_PATH="$(realpath "$0")"
ZSHRC_FILE="$HOME/.zshrc"

# Verifica si el alias ya existe en .zshrc
if ! grep -q "alias $ALIAS_NAME=" "$ZSHRC_FILE"; then #Uso de grep en modo silencioso (-q)
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
                                               CONFIG
-(0) Set export directory 'CodeSkeleton/codesk/' by default)
----------------------------------------------------------------------------------------------------
                                       PLANTILLAS / TEMPLATES:
-(1) Bash
-(2) HTML
-(3) Python

----------------------------------------------------------------------------------------------------
"
# ===== Variables globales =====
extension=".???"
exportto="$XDG_DESKTOP_DIR"
BASHtemplate="templates/BASH-template.txt"
HTMLtemplate="templates/HTML-template.txt"
PYTHONtemplate="templates/PYTHON-template.txt"


# Definir colores para el output


# ===== Funciones =====
#Solicitar valor al usuario para la variable $EscogerOpcion
read -p "Select an option >> " EscogerOpcion 


#SELECCIÓN DE LENGUAJE
if [ $EscogerOpcion -eq 0 ]; then #CONFIGURAR DIRECTORIO
    read -p "Set export directory >> (absolut path)" confDirectory
    exportto=$confDirectory
elif [ $EscogerOpcion -eq 1 ]; then #BASH
    plantillaSeleccionada="Bash"
    extension=".sh"

elif [ $EscogerOpcion -eq 2 ]; then #HTML
    plantillaSeleccionada="HTML"
    extension=".html"

elif [ $EscogerOpcion -eq 3 ]; then #PYTHON
    plantillaSeleccionada="Python"
    extension=".py"

else
    echo "Invalid Option"
    exit 1
fi

#GENERADOR DE ARCHIVOS
plantillaBASH() { #Generar plantilla de Bash.
    echo "You have selected the $plantillaSeleccionada template."
    read -p "Set File Name >> (without extension) " NombreArchivo #Solicitar valor al usuario para la variable $NombreArchivo
    echo "Generating '$NombreArchivo$extension'..."
    mkdir -p "$exportto/codesk"
    cp "$BASHtemplate" "$exportto/codesk/$NombreArchivo$extension"
    echo "$NombreArchivo.sh succesfully created."
}
plantillaHTML() { #Generar plantilla de HTML.
    echo "You have selected the $plantillaSeleccionada template."
    read -p "Set File Name >> (without extension) " NombreArchivo #Solicitar valor al usuario para la variable $NombreArchivo
    echo "Generating '$NombreArchivo$extension'..."
    mkdir -p "$exportto/codesk"
    cp "$HTMLtemplate" "$exportto/codesk/$NombreArchivo$extension"
    echo "$NombreArchivo.html succesfully created."
}
plantillaPYTHON() { #Generar plantilla de Python.
    echo "You have selected the $plantillaSeleccionada template."
    read -p "Set File Name >> (without extension) " NombreArchivo #Solicitar valor al usuario para la variable $NombreArchivo
    echo "Generating '$NombreArchivo.$extension'..."
    mkdir -p "$exportto/codesk"
    cp "$PYTHONtemplate" "$exportto/codesk/$NombreArchivo$extension"
    echo "$NombreArchivo.$extension succesfully created."
}
# Asignar plantilla al generador
if [ "$extension" == ".sh" ]; then
    plantillaBASH
elif [ "$extension" == ".html" ]; then
    plantillaHTML
elif [ "$extension" == ".py" ]; then
    plantillaPYTHON
else
    echo "The template could not be assigned correctly."
fi

# Función para mostrar mensajes de log


# Función de ayuda


# Función de error


# Función principal


# ===== Ejecución =====
# Verifica si el script ha sido ejecutado directamente (no "sourced), y llama a la función main.

#if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
#    main "$@"
#fi

