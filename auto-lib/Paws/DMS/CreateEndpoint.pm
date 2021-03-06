
package Paws::DMS::CreateEndpoint;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str');
  has EndpointIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has EndpointType => (is => 'ro', isa => 'Str', required => 1);
  has EngineName => (is => 'ro', isa => 'Str', required => 1);
  has ExtraConnectionAttributes => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has Port => (is => 'ro', isa => 'Int', required => 1);
  has ServerName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');
  has Username => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::CreateEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateEndpoint - Arguments for method CreateEndpoint on Paws::DMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEndpoint on the 
AWS Database Migration Service service. Use the attributes of this class
as arguments to method CreateEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEndpoint.

As an example:

  $service_obj->CreateEndpoint(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DatabaseName => Str

The name of the endpoint database.



=head2 B<REQUIRED> EndpointIdentifier => Str

The database endpoint identifier. Identifiers must begin with a letter;
must contain only ASCII letters, digits, and hyphens; and must not end
with a hyphen or contain two consecutive hyphens.



=head2 B<REQUIRED> EndpointType => Str

The type of endpoint.

Valid values are: C<"source">, C<"target">

=head2 B<REQUIRED> EngineName => Str

The type of engine for the endpoint. Valid values include MYSQL,
ORACLE, POSTGRES, MARIADB, AURORA, SQLSERVER.



=head2 ExtraConnectionAttributes => Str

Additional attributes associated with the connection.



=head2 KmsKeyId => Str

The KMS key identifier that will be used to encrypt the connection
parameters. If you do not specify a value for the KmsKeyId parameter,
then AWS DMS will use your default encryption key. AWS KMS creates the
default encryption key for your AWS account. Your AWS account has a
different default encryption key for each AWS region.



=head2 B<REQUIRED> Password => Str

The password to be used to login to the endpoint database.



=head2 B<REQUIRED> Port => Int

The port used by the endpoint database.



=head2 B<REQUIRED> ServerName => Str

The name of the server where the endpoint database resides.



=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

Tags to be added to the endpoint.



=head2 B<REQUIRED> Username => Str

The user name to be used to login to the endpoint database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEndpoint in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

