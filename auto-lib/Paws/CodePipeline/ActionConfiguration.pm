package Paws::CodePipeline::ActionConfiguration;
  use Moose;
  has configuration => (is => 'ro', isa => 'Paws::CodePipeline::ActionConfigurationMap');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionConfiguration

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionConfiguration object:

  $service_obj->Method(Att1 => { configuration => $value, ..., configuration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->configuration

=head1 ATTRIBUTES

=head2 configuration => Paws::CodePipeline::ActionConfigurationMap

  The configuration data for the action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

