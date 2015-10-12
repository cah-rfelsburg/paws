package Paws::RedShift::HsmClientCertificate;
  use Moose;
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmClientCertificatePublicKey => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::HsmClientCertificate

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::HsmClientCertificate object:

  $service_obj->Method(Att1 => { HsmClientCertificateIdentifier => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::HsmClientCertificate object:

  $result = $service_obj->Method(...);
  $result->Att1->HsmClientCertificateIdentifier

=head1 ATTRIBUTES

=head2 HsmClientCertificateIdentifier => Str

  The identifier of the HSM client certificate.

=head2 HsmClientCertificatePublicKey => Str

  The public key that the Amazon Redshift cluster will use to connect to
the HSM. You must register the public key in the HSM.

=head2 Tags => ArrayRef[Paws::RedShift::Tag]

  The list of tags for the HSM client certificate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

