# Ejercicio 1
## Requisitos
- Tener instalado Perl
- Tener instalado Bio::SeqIO y Bio::PrimarySeq, para eso

```bash 
    cpanm Bio::SeqIO
```

```bash 
    cpanm Bio::PrimarySeq
```

## Proceso
- Se descargó el gen de la página https://www.ncbi.nlm.nih.gov a partir del cual se realizara el procesamiento para poder obtener la secuencia de aminoacidos.
- Dentro del archivo `Ex1.pm` se encontrara la variable `$file_name` que hace referencia al archivo que se tomará para llevar a cabo la ejecución.
- Una vez modificado el mismo (en el caso de que sea necesario), ejecutar el script con
```bash
    perl Ex1.pm
```
- Tras su ejecución se generará el archivo `protein.fas` en el cual se encontrarán los 6 posibles marcos de lectura de dicho gen.

## Conclusión
- En base a la herramienta ORFfinder y revisando lo que se encuentra en la base de datos de NCBI, se llego a la conclusión, que para este gen en particular, el marco de lectura correcto es `NM_001289000-2F`.