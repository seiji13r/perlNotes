#!/usr/bin/perl

use strict;
use warnings;

my @array = (1, 2, 3, 4);             # array
my $arrayref1 = \@array;              # array reference
my $arrayref2 = ['a', 'b', 'c', 'd']; # array reference

# Access element 0 of the array
print $array[0];       # prints 1

# Dereference + access element 0
print $arrayref1->[0]; # prints 1
print $arrayref2->[0]; # prints 'a'

# A array reference inside a array reference
my $arrays_in_arrays = [a, b, c, ['roo', 'woo', 'loo']];

# How to dereference array references
my @array1 = @{ $arrays_in_arrays };      # (a, b, c ['roo', 'woo', 'loo'])
my @array2 = @$arrays_in_arrays;          # same but less typing
my @array3 = @{ $arrays_in_arrays->[3] }; # ('roo', 'woo', 'loo')