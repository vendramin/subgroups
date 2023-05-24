# To read this file you need the package "congruence"
# gap> LoadPackage("congruence");

diagrams := [rec(
  aut := Group( [ (1,2) ] ),
  coloring := [ [ 1, 2 ], [  ], () ],
  farey_symbol := FareySymbolByData( [ infinity, 0, infinity ], [ "odd", "odd" ] ) ,
  graph := [ [ false, true ], [ true, false ] ],
  orientation := [ [  ], [  ], () ],
  size := 2,
  tree_aut := Group( [ (1,2) ] ) )
];