package Game::Element::Role::Element;

use Modern::Perl "2018";
use Moo::Role;
use MooX::Role qw(LvalueAttribute);
use Types::Standard qw(Int Str);

use Game::Util qw(generate_id);

has "id" => (
	is => "ro",
	isa => Str,
	default => sub { generate_id },
);

has "position" => (
	is => "rw",
	isa => Int,
	lvalue => 1,
);

sub end_of_turn
{
	# By default, do nothing
}

1;

