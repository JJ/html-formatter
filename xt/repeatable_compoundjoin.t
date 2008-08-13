use strict;
use warnings;
use Test::More tests => 2;
use HTML::FormFu;
my $form = HTML::FormFu->new;
$form->load_config_file('xt/repeatable_compoundjoin.yml');
$form->process(
	{
		"nested.end_1.enddate" => 1,
		"nested.end_1.endtime" => 1,
		"nested.test_1" => 1,
		counter => 1,
	}
);
ok( $form->submitted_and_valid );
unless ( $form->submitted_and_valid ) {
	for ( @{ $form->get_errors } ) {
		print $_->name . ": " . $_->message . $/;
	}
}
is( $form->param_value('end'), '1 1' );