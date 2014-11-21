
package Aws::CodeDeploy::CreateDeploymentConfig {
  use Moose;
  has deploymentConfigName => (is => 'ro', isa => 'Str', required => 1);
  has minimumHealthyHosts => (is => 'ro', isa => 'Aws::CodeDeploy::MinimumHealthyHosts');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeploymentConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CodeDeploy::CreateDeploymentConfigOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;