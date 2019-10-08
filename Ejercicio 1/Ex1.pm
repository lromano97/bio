use Bio::SeqIO;
use Bio::PrimarySeq;

$file_name = 'sequence.gb';

# Leo del archivo sequence.gb la secuencia del gen
$seqio_obj = Bio::SeqIO->new(-file=> $file_name, -format=> 'genbank');

$prot_obj = Bio::SeqIO->new(-file => '>protein.fas', -format=>'fasta');

#Itero sobre cada secuencia que se encuentra en el archivo recibido como input para poder llevar a cabo la traduccion a cadenas de aminoacidos
while ($ind_seq = $seqio_obj->next_seq) {
    # Chequeo que la secuencia a traducir sea correcta, de no ser así se aborta el loop, terminando el proceso.
    if($ind_seq->validate_seq($ind_seq->seq)) {
        # Traduzco la secuencia en base a los 6 marcos de lectura posibles con la función translate_6frames, los mismos van a ser almacenados en el array proteins
        @proteins = Bio::SeqUtils->translate_6frames($ind_seq);
        # Volcado de la secuencia al archivo de salida
        $prot_obj->write_seq(@proteins);
        # Obtenemos el marco de lectura correcto a partir de la siguiente funcion
        #$correct_frame = $ind_seq->translate(-orf=>3, -complete=>1, -start=> 'atg', -throw=>1);
        #print $correct_frame->seq;
    } else {
        # En el caso de que el resultado de la validación de que es una secuencia invalida se aborta el procesamiento del mismo.
        die 'La secuencia leida es invalida';
    }
}
