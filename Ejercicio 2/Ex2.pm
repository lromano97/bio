use Bio::SeqIO;
use Bio::Tools::Run::StandAloneBlastPlus;

# Archivo del cual se va a tomar la proteina para poder llevar a cabo el blast de la misma
$file_name = 'protein.fas';

# Genero el blast object que va a llevar a cabo el blast para el mismo se utilizo la base swissprot que se encuentra de manera remota
$blast_obj = Bio::Tools::Run::StandAloneBlastPlus->new(-db_name => 'swissprot', -remote => 1);

# Opción de ejecutarlo de manera local
# Debe especificarse el path donde se encentra descargada la versión de la base de datos. 
# El parametro create configurado en 1 permitira crear la misma
# $blast_obj = Bio::Tools::Run::StandAloneBlastPlus->new(-db_name=>'my_db', -db_path=>'path where the database is saved', -create=>1)

# En base al archivo que contiene la proteina voy a ejecutar el blast y su resultado sera volcado en el archivo blast.out
$blast_result = $blast_obj->blastp(-query => $file_name, -outfile => 'blast.out');
$blast_obj->cleanup;
