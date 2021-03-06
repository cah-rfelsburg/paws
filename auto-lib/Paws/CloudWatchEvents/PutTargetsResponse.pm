
package Paws::CloudWatchEvents::PutTargetsResponse;
  use Moose;
  has FailedEntries => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::PutTargetsResultEntry]');
  has FailedEntryCount => (is => 'ro', isa => 'Int');


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutTargetsResponse

=head1 ATTRIBUTES


=head2 FailedEntries => ArrayRef[L<Paws::CloudWatchEvents::PutTargetsResultEntry>]

An array of failed target entries.



=head2 FailedEntryCount => Int

The number of failed entries.




=cut

1;