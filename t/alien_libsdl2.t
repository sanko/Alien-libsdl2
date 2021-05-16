use Test2::V0 -no_srand => 1;
use Test::Alien 1.90;
use FFI::Platypus;
use FFI::Platypus::Memory qw( malloc free );
use Alien::libsdl2;
alien_ok 'Alien::libsdl2';

ffi_ok {api => 1} => with_subtest {
 my($ffi) = @_;
  $ffi->function(SDL_Init=> ['uint32'] => 'int')->call(0);
  ok 1;
};
done_testing;
