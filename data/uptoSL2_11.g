# To read this file you need the package "congruence"
# gap> LoadPackage("congruence");

diagrams := [rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4, 5 ], [ 6, 7, 8 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "even", "even", "odd", "even" 
     ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4, 6 ], [ 5, 7, 8 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "even", "even", "even", "odd" 
     ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5, 6 ], [ 4, 7, 8 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "even", "even", "odd", "odd" 
     ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4, 7 ], [ 5, 6, 8 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "odd", "even", "even", "even" 
     ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5, 7 ], [ 4, 6, 8 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "odd", "even", "odd", "even" 
     ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 6, 7 ], [ 4, 5, 8 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "odd", "even", "even", "odd" 
     ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4, 8 ], [ 5, 6, 7 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "even", "odd", "even", "even" 
     ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5, 8 ], [ 4, 6, 7 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "even", "odd", "odd", "even" 
     ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 6, 8 ], [ 4, 5, 7 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "even", "odd", "even", "odd" 
     ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 7, 8 ], [ 4, 5, 6 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "odd", "odd", "even", "even" 
     ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4, 5 ], [ 6 ], (7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", 7, 7, "odd", "even" ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4, 5 ], [ 7 ], (6,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "even", 6, "odd", 6 ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4, 6 ], [ 5 ], (7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", 7, 7, "even", "odd" ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4, 6 ], [ 7 ], (5,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "even", 5, 5, "odd" ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4, 6 ], [ 8 ], (5,7) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", 5, "even", 5, "odd" ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5, 6 ], [ 4 ], (7,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", 7, 7, "odd", "odd" ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5, 6 ], [ 7 ], (4,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, "even", 4, "odd", "odd" ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5, 6 ], [ 8 ], (4,7) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, 4, "even", "odd", "odd" ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4, 7 ], [ 8 ], (5,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "odd", "even", 5, 5 ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5, 7 ], [ 4 ], (6,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "odd", 6, "odd", 6 ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5, 7 ], [ 6 ], (4,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, "odd", 4, "odd", "even" ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5, 7 ], [ 8 ], (4,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, "odd", "even", "odd", 4 ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 6, 7 ], [ 5 ], (4,8) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, "odd", 4, "even", "odd" ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 4, 8 ], [ 7 ], (5,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "odd", "even", "odd", 5, 5 ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 5, 8 ], [ 7 ], (4,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ 4, "even", "odd", "odd", 4 ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) ),
rec(
  aut := Group( [ () ] ),
  coloring := [ [ 7, 8 ], [ 4 ], (5,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1/2, 1, 2, infinity ], [ "even", "odd", "odd", 5, 5 ] ] ,
  graph := [ [ false, true, true, true, false, false, false, false ], 
      [ true, false, false, false, true, true, false, false ], [ true, false, false, false, false, false, true, true 
         ], [ true, false, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, true, false, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ], 
      [ false, false, true, false, false, false, false, false ] ],
  orientation := [ (2,4,3), (1,5,6), (1,7,8) ],
  size := 8,
  tree_aut := Group( [ (2,3)(5,7)(6,8) ] ) )
];