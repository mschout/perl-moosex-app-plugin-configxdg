package MooseX::App::Plugin::ConfigXDG;
$MooseX::App::Plugin::ConfigXDG::VERSION = '0.01';
# ABSTRACT: Config files in XDG config directories

use 5.010;
use utf8;

use namespace::autoclean;
use Moose::Role;
with qw(MooseX::App::Plugin::Config);

sub plugin_metaroles {
    my ($self, $class) = @_;

    return {
        class => [
            'MooseX::App::Plugin::Config::Meta::Class',
            'MooseX::App::Plugin::ConfigXDG::Meta::Class'
        ]
    };
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

MooseX::App::Plugin::ConfigXDG - Config files in XDG config directories

=head1 VERSION

version 0.01

=head1 AUTHOR

Michael Schout <mschout@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2019 by Michael Schout.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut