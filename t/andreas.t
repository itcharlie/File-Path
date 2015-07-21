# perl
use strict;
use warnings;
use 5.10.1;
#use Data::Dumper;$Data::Dumper::Indent=1;
use Carp;
#use lib (
#    '/home/jkeenan/gitwork/File-Path/blib/lib',
#);
use Test::More;
use File::Path();

note("Currently running File::Path $File::Path::VERSION");
my $rv = File::Path::rmtree("tmp-$$");
pass("File::Path::rmtree reports removing $rv directories -- but some of those attempted may never have existed");
done_testing();

