# Ejercicio 5

## Requisitos

-   Tener instalado EMBOSS, para el mismo (en caso de encontrarse en Ubuntu como SO):

```
    sudo apt-get install emboss
```

-   Tener descargado la secuencia de nucleotidos en formato FASTA del **Ejercicio 1**

## Instrucciones

-   Ejecutar

```
    transeq TMPRSS6.fas -frame 6
```

-   El proceso nos va a guardar el archivo tmprss6.pep que en este caso contendra los seis marcos de lectura posible para la secuencia elegida
-   Ejecutar

```
    prosextract
```

-   Este comando nos va a posibilitar utilizar las bases descargadas de la página de [Prosite](https://prosite.expasy.org/prosuser.html)
-   Ejecutar

```
    patmatmotifs TMPRSS6.fas
```

-   Este comando nos va a permitir generar un archivo patmatmotifs que contendrá los distintos hits obtenidos con la longitud de los mismos.

## Conclusiones

-   En base a la ejecución del primer comando, pudimos obtener los seis marcos de lectura correspondientes a nuestra secuencia. Cabe destacar que los mismos coinciden con los obtenidos en el **Ejercicio 1**, por lo cual concluimos que la ejecución fue exitosa.
-   En base a la ejecución del último comando pudimos obtener una cantida de hits de 83, donde el hit de mayor longitud fue de 59.
