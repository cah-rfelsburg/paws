package Paws::RedShift::IPRange {
  use Moose;
  has CIDRIP => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1;