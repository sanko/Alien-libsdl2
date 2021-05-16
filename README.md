# Alien::libsdl2 ![CI](https://github.com/sanko/Alien-libsdl2/workflows/CI/badge.svg)

Find or download and install libsdl2

# SYNOPSIS

In your Makefile.PL:

```perl
use ExtUtils::MakeMaker;
use Alien::Base::Wrapper ();

WriteMakefile(
  Alien::Base::Wrapper->new('Alien::libsdl2')->mm_args2(
    # MakeMaker args
    NAME => 'My::XS',
    ...
  ),
);
```

In your Build.PL:

```perl
use Module::Build;
use Alien::Base::Wrapper qw( Alien::libsdl2 !export );

my $builder = Module::Build->new(
  ...
  configure_requires => {
    'Alien::libsdl2' => '0',
    ...
  },
  Alien::Base::Wrapper->mb_args,
  ...
);

$build->create_build_script;
```

In your [FFI::Platypus](https://metacpan.org/pod/FFI::Platypus) script or module:

```perl
use FFI::Platypus;
use Alien::libsdl2;

my $ffi = FFI::Platypus->new(
  lib => [ Alien::libsdl2->dynamic_libs ],
);
```

# DESCRIPTION

This distribution provides libsdl2 so that it can be used by other
Perl distributions that are on CPAN.  It does this by first trying to
detect an existing install of libsdl2 on your system.  If found it
will use that.  If it cannot be found, the source code will be downloaded
from the internet and it will be installed in a private share location
for the use of other modules.

# SEE ALSO

[Alien](https://metacpan.org/pod/Alien), [Alien::Base](https://metacpan.org/pod/Alien::Base), [Alien::Build::Manual::AlienUser](https://metacpan.org/pod/Alien::Build::Manual::AlienUser)

# AUTHOR

Sanko Robinson <sanko@cpan.org>

# COPYRIGHT AND LICENSE

Part of this software is copyright (c) 2018 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

