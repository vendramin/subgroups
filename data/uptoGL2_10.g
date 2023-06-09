# To read this file you need the package "congruence"
# gap> LoadPackage("congruence");

diagrams := [rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [ 3, 4, 5, 6 ], [  ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", "odd", "odd", "odd" ] ) ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], [ true, false, false, false, false, false ], 
      [ true, false, false, false, false, false ], [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (2,3,4), (1,5,6) ],
  passport := [ ( 1, 2)( 3, 8)( 4, 5)( 6, 7)( 9,10), ( 2, 8, 5)( 3,10, 7), ( 1, 2, 3, 9,10, 6, 7, 8, 4, 5) ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [ 5, 6, 7, 8 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "even", "even", "even", "even" ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ (1,2)(3,8)(5,9), ( 2, 8, 5)( 3,10, 7)( 4, 9, 6), ( 1, 2, 3,10, 7, 8, 9, 6, 4, 5) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5 ], [ 4, 6, 7, 8 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "odd", "even", "even", "even" ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ (2,8)(3,4)(5,9), ( 1, 8, 5)( 2,10, 7)( 4, 9, 6), ( 1, 2,10, 7, 8, 9, 6, 3, 4, 5) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 6 ], [ 4, 5, 7, 8 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "even", "odd", "even", "even" ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ (2,8)(4,9)(5,6), ( 1, 8, 4)( 2,10, 7)( 3, 9, 6), ( 1, 2,10, 7, 8, 9, 5, 6, 3, 4) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [ 5, 6 ], (7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "even", "even", 7, 7 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ ( 1, 2)( 3, 8)( 5, 9)( 7,10), ( 2, 8, 5)( 3,10, 7)( 4, 9, 6), (1,2,3,7,8,9,6,4,5) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [ 5, 7 ], (6,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "even", 6, "even", 6 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ ( 1, 2)( 3, 8)( 5, 9)( 6,10), ( 2, 8, 5)( 3,10, 7)( 4, 9, 6), ( 1, 2, 3, 6, 4, 5)( 7, 8, 9,10) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [ 6, 7 ], (5,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", 5, "even", "even", 5 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ ( 1, 2)( 3, 8)( 4,10)( 5, 9), ( 2, 8, 5)( 3,10, 7)( 4, 9, 6), ( 1, 2, 3, 4, 5)( 6,10, 7, 8, 9) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [ 5, 8 ], (6,7) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "even", 6, 6, "even" ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ (1,2)(3,8)(5,9)(6,7), ( 2, 8, 5)( 3,10, 7)( 4, 9, 6), ( 1, 2, 3,10, 6, 4, 5)( 7, 8, 9) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5 ], [ 4, 6 ], (7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "odd", "even", 7, 7 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ ( 2, 8)( 3, 4)( 5, 9)( 7,10), ( 1, 8, 5)( 2,10, 7)( 4, 9, 6), (1,2,7,8,9,6,3,4,5) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5 ], [ 6, 7 ], (4,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, "odd", "even", "even", 4 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ ( 1,10)( 2, 8)( 3, 4)( 5, 9), ( 1, 8, 5)( 2,10, 7)( 4, 9, 6), ( 1, 2)( 3, 4, 5,10, 7, 8, 9, 6) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5 ], [ 6, 8 ], (4,7) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, "odd", "even", 4, "even" ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ (1,7)(2,8)(3,4)(5,9), ( 1, 8, 5)( 2,10, 7)( 4, 9, 6), ( 1, 2,10)( 3, 4, 5, 7, 8, 9, 6) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5 ], [ 7, 8 ], (4,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, "odd", 4, "even", "even" ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ (1,6)(2,8)(3,4)(5,9), ( 1, 8, 5)( 2,10, 7)( 4, 9, 6), ( 1, 2,10, 7, 8, 9)( 3, 4, 5, 6) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 6 ], [ 4, 5 ], (7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "even", "odd", 7, 7 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ ( 2, 8)( 4, 9)( 5, 6)( 7,10), ( 1, 8, 4)( 2,10, 7)( 3, 9, 6), (1,2,7,8,9,5,6,3,4) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 6 ], [ 7, 8 ], (4,5) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, 4, "odd", "even", "even" ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ (1,3)(2,8)(4,9)(5,6), ( 1, 8, 4)( 2,10, 7)( 3, 9, 6), ( 1, 2,10, 7, 8, 9, 5, 6)( 3, 4) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [  ], (5,6)(7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", 5, 5, 7, 7 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ ( 1, 2)( 3, 8)( 4, 6)( 5, 9)( 7,10), ( 2, 8, 5)( 3,10, 7)( 4, 9, 6), (1,2,3,7,8,9,4,5) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [  ], (5,8)(6,7) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", 5, 6, 6, 5 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ ( 1, 2)( 3, 8)( 4,10)( 5, 9)( 6, 7), ( 2, 8, 5)( 3,10, 7)( 4, 9, 6), ( 1, 2, 3, 4, 5)( 6,10)( 7, 8, 9) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [  ], (5,7)(6,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", 5, 6, 5, 6 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ ( 1, 2)( 3, 8)( 4, 7)( 5, 9)( 6,10), ( 2, 8, 5)( 3,10, 7)( 4, 9, 6), ( 1, 2, 3, 6, 7, 8, 9,10, 4, 5) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5 ], [  ], (4,6)(7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, "odd", 4, 7, 7 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ ( 1, 6)( 2, 8)( 3, 4)( 5, 9)( 7,10), ( 1, 8, 5)( 2,10, 7)( 4, 9, 6), (1,2,7,8,9)(3,4,5,6) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 6 ], [  ], (4,5)(7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, 4, "odd", 7, 7 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], [ false, false, true, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], [ false, true, false, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,7,8), (1,5,6) ],
  passport := [ ( 1, 3)( 2, 8)( 4, 9)( 5, 6)( 7,10), ( 1, 8, 4)( 2,10, 7)( 3, 9, 6), (1,2,7,8,9,5,6)(3,4) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) )
];