if git branch --list test > /dev/null; then
    echo "La rama ya existe"
    echo "Cambiando a la rama..."
    git switch test
else
    git switch -c test
    echo "Rama creada con éxito"
fi
