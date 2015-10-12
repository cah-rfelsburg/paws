package Paws::Support::TrustedAdvisorResourcesSummary;
  use Moose;
  has resourcesFlagged => (is => 'ro', isa => 'Int', required => 1);
  has resourcesIgnored => (is => 'ro', isa => 'Int', required => 1);
  has resourcesProcessed => (is => 'ro', isa => 'Int', required => 1);
  has resourcesSuppressed => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::TrustedAdvisorResourcesSummary

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::TrustedAdvisorResourcesSummary object:

  $service_obj->Method(Att1 => { resourcesFlagged => $value, ..., resourcesSuppressed => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::TrustedAdvisorResourcesSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->resourcesFlagged

=head1 ATTRIBUTES

=head2 B<REQUIRED> resourcesFlagged => Int

  The number of AWS resources that were flagged (listed) by the Trusted
Advisor check.

=head2 B<REQUIRED> resourcesIgnored => Int

  The number of AWS resources ignored by Trusted Advisor because
information was unavailable.

=head2 B<REQUIRED> resourcesProcessed => Int

  The number of AWS resources that were analyzed by the Trusted Advisor
check.

=head2 B<REQUIRED> resourcesSuppressed => Int

  The number of AWS resources ignored by Trusted Advisor because they
were marked as suppressed by the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

