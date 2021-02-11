#/usr/bin/perl
use strict;
use warnings;

#takes an array of comparable items
#returns sorted permutation of the array
sub insertion_sort {
    my @array = @_;
    #loop through n-1 elements of array
    for(my $j = 1; $j < @array; $j++) {
        my $key = $array[$j];
        my $i = $j -1;
        #shift the elements in the array to make room for $key
        while ($i >= 0 && $array[$i] > $key){
            $array[$i+1] = $array[$i];
            $i--;
        }
        #put $key in its correct position in the array
        $array[$i+1] = $key;
    }
    return @array;
}
