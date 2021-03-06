package Paws::IoTData;
  warn "Paws::IoTData is not stable / supported / entirely developed";
  use Moose;
  sub service { 'data.iot' }
  sub version { '2015-05-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub DeleteThingShadow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTData::DeleteThingShadow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetThingShadow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTData::GetThingShadow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Publish {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTData::Publish', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateThingShadow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTData::UpdateThingShadow', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { qw/DeleteThingShadow GetThingShadow Publish UpdateThingShadow / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData - Perl Interface to AWS AWS IoT Data Plane

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTData');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS IoT

AWS IoT-Data enables secure, bi-directional communication between
Internet-connected things (such as sensors, actuators, embedded
devices, or smart appliances) and the AWS cloud. It implements a broker
for applications and things to publish messages over HTTP (Publish) and
retrieve, update, and delete thing shadows. A thing shadow is a
persistent representation of your things and their state in the AWS
cloud.

=head1 METHODS

=head2 DeleteThingShadow(ThingName => Str)

Each argument is described in detail in: L<Paws::IoTData::DeleteThingShadow>

Returns: a L<Paws::IoTData::DeleteThingShadowResponse> instance

  Deletes the thing shadow for the specified thing.

For more information, see DeleteThingShadow in the I<AWS IoT Developer
Guide>.


=head2 GetThingShadow(ThingName => Str)

Each argument is described in detail in: L<Paws::IoTData::GetThingShadow>

Returns: a L<Paws::IoTData::GetThingShadowResponse> instance

  Gets the thing shadow for the specified thing.

For more information, see GetThingShadow in the I<AWS IoT Developer
Guide>.


=head2 Publish(Topic => Str, [Payload => Str, Qos => Int])

Each argument is described in detail in: L<Paws::IoTData::Publish>

Returns: nothing

  Publishes state information.

For more information, see HTTP Protocol in the I<AWS IoT Developer
Guide>.


=head2 UpdateThingShadow(Payload => Str, ThingName => Str)

Each argument is described in detail in: L<Paws::IoTData::UpdateThingShadow>

Returns: a L<Paws::IoTData::UpdateThingShadowResponse> instance

  Updates the thing shadow for the specified thing.

For more information, see UpdateThingShadow in the I<AWS IoT Developer
Guide>.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

