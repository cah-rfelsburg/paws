package Paws::GameLift::FleetUtilization;
  use Moose;
  has ActiveGameSessionCount => (is => 'ro', isa => 'Int');
  has CurrentPlayerSessionCount => (is => 'ro', isa => 'Int');
  has FleetId => (is => 'ro', isa => 'Str');
  has MaximumPlayerSessionCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::FleetUtilization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::FleetUtilization object:

  $service_obj->Method(Att1 => { ActiveGameSessionCount => $value, ..., MaximumPlayerSessionCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::FleetUtilization object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveGameSessionCount

=head1 DESCRIPTION

Current status of fleet utilization, including the number of game and
player sessions being hosted.

=head1 ATTRIBUTES


=head2 ActiveGameSessionCount => Int

  Number of active game sessions currently being hosted on fleet game
servers.


=head2 CurrentPlayerSessionCount => Int

  Number of active player sessions currently being hosted on fleet game
servers.


=head2 FleetId => Str

  Unique identifier for a fleet.


=head2 MaximumPlayerSessionCount => Int

  Maximum players allowed across all game sessions currently hosted in
the fleet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

