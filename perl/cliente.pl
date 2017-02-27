#!/usr/bin/perl -w
use strict;
use warnings;
use Getopt::Long;
use CGI::Carp qw(fatalsToBrowser);
use LWP::UserAgent;
use HTTP::Request;

# setup my defaults
my $term     	= '';
my $email_from 	= '';
my $email_to 	= '';
my $help     	=  0;

my $url = "https://www.wikileaks.org/hackingteam/emails/";
my $ua = LWP::UserAgent->new;
$ua->agent("Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt)");
$ua->cookie_jar( {} ); 
$ua->protocols_allowed( [ 'http','https'] );
$ua->proxy(['http', 'https']);

GetOptions(
    't=s'    => \$term,
    'f=s' 	 => \$email_from,
    'r=s' 	 => \$email_to,
    'help!'  => \$help,
) or die "\n\n\n\nperl cliente.pl -h para mas ayuda\n\n\n\n";


my $query = " q=$term &mfrom=$email_from &mto=$email_to"; 



my $req = HTTP::Request->new(POST => $url);
$req->content_type('application/x-www-form-urlencoded');
$req->content($query);

my $response = $ua->request($req);
my $content = $response->content(); #contenido de la respuesta


if( $help ) {
    print "\n\n\n\nLos parametros van de la siguente manera:\n \$ perl cliente.pl -t <termino> -f <emisor_de_correo> -r <receptor_de_correo>\n\n\n\n";
} else {
  	print "Content-type: text/html\n\n";
	print $content;
}

#END OF SCRIPT