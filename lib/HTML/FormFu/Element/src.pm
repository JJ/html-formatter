package HTML::FormFu::Element::src;

use strict;
use warnings;
use base 'HTML::FormFu::Element::block';

sub new {
    my $self = shift->SUPER::new(@_);

    $self->tag(undef);

    return $self;
}

1;

__END__

=head1 NAME

HTML::FormFu::Element::src

=head1 DESCRIPTION

Allows you to add markup directly into the form, without surrounding 
C<< <div> </div> >> tags.

=head1 SEE ALSO

Is a sub-class of, and inherits methods from L<HTML::FormFu::Element::block>, 
L<HTML::FormFu::Element>

L<HTML::FormFu::FormFu>

=head1 AUTHOR

Carl Franks, C<cfranks@cpan.org>

=head1 LICENSE

This library is free software, you can redistribute it and/or modify it under
the same terms as Perl itself.