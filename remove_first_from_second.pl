#!/usr/bin/perl

open (REMOVE, "<", $ARGV[0]);
open (OUT, "<", $ARGV[1]);

%remove_list = ();
while(<REMOVE>)
{
        chomp($_);
        $remove_list{$_} = 1;
}

while(<OUT>)
{
        chomp($_);
        if (not exists($remove_list{$_}))
        {
                print $_."\n";
        }
}

close(REMOVE);
close(OUT);
