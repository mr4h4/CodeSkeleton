# CodeSkeleton / codesk - by Here-Develop                             

## 📜 Guía de Instalación / Installation Guide

1. **Clonar este repositorio
   Clone this repository**
```bash
git clone https://github.com/Here-Develop/CodeSkeleton.git
```
2. **Ejecutar el script de configuración con 'sudo'**(solo la primera vez)
   **Run the setup script with 'sudo'**(only the first time)

```bash
sudo bash codeskeleton_MAIN.sh
```
Volver a ejecutar, esta vez **sin sudo** (una vez por usuario)
"Run again, this time **without sudo** (once per user)"

```bash
bash codeskeleton_MAIN.sh
```
**A partir de ahora,** podrás usar el comando **codesk** para ejecutar el script.
**From now**, you can use the **codesk** command to run the script.

---

🛠️ **Solución de Errores / Troubleshooting**

- **Fallo al ejecutar codesk: / Error running codesk:**

Si ves un mensaje como: **bash: /home/./././CodeSkeleton/codeskeleton_MAIN.sh: No such file or directory**, es probable que hayas movido el directorio CodeSkeleton. 

If you see a message like: **bash: /home/./././CodeSkeleton/codeskeleton_MAIN.sh: No such file or directory**, it's likely that you moved the CodeSkeleton directory.

**Solución / Solution:**
            Abre el archivo .zshrc / Open the .zshrc file:
```bash
nano ~/.zshrc
```
Elimina el alias codesk y guarda el archivo. 
Delete the codesk alias and save the file.

Re-ejecuta el script de configuración para restablecer el alias. 
Re-run the setup script to reset the alias.


