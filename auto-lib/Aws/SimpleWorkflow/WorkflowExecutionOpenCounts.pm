package Aws::SimpleWorkflow::WorkflowExecutionOpenCounts {
  use Moose;
  with ('AWS::API::ResultParser');
  has openActivityTasks => (is => 'ro', isa => 'Int', required => 1);
  has openChildWorkflowExecutions => (is => 'ro', isa => 'Int', required => 1);
  has openDecisionTasks => (is => 'ro', isa => 'Int', required => 1);
  has openTimers => (is => 'ro', isa => 'Int', required => 1);
}
1