package Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes;
  use Moose;
  has externalInitiatedEventId => (is => 'ro', isa => 'Int');
  has externalWorkflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution');
  has input => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes object:

  $service_obj->Method(Att1 => { externalInitiatedEventId => $value, ..., signalName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->externalInitiatedEventId

=head1 ATTRIBUTES

=head2 externalInitiatedEventId => Int

  The ID of the C<SignalExternalWorkflowExecutionInitiated> event
corresponding to the C<SignalExternalWorkflow> decision to signal this
workflow execution.The source event with this ID can be found in the
history of the source workflow execution. This information can be
useful for diagnosing problems by tracing back the chain of events
leading up to this event. This field is set only if the signal was
initiated by another workflow execution.

=head2 externalWorkflowExecution => Paws::SimpleWorkflow::WorkflowExecution

  The workflow execution that sent the signal. This is set only of the
signal was sent by another workflow execution.

=head2 input => Str

  Inputs provided with the signal (if any). The decider can use the
signal name and inputs to determine how to process the signal.

=head2 B<REQUIRED> signalName => Str

  The name of the signal received. The decider can use the signal name
and inputs to determine how to the process the signal.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

