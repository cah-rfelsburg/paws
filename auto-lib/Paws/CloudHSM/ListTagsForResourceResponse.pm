
package Paws::CloudHSM::ListTagsForResourceResponse;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::CloudHSM::Tag]', required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagList => ArrayRef[L<Paws::CloudHSM::Tag>]

One or more tags.




=cut

1;