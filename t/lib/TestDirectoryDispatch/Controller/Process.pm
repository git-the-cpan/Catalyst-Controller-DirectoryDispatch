package TestDirectoryDispatch::Controller::Process;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller::DirectoryDispatch' }

__PACKAGE__->config(
	action => { setup => { Chained => '', PathPart => 'process' } }, # define parent chain action and partpath
	root       => '.',
);


sub process_files {
	my ( $c, $files ) = @_;
	
	return [ map { "Andy was here: $_" } @$files ];
}

__PACKAGE__->meta->make_immutable;
1;