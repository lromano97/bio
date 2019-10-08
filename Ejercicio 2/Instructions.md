# Ejercicio 1

## Requisitos

-   Tener instalado Perl
-   Tener instalado Bio::SeqIO y Bio::Tools::Run::StandAloneBlastPlus, para eso

```bash
    cpanm Bio::SeqIO
```

```bash
    cpanm Bio::Tools::Run::StandAloneBlastPlus
```

## Proceso

-   Una vez que se obtuvo el resultado de la traducción del gen del punto anterior a su secuencia de aminoacidos, se procede a llevar a cabo el blast del mismo.
-   Dentro del archivo `Ex2.pm` se encontrara la variable `$file_name` que hace referencia al archivo que se tomará para llevar a cabo la ejecución.
-   Una vez modificado el mismo (en el caso de que sea necesario), ejecutar el script con

```bash
    perl Ex1.pm
```

-   Tras su ejecución se generará el archivo `blast.out` en el cual se encontrarán el resultado del blast de la secuencia de aminoacidos en base a sus 6 marcos de lectura.

## Conclusión

-   Como resultado de la ejecución del Blast sobre la cadena de aminoacidos, se puede notar como la primer secuencia que aparece en el listado es la utilizada en el ejercicio 1 ([Q8IU80](https://www.ncbi.nlm.nih.gov/protein/Q8IU80)), por lo que se puede decir que el proceso se ejecuto de manera correcta.

| Score     | Identities | Positives | Expect | Gaps |
| :---: | :---: | :---: | :---: | :---: |
| 1635 bits | 801/824 | 801/824 | 0 | 22/824 |

- El __identities__ representan la cantidad de aminoacidos que coinciden de manera perfecta entre ambas secuencias. Se puede decir que se obtuvo un porcentaje alto en cuanto a este parametro,lo cual es un buen indicio.
- Los __positives__ representan, similar a identities, la cantidad de aminoacidos que coinciden de manera exacta, pero también aquellos que tienen características quimicas similares. El número coincide con el caso de identities, pero de igual forma es un buen indicio de resultado.
- Los __gaps__ representan aquellos aminoacidos que no coinciden entre ambas secuencias. En nuestro caso hubo 22 casos en los cuales no puso matchear los aminoacidos con la cadena suministrada.
- El __expect__ representa que tan alta es la posibilidad de que la coincidencia sea por casualidad. En este caso es 0, por lo que no es coincidencia de que las secuencias coincidan.
