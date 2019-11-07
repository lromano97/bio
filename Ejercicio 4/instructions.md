# Ejercicio 4

## Requisitos

-   Tener instalado Perl
-   Tener instalado Bio::SeqIO, Bio::DB::GenPept y Bio::SearchIO, para eso

```bash
    cpanm Bio::SeqIO
```

```bash
    cpanm Bio::DB::GenPept
```

```bash
    cpanm Bio::DB::SearchIO
```

## Proceso

-   Tomamos el archivo blast generado en el **Ejercicio 2** llamado `blast.out`
-   Entramos a el archivo `Ex4.pm` y donde se encuentra la variable `$pattern` ingresamos el patrón con el cual queremos realizar un hit sobre la descripción del archivo del primer punto.
-   Ejecutamos el script con el siguiente comando:

```
   perl Ex4.pm
```

-   Como resultado se obtendrán las distintas secuencias pertenecientes a los hits (las mismas se guardarán en la misma carpeta desde donde se ejecutó el archivo)
