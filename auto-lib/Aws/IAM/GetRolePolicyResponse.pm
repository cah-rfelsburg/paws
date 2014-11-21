
package Aws::IAM::GetRolePolicyResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

}
1;