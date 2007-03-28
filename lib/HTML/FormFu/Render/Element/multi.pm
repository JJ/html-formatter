package HTML::FormFu::Render::Element::multi;

use strict;
use warnings;
use base 'HTML::FormFu::Render::Element::block';

sub errors {
    my ($self) = @_;
    
    my @errors = 
        map { $_->{errors} ? @{ $_->{errors} } : () } 
        grep { $_->{is_field} } 
        @{ $self->elements };
    
    return \@errors;
}

sub label_tag {
    my ($self) = @_;

    return $self->output( $self->{label_filename} );
}

sub field_tag {
    my ($self) = @_;

    return $self->output( $self->{field_filename} );
}

1;
