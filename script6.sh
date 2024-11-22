menu(){
    echo "Menu interactivo Bash"
    echo "1. Crear archivo"
    echo "2. realizar commit"
    echo "3. Ver estado del repositorio"
    echo "4. Crear rama" 
    echo "5. Cambiar de rama"
    echo "6. Subir cambios"
    echo "7. Salir"
}

Crear_archivo(){
    read -p "Escriba el archivo a crear (Junto a su extencion): " archivo
    touch $archivo
}
Commit(){
    read -p "¿Realizar 1 commit o a todos?(1.Solo uno 2.Todos): " opc
    if $opc = 1; then
        git init
        read -p "Ingrese el nombre del archivo a realizar commit: " archivo1
        git add $archivo1
        read -p "Ingrese el commit: " commit1
        git commit -m $commit1
        echo "Commit realizado con exito"
    elif opc = 2; then
        git init
        git add .
        read -p "Ingrese el commit: " commit2
        git commit -m $commit2
        echo "Commit realizado con exito"
    else
        echo "Opcion no valida"
    fi
}
Estado(){
    git status
    read -p "¿Desea realizar git pull?(1.Si 2.No): " opc2
    if $opc2 = 1; then
        git pull
        echo "pull realizado exitosamente"
    elif $opc2 = 2; then
        echo "No se realizara pull"
    else
        echo "Opcion no valida"
    fi
}
Crear_Rama(){
    read -p "Ingrese el nombre de la rama: " rama
    git branch $rama
    git push origin $rama
    echo "Rama creada exitosamente"
}
Cambiar_Rama(){
    git branch
    read -p "Seleccione la rama a cual cambiarse: " rama2
    git switch $rama2
}
Subir_Cambios(){
    
}

while true; do
    menu
    read -p "Seleccione una opcion: " opcion
    case $opcion in
        1)
            Crear_archivo
        ;;
        2)

        ;;
        3)

        ;;
        4)

        ;;
        5)

        ;;
        6)

        ;;
        7)

        ;;

        *)
    esac
done