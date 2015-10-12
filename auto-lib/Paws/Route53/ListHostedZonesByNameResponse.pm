
package Paws::Route53::ListHostedZonesByNameResponse;
  use Moose;
  has DNSName => (is => 'ro', isa => 'Str');
  has HostedZoneId => (is => 'ro', isa => 'Str');
  has HostedZones => (is => 'ro', isa => 'ArrayRef[Paws::Route53::HostedZone]', traits => ['Unwrapped'], xmlname => 'HostedZone', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextDNSName => (is => 'ro', isa => 'Str');
  has NextHostedZoneId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53:: - Arguments for method  on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method  on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method .

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to .

As an example:

  $service_obj->(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 DNSName => Str

  The C<DNSName> value sent in the request.

=head2 HostedZoneId => Str

  The C<HostedZoneId> value sent in the request.

=head2 B<REQUIRED> HostedZones => ArrayRef[Paws::Route53::HostedZone]

  A complex type that contains information about the hosted zones
associated with the current AWS account.

=head2 B<REQUIRED> IsTruncated => Bool

  A flag indicating whether there are more hosted zones to be listed. If
your results were truncated, you can make a follow-up request for the
next page of results by using the C<NextDNSName> and
C<NextHostedZoneId> elements.

Valid Values: C<true> | C<false>

=head2 B<REQUIRED> MaxItems => Str

  The maximum number of hosted zones to be included in the response body.
If the number of hosted zones associated with this AWS account exceeds
C<MaxItems>, the value of ListHostedZonesByNameResponse$IsTruncated in
the response is C<true>. Call C<ListHostedZonesByName> again and
specify the value of ListHostedZonesByNameResponse$NextDNSName and
ListHostedZonesByNameResponse$NextHostedZoneId elements respectively to
get the next page of results.

=head2 NextDNSName => Str

  If ListHostedZonesByNameResponse$IsTruncated is C<true>, there are more
hosted zones associated with the current AWS account. To get the next
page of results, make another request to C<ListHostedZonesByName>.
Specify the value of ListHostedZonesByNameResponse$NextDNSName in the
ListHostedZonesByNameRequest$DNSName element and
ListHostedZonesByNameResponse$NextHostedZoneId in the
ListHostedZonesByNameRequest$HostedZoneId element.

=head2 NextHostedZoneId => Str

  If ListHostedZonesByNameResponse$IsTruncated is C<true>, there are more
hosted zones associated with the current AWS account. To get the next
page of results, make another request to C<ListHostedZonesByName>.
Specify the value of ListHostedZonesByNameResponse$NextDNSName in the
ListHostedZonesByNameRequest$DNSName element and
ListHostedZonesByNameResponse$NextHostedZoneId in the
ListHostedZonesByNameRequest$HostedZoneId element.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method  in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

