
package Aws::StorageGateway::DescribeBandwidthRateLimitOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has AverageDownloadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has AverageUploadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
1;