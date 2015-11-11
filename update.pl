use strict;

foreach my $d (glob("*")){

    next unless(-d $d);
    print "="x80,"\n";
    print "Cambiando a $d\n";
    chdir($d);
    system("git", "status");
    system("git","push","origin","master");
    chdir("..");
}
