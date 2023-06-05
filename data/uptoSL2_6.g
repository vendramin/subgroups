# To read this file you need the package "congruence"
# gap> LoadPackage("congruence");

diagrams := [rec(
  aut := Group( [ (), (3,4), (2,4,3), (2,4), (2,3,4), (2,3) ] ),
  coloring := [ [ 2, 3, 4 ], [  ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, infinity ], [ "odd", "odd", "odd" ] ] ,
  graph := [ [ false, true, true, true ], [ true, false, false, false ], [ true, false, false, false ], 
      [ true, false, false, false ] ],
  orientation := [ (2,3,4) ],
  size := 4,
  tree_aut := Group( [ (2,3,4), (2,3) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [  ], [ 3, 4, 5, 6 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "even", "even", "even", "even" ] ] ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (2,3,4), (1,5,6) ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [  ], [ 3, 4 ], (5,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "even", "even", 5, 5 ] ] ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (2,3,4), (1,5,6) ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [  ], [ 3, 5 ], (4,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ "even", 4, "even", 4 ] ] ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (2,3,4), (1,5,6) ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [  ], [ 4, 5 ], (3,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ 3, "even", "even", 3 ] ] ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (2,3,4), (1,5,6) ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [  ], [  ], (3,4)(5,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ 3, 3, 5, 5 ] ] ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (2,3,4), (1,5,6) ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [  ], [  ], (3,6)(4,5) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ 3, 4, 4, 3 ] ] ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (2,3,4), (1,5,6) ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) ),
rec(
  aut := Group( [ (), (1,2)(3,5)(4,6) ] ),
  coloring := [ [  ], [  ], (3,5)(4,6) ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, 2, infinity ], [ 3, 4, 3, 4 ] ] ,
  graph := [ [ false, true, true, true, false, false ], [ true, false, false, false, true, true ], 
      [ true, false, false, false, false, false ], [ true, false, false, false, false, false ], 
      [ false, true, false, false, false, false ], [ false, true, false, false, false, false ] ],
  orientation := [ (2,3,4), (1,5,6) ],
  size := 6,
  tree_aut := Group( [ (1,2)(3,5)(4,6) ] ) )
];