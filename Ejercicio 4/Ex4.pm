use Bio::SearchIO;
use Bio::DB::GenPept;
use Bio::SeqIO;

# Leo el archivo en formato blast generado en el ejercicio 2
$input_file = Bio::SearchIO->new(
    -file => "./blast.out",
    -format => 'blast'
    );

$db_genbank = Bio::DB::GenPept->new;

# Ingreso el patrón a buscar dentro del archivo
$pattern = "16";

$result = $input_file->next_result;
$coincidences = 0;
while ($hit = $result->next_hit) {
    #  Se itera sobre el contenido del archivo _blast_ utilizando el metodo next_hit, el cual permite leer las secuencias de salida de archivos de este tipo.
    $description = $hit->description;
    #  En base a esto, se va a comparar el patrón señalado previamente con lo obtenido de la lectura. 
    # En el caso de generar un match, se toma el accession de dicho hit y se obtiene la secuencia desde la base para poder volcarla a un archivo formato FASTA
    if (index($description, $pattern) != -1) {
        $accession = $hit->accession;
        $seq = $db_genbank->get_Seq_by_version($accession);
        $accession_file = ( 'fasta' => Bio::SeqIO->new(
                        -file   => ">$accession.fas",
                        -format => 'fasta',
                    ),
                );
        $accession_file->write_seq($seq);
        $coincidences++;
    }
}
print "Coincidencias: $coincidences", "\n" ;
