
#!/usr/bin/perl
use strict;
use Getopt::Long;

# setup my defaults
my $data   		= "file.dat";
my $term     	= '';
my $email_from 	= '';
my $email_to 	= '';
my $help     	=  0;

GetOptions(
    't=s'    => \$term,
    'f=s' 	 => \$email_from,
    'r=s' 	 => \$email_to,
    'help!'  => \$help,
) or die "\n\n\n\nperl $data -h para mas ayuda\n\n\n\n";

if( $help ) {
    print "\n\n\n\nLos parametros van de la siguente manera:\n \$ perl $data -t <termino> -f <emisor_de_correo> -r <receptor_de_correo>\n\n\n\n";
} else {
   print "\n\n\n\nPrograma = $data\nTermino = $term\nEmisor = $email_from\nReceptor = $email_to\n\n\n\n";
}