if [ -d "proyecto" ]; then
    echo "Carpeta ya existente"
else
    mkdir proyecto
    cd proyecto
    git init
    touch README.md
    git add README.md
    git commit -m "proyecto iniciado"
fi

