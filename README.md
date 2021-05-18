[![Actions Status](https://github.com/sanko/Alien-libsdl2/workflows/CI/badge.svg)](https://github.com/sanko/Alien-libsdl2/actions)
[![GitHub tag](https://img.shields.io/github/tag/sanko/Alien-libsdl2.svg)]()
[![Cpan version](https://img.shields.io/cpan/v/Alien-libsdl2.svg)](https://metacpan.org/release/Alien-libsdl2)

# NAME

Alien::libsdl2 - Find or download and install libsdl2

# SYNOPSIS

```perl
use strict;
use warnings;
use ExtUtils::MakeMaker;
use Config;
use Alien::Base::Wrapper ();
WriteMakefile(
  Alien::Base::Wrapper->new('Alien::libsdl2')->mm_args2(
    ...
    CONFIGURE_REQUIRES => {
      'Alien::libsdl2' => '0'
    },
    ...
  ),
);
```

# DESCRIPTION

This package can be used by other [CPAN](https://metacpan.org) modules that
require [libsdl2](http://libsdl.org).

# SEE ALSO

- [libsdl2](http://libsdl.com)
- [Alien::SDL2](https://metacpan.org/pod/Alien%3A%3ASDL2) - Ancient Alien for SDL2 (builds w/ SDL2-2.0.0 from 2013)

# Platform Support

This dist has been tested on various modern versions of perl on Windows Server
2019, Ubuntu (20.04.2), and OSX (10.15.7). See
https://github.com/sanko/Alien-libsdl2/actions

On OSX and \*nix, libsdl2 is built from source.

On Windows, prebuilt shared libraries are downloaded from libsdl.org and
installed.

# LICENSE

Copyright (C) Sanko Robinson.

This library is free software; you can redistribute it and/or modify it under
the terms found in the Artistic License 2. Other copyrights, terms, and
conditions may apply to data transmitted through this module.

# AUTHOR

Sanko Robinson <sanko@cpan.org>
