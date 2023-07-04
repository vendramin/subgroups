# Subgroups of $SL_2(\mathbb{Z})$

The repository contains the [GAP](https://www.gap-system.org) code used in the paper
On computing finite index subgroups of $PSL_2(Z)$

[![DOI](641409582.svg)](https://zenodo.org/badge/latestdoi/641409582)

Our script uses the GAP packages [Yags](https://github.com/yags/yags), 
[congruence](https://www.gap-system.org/Packages/congruence.html), 
and [ToolsForHomalg](https://github.com/homalg-project/homalg_project/tree/master/ToolsForHomalg). 

## Authors
* Ariel Pacetti
* Nicolás Mayorga Uruburu
* Leandro Vendramin

## Constructions  

The file ```kulkarni.g``` contains functions to construct Kulkarni diagrams 
up to equivalence by conjugation in $SL_2(\mathbb{Z})$ and $GL_2(\mathbb{Z})$. To do this, 
first we need to read our main file:

```
gap> Read("kulkarni.g");
```

Here we show an example of the calculations related to conjugacy classes in $GL_2(\mathbb{Z})$:

```
gap> ComputeGL2Classes(10);;
Index: 2, I constructed 1 GL2 representatives of subgroups in 0ms (= 0:00:00.000)
Index: 3, I constructed 2 GL2 representatives of subgroups in 8ms (= 0:00:00.008)
Index: 4, I constructed 2 GL2 representatives of subgroups in 9ms (= 0:00:00.009)
Index: 5, I constructed 1 GL2 representatives of subgroups in 4ms (= 0:00:00.004)
Index: 6, I constructed 8 GL2 representatives of subgroups in 28ms (= 0:00:00.028)
Index: 7, I constructed 4 GL2 representatives of subgroups in 26ms (= 0:00:00.026)
Index: 8, I constructed 6 GL2 representatives of subgroups in 31ms (= 0:00:00.031)
Index: 9, I constructed 12 GL2 representatives of subgroups in 134ms (= 0:00:00.134)
Index: 10, I constructed 19 GL2 representatives of subgroups in 324ms (= 0:00:00.324)
--
I constructed 10 tables in 568ms (= 0:00:00.568)
```

Here we show an example of the calculations related to conjugacy classes in $SL_2(\mathbb{Z})$:

```
gap> ComputeSL2Classes(10);;
Index: 2, I constructed 1 SL2 representatives of subgroups in 0ms (= 0:00:00.000)
Index: 3, I constructed 2 SL2 representatives of subgroups in 8ms (= 0:00:00.008)
Index: 4, I constructed 2 SL2 representatives of subgroups in 10ms (= 0:00:00.010)
Index: 5, I constructed 1 SL2 representatives of subgroups in 4ms (= 0:00:00.004)
Index: 6, I constructed 8 SL2 representatives of subgroups in 24ms (= 0:00:00.024)
Index: 7, I constructed 6 SL2 representatives of subgroups in 24ms (= 0:00:00.024)
Index: 8, I constructed 7 SL2 representatives of subgroups in 28ms (= 0:00:00.028)
Index: 9, I constructed 14 SL2 representatives of subgroups in 123ms (= 0:00:00.123)
Index: 10, I constructed 27 SL2 representatives of subgroups in 298ms (= 0:00:00.298)
--
I constructed 10 tables in 524ms (= 0:00:00.524)
```
## The database 

We precomputed Kulkarni diagrams of index up to 20. 
The folder ```data/``` contains GAP files with this database.  

### Example 1: passports 

We will compute the list of passports corresponding to Kulkarni diagrams (up to 
conjugation in $SL_2(\mathbb{Z})$ corresponding to subgroups of index 8. The corresponding
data is located in the GAP file ```data/uptoSL2_8.g```

This file contains contains a list names ```diagrams``` of Kulkarni diagrams. To use this file we need
to load the GAP package ```congruence```:

```
gap> LoadPackage("congruence");
```

This is needed to understand the generalized Farey sequence. Then one reads the corresponding file, in our case ```uptoSL2_8.g```. We also
need our script ```kulkarni.g```:

```
gap> Read("data/uptoSL2_8.g");
gap> Read("kulkarni.g");
```
Now to obtain the list of passports we just need to run over the elements of the list diagrams 
and use the function ```KulkarniDiagram2Passport```.

```
gap> Read("data/uptoSL2_8.g");
gap> for x in diagrams do
> Display(KulkarniDiagram2Passport(x));
> od;
[ (1,2)(3,7)(4,5), (1,3,4)(6,7,8), (1,2,3,8,6,7,4,5) ]
[ (1,2)(3,7)(5,6), (1,3,4)(5,7,8), (1,2,3,8,5,6,7,4) ]
[ (2,7)(3,4)(5,6), (1,2,3)(5,7,8), (1,2,8,5,6,7,3,4) ]
[ (2,6)(3,4)(7,8), (1,2,3)(5,6,7), (1,2,7,8,5,6,3,4) ]
[ (1,2)(3,7)(4,5)(6,8), (1,3,4)(6,8,7), (1,2,3,6,7,4,5) ]
[ (1,2)(3,7)(4,8)(5,6), (1,3,8)(4,5,7), (1,2,3,4)(5,6,7,8) ]
[ (1,8)(2,7)(3,4)(5,6), (1,5,7)(2,3,8), (1,2)(3,4,8,5,6,7) ]
```

### Example 2a: generalized Farey symbols  

We will show the list of generalized Farey symbols corresponding 
to subgroups (up to conjugation in $SL_2(\mathbb{Z})$ of index 8. As before, 
first we need to do some technical stuff:
```
gap> LoadPackage("congruence");
gap> Read("kulkarni.g");
```
We also need to load the part of the database we want to use:
```
gap> Read("data/uptoSL2_8.g");
```
Our Kulkarni diagrams contain the generalized Farey sequence: 
```
gap> for x in diagrams do
> Display(x!.farey_symbol);
> od;
FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", "odd", "even", "even" ] ) 
FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", "even", "odd", "even" ] ) 
FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "even", "odd", "odd", "even" ] ) 
FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "even", "odd", "even", "odd" ] ) 
FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", "odd", 5, 5 ] ) 
FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", 4, "odd", 4 ] ) 
FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ 3, "odd", "odd", 3 ] ) 
```
### Example 2b: generalized Farey symbols

```
gap> Read("data/uptoSL2_12.g");
gap> for x in diagrams do
> Display(x!.farey_symbol);
> od;
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "even", "even", "odd", "odd" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "odd", "even", "odd", "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "odd", "even", "even", "odd" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "odd", "even", "odd", "odd" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "even", "odd", "odd", "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "even", "odd", "even", "odd" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "even", "odd", "odd", "odd" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "odd", "odd", "even", "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "odd", "odd", "odd", "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "odd", "odd", "even", "odd" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", 7, 7, "odd", "odd" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "odd", 6, "odd", 6 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "odd", 5, 5, "odd" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, "odd", 4, "odd", "odd" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, 4, "odd", "odd", "odd" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "odd", "odd", 5, 5 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ "even", "even", "even", "even", "even",  "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", "even", "even", "even", "even",  "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 3/2, 2, infinity ], [ "even", "even", "even", "even", "even",  "even" ] )
FareySymbolByData( [ infinity, 0, 1/3, 1/2, 1, 2, infinity ], [ "even", "even", "even", "even", "even",  "even" ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ "even", "even", 9, 9, "even", "even" ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ "even", "even", "even", 8, "even", 8 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ "even", "even", "even", 7, 7, "even" ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ 5, "even", "even", 5, "even", "even" ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ "even", "even", 7, "even", 7, "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", "even", "even", "even", 9, 9 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", "even", 8, "even", "even", 8 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", 7, "even", "even", "even", 7 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", "even", "even", 6, "even", 6 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", 7, "even", "even", 7, "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", "even", "even", 6, 6, "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ 5, "even", "even", 5, "even", "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 3/2, 2, infinity ], [ "even", "even", "even", 9, 9, "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 3/2, 2, infinity ], [ "even", "even", 8, 8, "even", "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 3/2, 2, infinity ], [ "even", 7, 7, "even", "even", "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 3/2, 2, infinity ], [ 5, "even", 5, "even", "even", "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 3/2, 2, infinity ], [ 5, 5, "even", "even", "even", "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 3/2, 2, infinity ], [ 5, "even", "even", "even", "even", 5 ] )
FareySymbolByData( [ infinity, 0, 1/3, 1/2, 1, 2, infinity ], [ "even", 9, 9, "even", "even", "even" ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ "even", "even", 9, 9, 7, 7 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ "even", "even", 8, 7, 7, 8 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ "even", "even", 7, 8, 7, 8 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ "even", 6, 9, 9, "even", 6 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ "even", 6, 8, 6, "even", 8 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ "even", 6, 6, 8, "even", 8 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ 5, "even", 9, 9, "even", 5 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ 5, "even", 8, 5, "even", 8 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ 5, "even", 5, 8, "even", 8 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ "even", 6, 9, 9, 6, "even" ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ "even", 6, 6, 7, 7, "even" ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ 5, "even", 9, 9, 5, "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", 7, 7, "even", 9, 9 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", 7, 8, "even", 8, 7 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", 7, 8, "even", 7, 8 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", "even", 8, 6, 8, 6 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", "even", 8, 6, 6, 8 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ 5, "even", 5, "even", 9, 9 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", 7, "even", 6, 7, 6 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ "even", 7, "even", 6, 6, 7 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ 5, 5, "even", "even", 9, 9 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ 5, "even", "even", 5, 9, 9 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ 5, "even", 5, 6, "even", 6 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ 5, 5, "even", 6, "even", 6 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ 5, 5, "even", 6, 6, "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 3/2, 2, infinity ], [ "even", 7, 7, 9, 9, "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 3/2, 2, infinity ], [ 5, "even", 5, 9, 9, "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 3/2, 2, infinity ], [ 5, 5, "even", 9, 9, "even" ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 3/2, 2, infinity ], [ 5, "even", "even", 9, 9, 5 ] )
FareySymbolByData( [ infinity, 0, 1/3, 1/2, 1, 2, infinity ], [ "even", 9, 9, "even", 7, 7 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ 5, 5, 9, 9, 7, 7 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ 5, 5, 8, 7, 7, 8 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ 5, 5, 7, 8, 7, 8 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ 5, 6, 7, 5, 7, 6 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ 5, 6, 8, 5, 6, 8 ] )
FareySymbolByData( [ infinity, 0, 1, 3/2, 2, 3, infinity ], [ 5, 6, 6, 7, 7, 5 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ 5, 7, 7, 5, 9, 9 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ 5, 7, 8, 5, 8, 7 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ 5, 7, 8, 5, 7, 8 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 2, 3, infinity ], [ 5, 5, 8, 6, 6, 8 ] )
FareySymbolByData( [ infinity, 0, 1/2, 1, 3/2, 2, infinity ], [ 5, 7, 7, 9, 9, 5 ] )
