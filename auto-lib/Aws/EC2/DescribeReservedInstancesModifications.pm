
package Aws::EC2::DescribeReservedInstancesModifications {
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has NextToken => (is => 'ro', isa => 'Str');
  has ReservedInstancesModificationIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReservedInstancesModificationId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesModifications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeReservedInstancesModificationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;