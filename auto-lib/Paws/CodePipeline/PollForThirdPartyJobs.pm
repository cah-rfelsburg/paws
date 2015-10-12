
package Paws::CodePipeline::PollForThirdPartyJobs;
  use Moose;
  has actionTypeId => (is => 'ro', isa => 'Paws::CodePipeline::ActionTypeId', required => 1);
  has maxBatchSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PollForThirdPartyJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::PollForThirdPartyJobsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PollForThirdPartyJobs - Arguments for method PollForThirdPartyJobs on Paws::CodePipeline

=head1 DESCRIPTION

This class represents the parameters used for calling the method PollForThirdPartyJobs on the 
AWS CodePipeline service. Use the attributes of this class
as arguments to method PollForThirdPartyJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PollForThirdPartyJobs.

As an example:

  $service_obj->PollForThirdPartyJobs(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> actionTypeId => Paws::CodePipeline::ActionTypeId

  

=head2 maxBatchSize => Int

  The maximum number of jobs to return in a poll for jobs call.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PollForThirdPartyJobs in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

