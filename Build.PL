use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'App::LegendaryFlavor',
    license             => 'perl',
    dist_author         => 'Legendary Warriors of days past',
    dist_abstract       => 'Add some legendary flavors to your terminal',
    dist_version        => '0.01',
    include_dirs        => '',
    build_requires => {
    },
    configure_requires => { 'Module::Build' => 0.38 },
    requires => {
        'JSON::Any'           => 0,
        'Lingua::EN::Inflect' => 0,
    },
    add_to_cleanup      => [ 'App-LegendaryFlavor' ],
    meta_merge     => {
        resources => {
            repository  => 'http://github.com/wickline/legendary_flavor/tree/master'
        },
    },
);

$builder->create_build_script();
print "Have a Legendary day!\n";
