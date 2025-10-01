#!/bin/bash



if [ -z "$1" ]; then
	echo "[fatal error] Debe indicar como argumento el nombre del archivo a descomprimir"
	exit 1
fi

function getCompressNameFile() {

	echo $1 | awk '$NF{print $NF}'
}

function extractNextFileName() {

	gzipNameFile=$(getCompressNameFile "$infoFile")

	if [ -z "$gzipNameFile" ]; then
		return 1
	fi

	return 0
}

function decompress() {

	typeFile=$(file "$1" | awk '$NF{print $NF}')
	if [ $typeFile != "text" ]; then

		echo "[info] Descomprimiendo el archivo $1"
		infoFile=$(7z l "$1" | tail -n 3 | head -n 1)

		if extractNextFileName "$infoFile"; then
			7z x "$1" &>/dev/null
		fi

		return 0

	else
		return 1	
	fi
}

function validateGZipContent() {

	fileDescription=$(file $1)
	if echo $fileDescription | grep -q -w "gzip"; then
		echo "[info] El contenido del archivo $1 corresponde a un archivo gzip"

	else
		echo "[error] El contenido del archivo $originalFile no corresponde a un archivo gzip"
		echo "[info] Eliminando archivo $gzipNameFile creado al intentar convertir $originalFile a binario"
		rm -f $gzipNameFile &>/dev/null
		exit 2
	fi
}

function reverseHex() {

	echo "[info] Conviertiendo archivo $1 de hexadecimal a binario"
	echo "[info] Creando archivo $gzipNameFile para almacenar contenido binario"
	cat $1 | xxd -r > $gzipNameFile

	validateGZipContent $gzipNameFile
}

##############################

gzipNameFile="data.gz"
originalFile=$1

reverseHex $originalFile
previousNameFile=$gzipNameFile
while decompress "$gzipNameFile"; do

	echo "[info] Archivo $previousNameFile descomprimido"	
	previousNameFile=$gzipNameFile

done

echo "[info] El archivo $gzipNameFile" contiene texto. Extrayedo texto.
echo -e "\nFlag: $(cat $gzipNameFile | awk 'NF{print $NF}')\n" 

echo "[info] Limpiando archivos generados"
rm -f *.bin
rm -f {data2,data6,data.gz}
