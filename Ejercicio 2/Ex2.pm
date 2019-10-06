use Bio::SeqIO;
use Bio::Tools::Run::StandAloneBlastPlus;

# Archivo del cual se va a tomar la proteina para poder llevar a cabo el blast de la misma
$file_name = 'protein.fas';

# Genero el blast object que va a llevar a cabo el blast, el parametro remote me va a indicar si el mismo se ejecuta de manera local o remota.
$blast_obj = Bio::Tools::Run::StandAloneBlastPlus->new(-db_name => 'swissprot', -remote => 1);

# En base al archivo que contiene la proteina voy a ejecutar el blast y su resultado sera volcado en el archivo blast.out
$blast_result = $blast_obj->blastp(-query => $file_name, -outfile => 'blast.out');
$blast_obj-cleanup;