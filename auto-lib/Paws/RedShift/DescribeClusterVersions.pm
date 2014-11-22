
package Paws::RedShift::DescribeClusterVersions {
  use Moose;
  has ClusterParameterGroupFamily => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ClusterVersionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterVersionsResult');
}
1;