package Paws::DMS::ReplicationInstance;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has InstanceCreateTime => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has PendingModifiedValues => (is => 'ro', isa => 'Paws::DMS::ReplicationPendingModifiedValues');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has ReplicationInstanceArn => (is => 'ro', isa => 'Str');
  has ReplicationInstanceClass => (is => 'ro', isa => 'Str');
  has ReplicationInstanceIdentifier => (is => 'ro', isa => 'Str');
  has ReplicationInstancePrivateIpAddress => (is => 'ro', isa => 'Str');
  has ReplicationInstancePublicIpAddress => (is => 'ro', isa => 'Str');
  has ReplicationInstanceStatus => (is => 'ro', isa => 'Str');
  has ReplicationSubnetGroup => (is => 'ro', isa => 'Paws::DMS::ReplicationSubnetGroup');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ReplicationInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::ReplicationInstance object:

  $service_obj->Method(Att1 => { AllocatedStorage => $value, ..., ReplicationSubnetGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::ReplicationInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedStorage

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

  The amount of storage (in gigabytes) that is allocated for the
replication instance.


=head2 AutoMinorVersionUpgrade => Bool

  Boolean value indicating if minor version upgrades will be
automatically applied to the instance.


=head2 AvailabilityZone => Str

  The Availability Zone for the instance.


=head2 EngineVersion => Str

  The engine version number of the replication instance.


=head2 InstanceCreateTime => Str

  The time the replication instance was created.


=head2 KmsKeyId => Str

  The KMS key identifier that is used to encrypt the content on the
replication instance. If you do not specify a value for the KmsKeyId
parameter, then AWS DMS will use your default encryption key. AWS KMS
creates the default encryption key for your AWS account. Your AWS
account has a different default encryption key for each AWS region.


=head2 PendingModifiedValues => L<Paws::DMS::ReplicationPendingModifiedValues>

  The pending modification values.


=head2 PreferredMaintenanceWindow => Str

  The maintenance window times for the replication instance.


=head2 PubliclyAccessible => Bool

  Specifies the accessibility options for the replication instance. A
value of C<true> represents an instance with a public IP address. A
value of C<false> represents an instance with a private IP address. The
default value is C<true>.


=head2 ReplicationInstanceArn => Str

  The Amazon Resource Name (ARN) of the replication instance.


=head2 ReplicationInstanceClass => Str

  The compute and memory capacity of the replication instance.

Valid Values: C<dms.t2.micro | dms.t2.small | dms.t2.medium |
dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
dms.c4.4xlarge>


=head2 ReplicationInstanceIdentifier => Str

  The replication instance identifier. This parameter is stored as a
lowercase string.

Constraints:

=over

=item * Must contain from 1 to 63 alphanumeric characters or hyphens.

=item * First character must be a letter.

=item * Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<myrepinstance>


=head2 ReplicationInstancePrivateIpAddress => Str

  The private IP address of the replication instance.


=head2 ReplicationInstancePublicIpAddress => Str

  The public IP address of the replication instance.


=head2 ReplicationInstanceStatus => Str

  The status of the replication instance.


=head2 ReplicationSubnetGroup => L<Paws::DMS::ReplicationSubnetGroup>

  The subnet group for the replication instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
