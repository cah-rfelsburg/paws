package Paws::CodeCommit::UserInfo;
  use Moose;
  has Date => (is => 'ro', isa => 'Str', xmlname => 'date', request_name => 'date', traits => ['Unwrapped','NameInRequest']);
  has Email => (is => 'ro', isa => 'Str', xmlname => 'email', request_name => 'email', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UserInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::UserInfo object:

  $service_obj->Method(Att1 => { Date => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::UserInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Date

=head1 DESCRIPTION

Information about the user who made a specified commit.

=head1 ATTRIBUTES


=head2 Date => Str

  The date when the specified commit was pushed to the repository.


=head2 Email => Str

  The email address associated with the user who made the commit, if any.


=head2 Name => Str

  The name of the user who made the specified commit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

