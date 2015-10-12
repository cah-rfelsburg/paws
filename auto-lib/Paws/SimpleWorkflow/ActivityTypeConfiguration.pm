package Paws::SimpleWorkflow::ActivityTypeConfiguration;
  use Moose;
  has defaultTaskHeartbeatTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList');
  has defaultTaskPriority => (is => 'ro', isa => 'Str');
  has defaultTaskScheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskScheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTypeConfiguration

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ActivityTypeConfiguration object:

  $service_obj->Method(Att1 => { defaultTaskHeartbeatTimeout => $value, ..., defaultTaskStartToCloseTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ActivityTypeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->defaultTaskHeartbeatTimeout

=head1 ATTRIBUTES

=head2 defaultTaskHeartbeatTimeout => Str

  I<Optional.> The default maximum time, in seconds, before which a
worker processing a task must report progress by calling
RecordActivityTaskHeartbeat.

You can specify this value only when I<registering> an activity type.
The registered default value can be overridden when you schedule a task
through the C<ScheduleActivityTask> decision. If the activity worker
subsequently attempts to record a heartbeat or returns a result, the
activity worker receives an C<UnknownResource> fault. In this case,
Amazon SWF no longer considers the activity task to be valid; the
activity worker should clean up the activity task.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.

=head2 defaultTaskList => Paws::SimpleWorkflow::TaskList

  I<Optional.> The default task list specified for this activity type at
registration. This default is used if a task list is not provided when
a task is scheduled through the C<ScheduleActivityTask> decision. You
can override the default registered task list when scheduling a task
through the C<ScheduleActivityTask> decision.

=head2 defaultTaskPriority => Str

  I<Optional.> The default task priority for tasks of this activity type,
specified at registration. If not set, then "0" will be used as the
default priority. This default can be overridden when scheduling an
activity task.

Valid values are integers that range from Java's C<Integer.MIN_VALUE>
(-2147483648) to C<Integer.MAX_VALUE> (2147483647). Higher numbers
indicate higher priority.

For more information about setting task priority, see Setting Task
Priority in the I<Amazon Simple Workflow Developer Guide>.

=head2 defaultTaskScheduleToCloseTimeout => Str

  I<Optional.> The default maximum duration, specified when registering
the activity type, for tasks of this activity type. You can override
this default when scheduling a task through the C<ScheduleActivityTask>
decision.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.

=head2 defaultTaskScheduleToStartTimeout => Str

  I<Optional.> The default maximum duration, specified when registering
the activity type, that a task of an activity type can wait before
being assigned to a worker. You can override this default when
scheduling a task through the C<ScheduleActivityTask> decision.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.

=head2 defaultTaskStartToCloseTimeout => Str

  I<Optional.> The default maximum duration for tasks of an activity type
specified when registering the activity type. You can override this
default when scheduling a task through the C<ScheduleActivityTask>
decision.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

