
package Paws::DS::DescribeEventTopicsResult;
  use Moose;
  has EventTopics => (is => 'ro', isa => 'ArrayRef[Paws::DS::EventTopic]');


### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeEventTopicsResult

=head1 ATTRIBUTES


=head2 EventTopics => ArrayRef[L<Paws::DS::EventTopic>]

A list of SNS topic names that receive status messages from the
specified Directory ID.




=cut

1;