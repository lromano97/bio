# Ejercicio 1
## Requisitos
- Tener instalado Perl
- Tener instalado Bio::SeqIO y Bio::Tools::Run::StandAloneBlastPlus, para eso

```bash 
    cpanm Bio::SeqIO
```

```bash 
    cpanm Bio::Tools::Run::StandAloneBlastPlus
```

## Proceso
- Una vez que se obtuvo el resultado de la traducción del gen del punto anterior a su secuencia de aminoacidos, se procede a llevar a cabo el blast del mismo.
- Dentro del archivo `Ex2.pm` se encontrara la variable `$file_name` que hace referencia al archivo que se tomará para llevar a cabo la ejecución.
- Una vez modificado el mismo (en el caso de que sea necesario), ejecutar el script con
```bash
    perl Ex1.pm
```
- Tras su ejecución se generará el archivo `blast.out` en el cual se encontrarán el resultado del blast de la secuencia de aminoacidos en base a sus 6 marcos de lectura.

## Conclusión
