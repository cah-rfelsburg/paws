package Paws::CodePipeline::ActionTypeId;
  use Moose;
  has category => (is => 'ro', isa => 'Str', required => 1);
  has owner => (is => 'ro', isa => 'Str', required => 1);
  has provider => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionTypeId

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionTypeId object:

  $service_obj->Method(Att1 => { category => $value, ..., version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionTypeId object:

  $result = $service_obj->Method(...);
  $result->Att1->category

=head1 ATTRIBUTES

=head2 B<REQUIRED> category => Str

  A category defines what kind of action can be taken in the stage, and
constrains the provider type for the action. Valid categories are
limited to one of the values below.

=head2 B<REQUIRED> owner => Str

  The creator of the action being called.

=head2 B<REQUIRED> provider => Str

  The provider of the service being called by the action. Valid providers
are determined by the action category. For example, an action in the
Deploy category type might have a provider of AWS CodeDeploy, which
would be specified as CodeDeploy.

=head2 B<REQUIRED> version => Str

  A string that identifies the action type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

