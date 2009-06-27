use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
die "This module requires OpenVMS" if ($^O !~ /VMS/);
WriteMakefile(
    NAME              => 'VMS::Logical',
    VERSION_FROM      => 'lib/VMS/Logical.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/VMS/Logical.pm', # retrieve abstract from module
       AUTHOR         => 'Thomas Pfau <tfpfau@gmail.com>')
     : ()
     ),
    LIBS              => [''], # e.g., '-lm'
    DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
    INC               => '-I.', # e.g., '-I. -I/usr/include/other'
	# Un-comment this if you add C files to link with later:
    # OBJECT            => '$(O_FILES)', # link all the C files too
);
