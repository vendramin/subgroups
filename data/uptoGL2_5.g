# To read this file you need the package "congruence"
# gap> LoadPackage("congruence");

diagrams := [rec(
  aut := Group( [ (), (3,4), (2,4,3), (2,4), (2,3,4), (2,3) ] ),
  coloring := [ [ 2, 3 ], [ 4 ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, 1, infinity ], [ "odd", "odd", "even" ] ) ,
  graph := [ [ false, true, true, true ], [ true, false, false, false ], [ true, false, false, false ], 
      [ true, false, false, false ] ],
  orientation := [ () ],
  size := 4,
  tree_aut := Group( [ (2,3,4), (2,3) ] ) )
];