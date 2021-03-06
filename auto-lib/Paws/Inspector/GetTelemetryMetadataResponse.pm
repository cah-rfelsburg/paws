
package Paws::Inspector::GetTelemetryMetadataResponse;
  use Moose;
  has TelemetryMetadata => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::TelemetryMetadata]', traits => ['Unwrapped'], xmlname => 'telemetryMetadata' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::GetTelemetryMetadataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TelemetryMetadata => ArrayRef[L<Paws::Inspector::TelemetryMetadata>]

Telemetry details.




=cut

1;