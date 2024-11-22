menu(){
    echo "Menu interactivo Bash"
    echo "1. Crear archivo"
    echo "2. realizar commit"
    echo "3. Ver estado del repositorio"
    echo "4. Crear rama"
    echo "5. Eliminar rama" 
    echo "6. Cambiar de rama"
    echo "7. Subir cambios"
    echo "8. Salir"
}

Crear_archivo(){
    read -p "Escriba el archivo a crear (Junto a su extencion): " archivo
    touch $archivo
}
Commit(){
    read -p "¿Realizar 1 commit o a todos?(1.Solo uno 2.Todos): " opc
    if [ "$opc" -eq 1 ]; then
        git init
        read -p "Ingrese el nombre del archivo a realizar commit: " archivo1
        git add $archivo1
        read -p "Ingrese el commit: " commit1
        git commit -m $commit1
        echo "Commit realizado con exito"
    elif [ "$opc" -eq 2 ]; then
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
    if [ "$opc2" -eq 1 ]; then
        git pull
        echo "pull realizado exitosamente"
    elif [ "$opc2" -eq 2 ]; then
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
Eliminar_Rama(){
    read -p "Ingrese el nombre de la rama a eliminar: " rama4
    git branch -D $rama4
    echo "Rama eliminada exitosamente"
}
Cambiar_Rama(){
    git branch
    read -p "Seleccione la rama a cual cambiarse: " rama2
    git switch $rama2
}
Subir_Cambios(){
    read -p "Seleccione,1. Subir rapido(Solo sube a Main)/2. Subir rama especifica: " opc3
    if [ "$opc3" -eq 1 ]; then
        git add .
        git push origin main
        echo "Cambios subidos exitosamente"
    elif [ "$opc3" -eq 2 ]; then
        read -p "Ingrese el nombre de la rama: " rama3
        git push origin $rama3
        echo "Cambios subidos exitosamente"
    fi
}

while true; do
    menu
    read -p "Seleccione una opcion: " opcion
    case $opcion in
        1)
            Crear_archivo
        ;;
        2)
            Commit
        ;;
        3)
            Estado
        ;;
        4)
            Crear_Rama
        ;;
        5)
            Eliminar_Rama
        ;;
        6)
            Cambiar_Rama
        ;;
        7)
            Subir_Cambios
        ;;
        8)
            echo "Saliendo del programa"
            exit 0
        ;;
        *)
            echo "Opcion no valida"
        ;;
    esac
done