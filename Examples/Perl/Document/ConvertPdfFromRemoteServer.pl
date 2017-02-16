#ExStart:1
use lib 'lib';
use strict;
use warnings;
use utf8;
use File::Slurp; # From CPAN
use JSON;

use AsposeStorageCloud::StorageApi;
use AsposeStorageCloud::ApiClient;
use AsposeStorageCloud::Configuration;

use AsposePdfCloud::PdfApi;
use AsposePdfCloud::ApiClient;
use AsposePdfCloud::Configuration;

my $configFile = '../config/config.json';
my $configPropsText = read_file($configFile);
my $configProps = decode_json($configPropsText);
my $data_path = '../../../Data/';
my $out_path = $configProps->{'out_folder'};

$AsposePdfCloud::Configuration::app_sid = $configProps->{'app_sid'};
$AsposePdfCloud::Configuration::api_key = $configProps->{'api_key'};
$AsposePdfCloud::Configuration::debug = 1;

$AsposeStorageCloud::Configuration::app_sid = $configProps->{'app_sid'};
$AsposeStorageCloud::Configuration::api_key = $configProps->{'api_key'};

# Instantiate Aspose.Storage and Aspose.Pdf API SDK
my $storageApi = AsposeStorageCloud::StorageApi->new();
my $pdfApi = AsposePdfCloud::PdfApi->new();

# Set input file name
my $filename = '123';
my $name = $filename . '.pdf';
my $format = "tiff";
my $url = "https://github.com/farooqsheikhpk/Aspose_Pdf_Cloud/raw/master/SDKs/Aspose.Pdf_Cloud_SDK_for_Java/src/test/resources/" . $name;


# Invoke Aspose.Pdf Cloud SDK API to convert PDF to TIFF using remote hosted pdf                                           
my $response = $pdfApi->PutConvertDocument(url=>$url, format=> $format);

if($response->{'Status'} eq 'OK'){
	# Save converted format file from response
    my $output_file = $out_path. $filename . '.' . $format;
	write_file($output_file, { binmode => ":raw" }, $response->{'Content'});
}
#ExEnd:1