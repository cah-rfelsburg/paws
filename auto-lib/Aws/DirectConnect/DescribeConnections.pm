
package Aws::DirectConnect::DescribeConnections {
  use Moose;
  has connectionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DirectConnect::DescribeConnectionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;