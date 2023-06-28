# To read this file you need the package "congruence"
# gap> LoadPackage("congruence");

diagrams := [rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [ 3 ], [ 4, 5, 6 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", "even", "even", "even" ] ) ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], [ true, false, false, false, false, false ], 
      [ true, false, false, false, false, false ], [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (2,3,4), (1,5,6) ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [ 3 ], [ 4 ], (5,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", "even", 5, 5 ] ) ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], [ true, false, false, false, false, false ], 
      [ true, false, false, false, false, false ], [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (2,3,4), (1,5,6) ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [ 3 ], [ 5 ], (4,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", 4, "even", 4 ] ) ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], [ true, false, false, false, false, false ], 
      [ true, false, false, false, false, false ], [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (2,3,4), (1,5,6) ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [ 3 ], [ 6 ], (4,5) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "odd", 4, 4, "even" ] ) ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], [ true, false, false, false, false, false ], 
      [ true, false, false, false, false, false ], [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (2,3,4), (1,5,6) ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) )
];