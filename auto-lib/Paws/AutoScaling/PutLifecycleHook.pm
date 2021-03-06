
package Paws::AutoScaling::PutLifecycleHook;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DefaultResult => (is => 'ro', isa => 'Str');
  has HeartbeatTimeout => (is => 'ro', isa => 'Int');
  has LifecycleHookName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleTransition => (is => 'ro', isa => 'Str');
  has NotificationMetadata => (is => 'ro', isa => 'Str');
  has NotificationTargetARN => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLifecycleHook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::PutLifecycleHookAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutLifecycleHookResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::PutLifecycleHook - Arguments for method PutLifecycleHook on Paws::AutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLifecycleHook on the 
Auto Scaling service. Use the attributes of this class
as arguments to method PutLifecycleHook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLifecycleHook.

As an example:

  $service_obj->PutLifecycleHook(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group to which you want to assign the
lifecycle hook.



=head2 DefaultResult => Str

Defines the action the Auto Scaling group should take when the
lifecycle hook timeout elapses or if an unexpected failure occurs. This
parameter can be either C<CONTINUE> or C<ABANDON>. The default value is
C<ABANDON>.



=head2 HeartbeatTimeout => Int

The amount of time, in seconds, that can elapse before the lifecycle
hook times out. When the lifecycle hook times out, Auto Scaling
performs the default action. You can prevent the lifecycle hook from
timing out by calling RecordLifecycleActionHeartbeat. The default is
3600 seconds (1 hour).



=head2 B<REQUIRED> LifecycleHookName => Str

The name of the lifecycle hook.



=head2 LifecycleTransition => Str

The instance state to which you want to attach the lifecycle hook. For
a list of lifecycle hook types, see DescribeLifecycleHookTypes.

This parameter is required for new lifecycle hooks, but optional when
updating existing hooks.



=head2 NotificationMetadata => Str

Contains additional information that you want to include any time Auto
Scaling sends a message to the notification target.



=head2 NotificationTargetARN => Str

The ARN of the notification target that Auto Scaling will use to notify
you when an instance is in the transition state for the lifecycle hook.
This target can be either an SQS queue or an SNS topic. If you specify
an empty string, this overrides the current ARN.

The notification messages sent to the target include the following
information:

=over

=item * B<AutoScalingGroupName>. The name of the Auto Scaling group.

=item * B<AccountId>. The AWS account ID.

=item * B<LifecycleTransition>. The lifecycle hook type.

=item * B<LifecycleActionToken>. The lifecycle action token.

=item * B<EC2InstanceId>. The EC2 instance ID.

=item * B<LifecycleHookName>. The name of the lifecycle hook.

=item * B<NotificationMetadata>. User-defined information.

=back

This operation uses the JSON format when sending notifications to an
Amazon SQS queue, and an email key/value pair format when sending
notifications to an Amazon SNS topic.

When you specify a notification target, Auto Scaling sends it a test
message. Test messages contains the following additional key/value
pair: C<"Event": "autoscaling:TEST_NOTIFICATION">.



=head2 RoleARN => Str

The ARN of the IAM role that allows the Auto Scaling group to publish
to the specified notification target.

This parameter is required for new lifecycle hooks, but optional when
updating existing hooks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLifecycleHook in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

