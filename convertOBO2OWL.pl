#!/usr/bin/perl

use OBO::Parser::OBOParser;
use strict;

my $my_parser = OBO::Parser::OBOParser->new();

my $o = $my_parser->work($ARGV[0]);

# export to OWL: gene_ontology.owl
open (FH, ">" . $ARGV[1]);
$o->export('owl', \*FH, \*STDERR, 'http://www.cellcycleontology.org/ontology/owl/', 'http://www.cellcycleontology.org/formats/oboInOwl#');
close FH;
