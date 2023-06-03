# To read this file you need the package "congruence"
# gap> LoadPackage("congruence");

diagrams := [rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [ 3, 4, 5, 6 ], [  ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", "odd", "odd", "odd" ] ) ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (), () ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [ 5, 6, 7, 8 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], 
    [ "odd", "even", "even", "even", "even" ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5 ], [ 4, 6, 7, 8 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], 
    [ "even", "odd", "even", "even", "even" ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 6 ], [ 4, 5, 7, 8 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], 
    [ "even", "even", "odd", "even", "even" ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [ 5, 6 ], (7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ "odd", "even", "even", 7, 7 
     ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [ 5, 7 ], (6,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ "odd", "even", 6, "even", 6 
     ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [ 6, 7 ], (5,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ "odd", 5, "even", "even", 5 
     ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [ 5, 8 ], (6,7) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ "odd", "even", 6, 6, "even" 
     ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [ 6, 8 ], (5,7) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ "odd", 5, "even", 5, "even" 
     ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [ 7, 8 ], (5,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ "odd", 5, 5, "even", "even" 
     ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5 ], [ 4, 6 ], (7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ "even", "odd", "even", 7, 7 
     ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5 ], [ 6, 7 ], (4,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ 4, "odd", "even", "even", 4 
     ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5 ], [ 7, 8 ], (4,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ 4, "odd", 4, "even", "even" 
     ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 6 ], [ 4, 5 ], (7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ "even", "even", "odd", 7, 7 
     ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [  ], (5,6)(7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ "odd", 5, 5, 7, 7 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [  ], (5,8)(6,7) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ "odd", 5, 6, 6, 5 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4 ], [  ], (5,7)(6,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ "odd", 5, 6, 5, 6 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5 ], [  ], (4,6)(7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ 4, "odd", 4, 7, 7 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 6 ], [  ], (4,5)(7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, 3, infinity ], [ 4, 4, "odd", 7, 7 ] ) ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], 
      [ true, false, false, false, false, false, true, true ], 
      [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (), () ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) )
];