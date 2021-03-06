
package Paws::IAM::SimulateCustomPolicy;
  use Moose;
  has ActionNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has CallerArn => (is => 'ro', isa => 'Str');
  has ContextEntries => (is => 'ro', isa => 'ArrayRef[Paws::IAM::ContextEntry]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PolicyInputList => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str]');
  has ResourceHandlingOption => (is => 'ro', isa => 'Str');
  has ResourceOwner => (is => 'ro', isa => 'Str');
  has ResourcePolicy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SimulateCustomPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::SimulatePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SimulateCustomPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::SimulateCustomPolicy - Arguments for method SimulateCustomPolicy on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method SimulateCustomPolicy on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method SimulateCustomPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SimulateCustomPolicy.

As an example:

  $service_obj->SimulateCustomPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionNames => ArrayRef[Str]

A list of names of API actions to evaluate in the simulation. Each
action is evaluated against each resource. Each action must include the
service identifier, such as C<iam:CreateUser>.



=head2 CallerArn => Str

The ARN of the user that you want to use as the simulated caller of the
APIs. C<CallerArn> is required if you include a C<ResourcePolicy> so
that the policy's C<Principal> element has a value to use in evaluating
the policy.

You can specify only the ARN of an IAM user. You cannot specify the ARN
of an assumed role, federated user, or a service principal.



=head2 ContextEntries => ArrayRef[L<Paws::IAM::ContextEntry>]

A list of context keys and corresponding values for the simulation to
use. Whenever a context key is evaluated by a C<Condition> element in
one of the simulated IAM permission policies, the corresponding value
is supplied.



=head2 Marker => Str

Use this parameter only when paginating results and only after you
receive a response indicating that the results are truncated. Set it to
the value of the C<Marker> element in the response that you received to
indicate where the next call should start.



=head2 MaxItems => Int

Use this only when paginating results to indicate the maximum number of
items you want in the response. If additional items exist beyond the
maximum you specify, the C<IsTruncated> response element is C<true>.

This parameter is optional. If you do not include it, it defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the C<IsTruncated> response element
returns C<true> and C<Marker> contains a value to include in the
subsequent call that tells the service where to continue from.



=head2 B<REQUIRED> PolicyInputList => ArrayRef[Str]

A list of policy documents to include in the simulation. Each document
is specified as a string containing the complete, valid JSON text of an
IAM policy. Do not include any resource-based policies in this
parameter. Any resource-based policy must be submitted with the
C<ResourcePolicy> parameter. The policies cannot be "scope-down"
policies, such as you could include in a call to GetFederationToken or
one of the AssumeRole APIs to restrict what a user can do while using
the temporary credentials.



=head2 ResourceArns => ArrayRef[Str]

A list of ARNs of AWS resources to include in the simulation. If this
parameter is not provided then the value defaults to C<*> (all
resources). Each API in the C<ActionNames> parameter is evaluated for
each resource in this list. The simulation determines the access result
(allowed or denied) of each combination and reports it in the response.

The simulation does not automatically retrieve policies for the
specified resources. If you want to include a resource policy in the
simulation, then you must include the policy as a string in the
C<ResourcePolicy> parameter.

If you include a C<ResourcePolicy>, then it must be applicable to all
of the resources included in the simulation or you receive an invalid
input error.



=head2 ResourceHandlingOption => Str

Specifies the type of simulation to run. Different APIs that support
resource-based policies require different combinations of resources. By
specifying the type of simulation to run, you enable the policy
simulator to enforce the presence of the required resources to ensure
reliable simulation results. If your simulation does not match one of
the following scenarios, then you can omit this parameter. The
following list shows each of the supported scenario values and the
resources that you must define to run the simulation.

Each of the EC2 scenarios requires that you specify instance, image,
and security-group resources. If your scenario includes an EBS volume,
then you must specify that volume as a resource. If the EC2 scenario
includes VPC, then you must supply the network-interface resource. If
it includes an IP subnet, then you must specify the subnet resource.
For more information on the EC2 scenario options, see Supported
Platforms in the I<AWS EC2 User Guide>.

=over

=item *

B<EC2-Classic-InstanceStore>

instance, image, security-group

=item *

B<EC2-Classic-EBS>

instance, image, security-group, volume

=item *

B<EC2-VPC-InstanceStore>

instance, image, security-group, network-interface

=item *

B<EC2-VPC-InstanceStore-Subnet>

instance, image, security-group, network-interface, subnet

=item *

B<EC2-VPC-EBS>

instance, image, security-group, network-interface, volume

=item *

B<EC2-VPC-EBS-Subnet>

instance, image, security-group, network-interface, subnet, volume

=back




=head2 ResourceOwner => Str

An AWS account ID that specifies the owner of any simulated resource
that does not identify its owner in the resource ARN, such as an S3
bucket or object. If C<ResourceOwner> is specified, it is also used as
the account owner of any C<ResourcePolicy> included in the simulation.
If the C<ResourceOwner> parameter is not specified, then the owner of
the resources and the resource policy defaults to the account of the
identity provided in C<CallerArn>. This parameter is required only if
you specify a resource-based policy and account that owns the resource
is different from the account that owns the simulated calling user
C<CallerArn>.



=head2 ResourcePolicy => Str

A resource-based policy to include in the simulation provided as a
string. Each resource in the simulation is treated as if it had this
policy attached. You can include only one resource-based policy in a
simulation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SimulateCustomPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

