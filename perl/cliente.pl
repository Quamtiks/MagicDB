#!/usr/bin/perl -w
# Scrip escrito por Gustavo Gonzalez y Kenneth Arias, para el curso IC-4302 Bases de datos II 
# del Instituto Tecnologico de Costa Rica.

# La funcionalidad del scrip es --------

# Reconocimiento a Uriel Lizama 
# por su guia ubicada en http://perlenespanol.com/tutoriales/cgi/envio_de_datos_a_documentos_post_o_get.html

use strict;
use warnings;
use Getopt::Long;
use HTTP::Request;
use LWP::UserAgent;
use CGI::Carp qw(fatalsToBrowser);


# setup 
my $term = '';		#termino de la busqueda
my $email_from = '';	#email del remitente
my $email_to = ''; #email del receptor
my $help =  0;	#setup del comando help
my $url = "https://www.wikileaks.org/hackingteam/emails/"; #url de la pagina a consultar
my $ua = LWP::UserAgent->new; #setup del User Agent

$ua->agent("Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)"); 
$ua->cookie_jar( {} ); 
$ua->protocols_allowed( [ 'http','https'] ); 
$ua->proxy(['http', 'https']);

GetOptions(
    't=s'    => \$term,
    'f=s' 	 => \$email_from,
    'r=s' 	 => \$email_to,
    'help!'  => \$help,
) or die "\nperl cliente.pl -h para mas ayuda\n"; #en caso de tener los parametros mal escritos

if( $help ) {
    #uso del comando help
    print "\nUso: \$ perl cliente.pl [argumentos]\n";
    print "\t-t [arg]\tnombre del termino de la busqueda\n";
    print "\t-f [arg]\temail del remitente a buscar\n";
    print "\t-r [arg]\temail del receptor a buscar\n";
    print "\t-h --help\tmenu de ayuda\n\n";
} else {

	my $query = " q=$term &mfrom=$email_from &mto=$email_to"; #terminos de la busqueda CGI
	my $req = HTTP::Request->new(POST => $url);	#request de la busqueda usando el metodo POST
	$req->content_type('application/x-www-form-urlencoded'); #tipo de datos que estamos enviando (no codificados)
	$req->content($query);

	my $response = $ua->request($req);
	my $content = $response->content(); #contenido de la respuesta

  	print "Content-type: text/html\n\n";
	print $content;
}

#END OF SCRIPT