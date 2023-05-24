# To read this file you need the package "congruence"
# gap> LoadPackage("congruence");

diagrams := [rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [ 3, 4 ], [ 5, 6 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", "odd", "even", "even" 
     ] ) ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (), () ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [ 3, 5 ], [ 4, 6 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", "even", "odd", "even" 
     ] ) ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (), () ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [ 4, 5 ], [ 3, 6 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "even", "odd", "odd", "even" 
     ] ) ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (), () ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [ 3, 4 ], [  ], (5,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", "odd", 5, 5 ] ) ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (), () ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [ 3, 5 ], [  ], (4,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", 4, "odd", 4 ] ) ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (), () ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [ 4, 5 ], [  ], (3,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ 3, "odd", "odd", 3 ] ) ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (), () ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) )
];