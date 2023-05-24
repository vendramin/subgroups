# The package yags is used to test graph isomorphisms.
LoadPackage("yags");

# The package for generalized Farey symbols and generators.
LoadPackage("congruence");

# The package ToolsForHomAlg is used to make more efficient
# the use of recursive functions.
LoadPackage("ToolsForHomAlg");

# Create a square matrix of a given size with false
# in every entry.
# Example:
# gap> FalseMatrix(2);
# [ [ false, false ], [ false, false ] ]
FalseMatrix := function(n)
  local i, j, m;
  m := NullMat(n,n);
  for i in [1..n] do
    for j in [1..n] do
      m[i][j] := false;
    od;
  od;
  return m;
end;  

# This function returns an adjacency matrix
# as a 0-1 matrix.
# Example:
# gap> ConvertFromBoolean([ [ false, true ], [ true, false ] ]);
# [ [ 0, 1 ], [ 1, 0 ] ]
ConvertFromBoolean := function(m)
  local i,j,adj;

  adj := NullMat(Size(m), Size(m));
  
  for i in [1..Size(m)] do 
    for j in [1..Size(m)] do
      if m[i][j] = false then
        adj[i][j] := 0;
      else
        adj[i][j] := 1;
      fi;
    od;
  od;
  return adj;
end;

# This function returns an adjacency matrix
# in the format needed by the package Yags.
# Example:
# gap> ConvertToBoolean([ [ 0, 1 ], [ 0, 1] ]);
# [ [ false, true ], [ false, true ] ]
ConvertToBoolean := function(m)
  local i,j,adj;

  adj := NullMat(Size(m), Size(m));
  
  for i in [1..Size(m)] do 
    for j in [1..Size(m)] do
      if m[i][j] = 0 then
        adj[i][j] := false;
      else
        adj[i][j] := true;
      fi;
    od;
  od;
  return adj;
end;

# Given a <list> of graphs, the function checks whether 
# the <graph> belongs to the list (up to isomorphism). 
IsNewGraph := function(list, graph)
  local x;
  for x in list do
    if not IsIsomorphicGraph(GraphByAdjMatrix(x),GraphByAdjMatrix(graph))=false then
      return false;
    fi;
  od;
  return true;
end;

# This function implements the usual Kronecker delta
# function.
# Example:
# gap> KroneckerDelta(2,2);
# 1
# gap> KroneckerDelta(2,3);
# 0
KroneckerDelta := function(i, j)
  if i=j then
    return 1;
  else
    return 0;
  fi;
end;

# Given a square matrix <matrix> of size n and a row vector <v>
# of size n+1 the function returns a new matrix of size n+1 where
# the last row and the last column is equal to <v>. 
# Example:
# gap> MatrixEnlarge([[1,2],[3,4]],[5,6,7]);
# [ [ 1, 2, 5 ], [ 3, 4, 6 ], [ 5, 6, 7 ] ]
MatrixEnlarge := function(matrix, v)
  local i, j, m, size;
  
  size := Size(matrix);
  m := FalseMatrix(size+1);
  for i in [1..size+1] do 
    for j in [1..size+1] do
      if i <= size and j<= size then
        m[i][j] := matrix[i][j];
      elif i=size+1 then
        m[i][j] := v[j];
      else
        m[i][j] := v[i];
      fi;
    od;
  od;
  return m;
end;

# Computes representatives of isomorphism classes 
# of inner graphs of size <n> inner vertices 
# using the precomputed data <input>. 
# The parameter <input> is a list of representatives of isomorphic classes
# of inner graphs of size n-1. 
InnerInequivalentTreesWithInput := FunctionWithCache( function(n, input)
  local i, j, g, answer, previous, graph;

  if n = 1 then
    return [[[false]]];
  fi;

  if input = [[]] then
    previous := InnerInequivalentTreesWithInput(n-1, [[]]);
  else
    previous := input;
  fi;

  answer := [];

  for i in [1..Size(previous)] do 
    graph := previous[i];
    for j in [1..n-1] do
      if Number(graph[j], x->x=true) <= 2 then
        g := MatrixEnlarge(graph, List([1..n], x->x=j));
        if IsNewGraph(answer, g) then
          Add(answer, g);
        fi;
      fi;
    od;
  od;
  return answer;
end : Cache := "crisp" );

# Computes from scratch representatives of isomorphism classes of inner 
# graph with <n> inner vertices.
# Warning: This function uses InnerInequivalentTreesWithInput. 
# Example:
# gap> InnerInequivalentTrees(2);
# [ [ [ false, true ], [ true, false ] ] ]
# gap> InnerInequivalentTrees(3);
# [ [ [ false, true, true ], [ true, false, false ], [ true, false, false ] ] ]
InnerInequivalentTrees := function(n)
  return InnerInequivalentTreesWithInput(n, [[]]);
end;

# This function returns the extended graph attached to 
# the inner graph. 
# Example:
# gap> g := [ [ false, true ], [ true, false ] ];;
# gap> InnerToTotal(g);
# [ [ false, true, true, true, false, false ],
#   [ true, false, false, false, true, true ],
#   [ true, false, false, false, false, false ],
#   [ true, false, false, false, false, false ],
#   [ false, true, false, false, false, false ],
#   [ false, true, false, false, false, false ] ]
InnerToTotal := function(graph)
  local n, m, k, f, i, x, g; 

  n := Size(graph);
  g := ConvertFromBoolean(graph);
  m := ShallowCopy(g);
  
  for x in [1..Size(g)] do
    k := 3-Sum(g[x]);
    for i in [1..k] do
      f := ListWithIdenticalEntries(Size(m),0);
      f[x] := 1;
      Add(m, f); 
      m := MutableCopyMatrix(TransposedMat(m));
      Add(f, 0);
      Add(m, f); 
      m := MutableCopyMatrix(TransposedMat(m));
    od;
  od;
  return ConvertToBoolean(m);
end;

# Given an extended graph <graph>, the function 
# return the inner graph associated with it. 
# Example:
# gap> g := 
# [ [ false, true, true, true, false, false ],
#   [ true, false, false, false, true, true ],
#   [ true, false, false, false, false, false ],
#   [ true, false, false, false, false, false ],
#   [ false, true, false, false, false, false ],
#   [ false, true, false, false, false, false ] ];;
# gap> TotalToInner(g);
# [ [ false, true ], [ true, false ] ]
TotalToInner := function(graph)
  local n;
  n := Size(graph);
  return graph{[1..n/2-1]}{[1..n/2-1]};
end;

# This function performs the calculation 
# of graph automorphisms using Yags package. 
# Example:
# gap> YagsAutomorphismsOfGraph( [ [ true, false ], [ true, true ] ]);
# Group([ (1,2) ])
YagsAutomorphismsOfGraph := function(graph)
  return AutomorphismGroup(GraphByAdjMatrix(graph));
end;

# Given an extended graph <graph> and a vertex <x>, 
# the function returns the list of external vertices
# adjacent to <x>. 
# Example:
# gap> g := InnerToTotal([[false, true],[true,false]]);
# [ [ false, true, true, true, false, false ],
#   [ true, false, false, false, true, true ],
#   [ true, false, false, false, false, false ],
#   [ true, false, false, false, false, false ],
#   [ false, true, false, false, false, false ],
#   [ false, true, false, false, false, false ] ]
# gap> ExternalVerticesAdjacentTo(g, 2);
# [ 5, 6 ]
ExternalVerticesAdjacentTo := function(graph, x)
  local y, l, n;

  n := Size(graph);
  l := [];

  for y in [n/2..n] do
    if graph[x][y] then
      Add(l, y);          
    fi;
  od;
  return l ;
end;

# Given an extended graph <graph> and a vertex <x>, 
# the function returns the list of vertices
# adjacent to <x>. 
# gap> g := InnerToTotal([[false, true],[true,false]]);;
# gap> VerticesAdjacentTo(g, 2);
# [ 1, 5, 6 ]
VerticesAdjacentTo := function(graph, x)
  local y, l, n;

  n := Size(graph);
  l := [];

  for y in [1..n] do
    if graph[x][y] then
      Add(l, y);          
    fi;
  od;
  return l;
end;

# Given an extended graph <graph> and a vertex <x>, 
# the function returns the list of vertices
# adjacent to <x>. 
# gap> g := InnerToTotal([[false, true],[true,false]]);;
# gap> ExternalVertices(g);
# [ 3, 4, 5, 6 ]
# ExternalVertices := function(graph)
#   local n;
#   n := Size(graph);
#   return Filtered([1..n], x->Size(VerticesAdjacentTo(graph, x))=1);
# end;
# 
# InternalVertices := function(graph)
#   local n;
# 
#   n := Size(graph);
#   return Filtered([1..n], x->Size(VerticesAdjacentTo(graph, x))>1);
# end;

# Given an extended graph <graph>, the function
# returns the automorphism group of <graph> taking advantage 
# of the particular structure of <graph>. 
# Example:
# gap> g := InnerToTotal( [ [ false, true ],[ true, false ] ] );;
# gap> AutomorphismsOfGraph(g);
# Group([ (1,2)(3,5)(4,6), (3,4), (5,6) ])
AutomorphismsOfGraph := function(graph)
  local p, c, cycles, x, h, l, m, n, g, gens, new;

  n := Size(graph);
  new := [];

  if n = 4 then
    new := [(2,3,4), (2,3)];
  else
    gens := GeneratorsOfGroup(YagsAutomorphismsOfGraph(TotalToInner(graph))); 

    for g in gens do
      cycles := Cycles(g, MovedPoints(g));
      p := [1..n];
      for c in cycles do
        for x in c do
          l := ExternalVerticesAdjacentTo(graph, x);
          m := ExternalVerticesAdjacentTo(graph, x^g);
          if Size(l) = 1 then
            p[l[1]] := m[1];
          elif Size(l) = 2 then
            p[l[1]] := m[1];
            p[l[2]] := m[2];
          fi;
        od;
      od;
      Add(new, g*PermList(p));
    od;
   
    for x in [1..n/2-1] do 
      l := ExternalVerticesAdjacentTo(graph, x);
      if Size(l) = 2 then
        Add(new, (l[1],l[2]));
      fi;
    od;

  fi;
  return Group(new);
end;

# Given an extended graph <graph>, the function
# returns the automorphism group of the inner vertices
# extended to the extended graph. 
# Example:
# gap> g := InnerToTotal( [ [ false, true ],[ true, false ] ] );;
# gap> AutomorphismsOfGraph(g);
# Group([ (1,2)(3,5)(4,6), (3,4), (5,6) ])
# gap> ExtendedAutomorphismsOfInnerGraph(g);
# Group([ (1,2)(3,5)(4,6) ])
ExtendedAutomorphismsOfInnerGraph := function(graph)
  local p, c, cycles, x, h, l, m, n, g, gens, new;

  n := Size(graph);
  new := [];

  if n = 4 then
    new := [(2,3,4), (2,3)];
  else
    gens := GeneratorsOfGroup(YagsAutomorphismsOfGraph(TotalToInner(graph))); 

    for g in gens do
      cycles := Cycles(g, MovedPoints(g));
      p := [1..n];
      for c in cycles do
        for x in c do
          l := ExternalVerticesAdjacentTo(graph, x);
          m := ExternalVerticesAdjacentTo(graph, x^g);
          if Size(l) = 1 then
            p[l[1]] := m[1];
          elif Size(l) = 2 then
            p[l[1]] := m[1];
            p[l[2]] := m[2];
          fi;
        od;
      od;
      Add(new, g*PermList(p));
    od;
  fi;
  return Group(new);
end;

# Given a <graph> and a permutation <f> of the vertices of the graph,
# the function returns a new graph relabeled by <f>. 
# Example:
# gap> g := InnerToTotal([[false, true],[true,false]]);;
# gap> ActionOnTree(g, (1,2));
# [ [ false, true, false, false, true, true ],
#   [ true, false, true, true, false, false ],
#   [ false, true, false, false, false, false ],
#   [ false, true, false, false, false, false ],
#   [ true, false, false, false, false, false ],
#   [ true, false, false, false, false, false ] ]
ActionOnTree := function(graph, f)
  local p, m; 
  m := ConvertFromBoolean(graph);
  p := PermutationMat(f, Size(graph));
  return ConvertToBoolean(Inverse(p)*m*p);
end;

# An oriented tree is an object which is a record with the following components:
# 1) An extended graph. 
# 2) An orientation. 
# 3) The size.   
# Example: 
# rec( graph := [ [ false, true, true, true ], [ true, false, false, false ],
#      [ true, false, false, false ], [ true, false, false, false ] ],
#  orientation := [ (2,4,3), (), (), () ], size := 4 )
# Note: 
# The oriented tree does not have the automorphism group inside.

# Given an oriented tree <obj> and an automorphism <f> of the 
# underlying graph, the function returns a new oriented tree, which is the
# original oriented tree acted by <f>. 
# Example:
# x := rec( 
#       graph := [ [ false, true, true, true, false, false, false, false ],
#           [ true, false, false, false, true, true, false, false ],
#           [ true, false, false, false, false, false, true, true ],
#           [ true, false, false, false, false, false, false, false ],
#           [ false, true, false, false, false, false, false, false ],
#           [ false, true, false, false, false, false, false, false ],
#           [ false, false, true, false, false, false, false, false ],
#           [ false, false, true, false, false, false, false, false ] ],
#       orientation := [ (2,4,3), (), () ], size := 8 ) ];;
# gap> AutomorphismsOfGraph(x!.graph);
# Group([ (2,3)(5,7)(6,8), (5,6), (7,8) ])
# gap> f := (2,3)(5,7)(6,8);;
# gap> ActionOnOrientedTree(x, f);
# rec( graph := [ [ false, true, true, true, false, false, false, false ],
#       [ true, false, false, false, true, true, false, false ],
#       [ true, false, false, false, false, false, true, true ],
#       [ true, false, false, false, false, false, false, false ],
#       [ false, true, false, false, false, false, false, false ],
#       [ false, true, false, false, false, false, false, false ],
#       [ false, false, true, false, false, false, false, false ],
#       [ false, false, true, false, false, false, false, false ] ],
#   orientation := [ (2,3,4), (), () ], size := 8 )
#ActionOnOrientedTree := function(obj, f)
#  local n, x, graph, orientation, new;
#
#  graph := kbj!.graph;
#  n := obj!.size;
#  orientation := obj!.orientation;
#
#  new := [1..n/2-1];
#  for x in [1..n/2-1] do
#    new[x^Inverse(f)] := orientation[x]^Inverse(f);
#  od;
#
#  return rec(graph := ActionOnTree(graph, f), orientation := new, size := n);
#
#end;

# An oriented tree is an object which is a record with the following components:
# 1) An extended <graph>. 
# 2) An <orientation>. 
# 3) The <size>.   
# 4) The automorphism group <tree_aut> of the tree.
# 5) The automorphism group <aut> of the oriented tree. 

# Given an oriented tree (with automorphism) <obj> and an automorphism <f> of the 
# underlying graph, the function returns a new oriented tree, which is the
# original oriented tree acted by <f>. 
ActionOnOrientedTree := function(obj, f)
  local n, x, graph, orientation, new;

  graph := obj!.graph;
  n := obj!.size;
  orientation := obj!.orientation;

  new := [1..n/2-1];
  for x in [1..n/2-1] do
    new[x^Inverse(f)] := orientation[x]^Inverse(f);
  od;

  if not IsBound(obj!.aut) then 
    return rec(graph := ActionOnTree(graph, f), 
      orientation := new, 
      size := n, 
      tree_aut := ConjugateGroup(obj!.tree_aut, f));
  else
    return rec(graph := ActionOnTree(graph, f), 
      orientation := new, 
      size := n, 
      tree_aut := ConjugateGroup(obj!.tree_aut, f),
      aut := ConjugateGroup(obj!.aut, f));
  fi;
end;

# Given an oriented tree <obj> and automorphism <f> 
# the function determines whether the oriented tree is 
# preserved by the autmorphism. 
PreservesOrientedTree := function(obj, f)
  return obj = ActionOnOrientedTree(obj, f);
end;

# Given a list <list> of oriented trees, an oriented tree <obj> and a set
# <aut> of automorphisms, the function checks whether the action of an
# automorphism of <aut> on <obj> belongs to <list>. 
IsNewOrientedTree := function(list, obj, aut)
  local g,f,x;
  for f in aut do 
    g := ActionOnOrientedTree(obj, f);
    if g in list then
      return false;
    fi;
  od;
  return true;
end;

# A colored tree is an oriented tree 
# with a <coloring> of the external vertices, that is: 
# 1) An extended <graph>. 
# 2) An <orientation>. 
# 3) The <size>.   
# 4) The automorphism group <tree_aut> of the tree.
# 5) The automorphism group <aut> of the oriented tree. 
# 6) A <coloring>. 

# This function acts on a colored tree <obj> by an automorphism <f>.
ActionOnColoredTree := function(obj, f)
  local n, x, graph, coloring, orientation, new;

  graph := obj!.graph;
  n := obj!.size;
  orientation := obj!.orientation;
  coloring := obj!.coloring;

  new := [1..n/2-1];
  for x in [1..n/2-1] do
    new[x^Inverse(f)] := orientation[x]^Inverse(f);
  od;

  return rec(graph := ActionOnTree(graph, f), orientation := new, 
  coloring := [Set(coloring[1], x->x^Inverse(f)), Set(coloring[2], x->x^Inverse(f)), 
              coloring[3]^Inverse(f)],
  size := n, aut := ConjugateGroup(obj!.aut,f), 
  tree_aut := ConjugateGroup(obj!.tree_aut,f));

end;

# Given a <list> of colored trees, a colored tree <obj> and a set
# <aut> of automorphisms, the function checks whether the action of an
# automorphism of <aut> on <obj> belongs to <list>. 
IsNewColoredTree := function(list, obj, aut)
  local g,f,x;
  for f in aut do 
    g := ActionOnColoredTree(obj, f);
    if g in list then
      return false;
    fi;
  od;
  return true;
end;

# This function computes oriented tree classes up to 
# size 12 in a couple of minutes. Here we take advantage
# of the structure of the graph. 
# Example:
# gap> for x in [1..12] do
# > Display(Size(OrientedTreeClasses2(x)));
# > od;
# 1
# 1
# 1
# 4
# 6
# 19
# 49
# 150
# 442
# 1424
# 4522
# 14924
OrientedTreeClasses2 := function(n)
  local f, t, g, x, y, z, v, tmp, total, res, aut, graphs, orientation, tmp_orientation;

  graphs := InnerInequivalentTrees(n);
  res := [];

  for g in graphs do
    total := InnerToTotal(g);
    orientation := [];
    aut := ExtendedAutomorphismsOfInnerGraph(total);
    f := Filtered([1..n], x->Size(VerticesAdjacentTo(g, x)) >= 2);

    for x in [1..n] do
      if x in f then 
        v := VerticesAdjacentTo(total, x);
        Add(orientation, (v[1],v[2],v[3]));
      else
        Add(orientation, ());
      fi;
    od;
    for t in IteratorOfTuples([1,-1], Size(f)) do 
      tmp_orientation := ShallowCopy(orientation);
      for y in [1..n] do
        if y in f then
          z := Position(f, y);
          tmp_orientation[y] := orientation[y]^t[z];
        fi;
      od;
      tmp := rec(tree_aut := aut, graph := total, orientation := tmp_orientation, size := 2*n+2);
      if IsNewOrientedTree(res, tmp, aut) then
        Add(res, tmp);
      fi;
    od;
  od;
  return res;
end;

# This function computes the oriented tree classes 
# of size <n> with their automorphism groups.  
OrientedTreeClassesWithAutomorphisms := function(n)
  local f, t, g, x, y, z, v, tmp, total, res, aut, graphs, orientation, tmp_orientation;

  if n = 0 then
    return [rec(graph := [[false, true],[true, false]], orientation := [[],[],()], size := 2, aut := Group([(1,2)]))];
  fi;

  graphs := InnerInequivalentTrees(n);
  res := [];

  for g in graphs do
    total := InnerToTotal(g);
    orientation := [];
    aut := ExtendedAutomorphismsOfInnerGraph(total);
    f := Filtered([1..n], x->Size(VerticesAdjacentTo(g, x)) >= 2);

    for x in [1..n] do
      if x in f then 
        v := VerticesAdjacentTo(total, x);
        Add(orientation, (v[1],v[2],v[3]));
      else
        Add(orientation, ());
      fi;
    od;
    for t in IteratorOfTuples([1,-1], Size(f)) do 
      tmp_orientation := ShallowCopy(orientation);
      for y in [1..n] do
        if y in f then
          z := Position(f, y);
          tmp_orientation[y] := orientation[y]^t[z];
        fi;
      od;
      #tmp := rec(graph := total, orientation := tmp_orientation, size := 2*n+2);
      tmp := rec(tree_aut := aut, 
        #aut := Group(Filtered(aut, f->PreservesOrientedTree(tmp, f))), 
        graph := total, 
        orientation := tmp_orientation, 
        size := 2*n+2);
      #tmp!.tree_aut := aut; 
      tmp!.aut := Group(Filtered(aut, f->PreservesOrientedTree(tmp, f)));
      if IsNewOrientedTree(res, tmp, aut) then
        Add(res, tmp);
      fi;
    od;
  od;
  return res;
end;

# This function computes the list of oriented tree classes 
# This function computes oriented tree classes up to 
# size 9 in a couple of minutes. For bigger sizes
# one should use OrientedTreeClasses2. 
# Example:
# gap> for x in [1..9] do
# > Display(Size(OrientedTreeClasses2(x)));
# > od;
# 1
# 1
# 1
# 4
# 6
# 19
# 49
# 150
# 442
OrientedTreeClasses1 := function(n)
  local t, g, x, v, tmp, total, res, aut, graphs, orientation;

  graphs := InnerInequivalentTrees(n);
  res := [];

  for g in graphs do
    total := InnerToTotal(g);
    orientation := [];
    aut := AutomorphismsOfGraph(total);

    for x in [1..n] do
      v := VerticesAdjacentTo(total, x);
      Add(orientation, (v[1],v[2],v[3]));
    od;
    for t in IteratorOfTuples([1,-1], n) do 
      tmp := rec(tree_aut := aut, graph := total, orientation := List([1..n], y->orientation[y]^t[y]), size := 2*n+2);
      if IsNewOrientedTree(res, tmp, aut) then
        Add(res, tmp);
      fi;
    od;
  od;
  return res;
end;

# This function checks if a permutation is well-ordered. 
# See [X] for the definition. 
IsOrderedPermutation := function(perm, n)
  local p, k;
  p := ListPerm(perm, n);

  if p[1] > p[2] then
    return false;
  fi;

  for k in [1..Size(p)-2] do
    if k mod 2 = 1 then
      if p[k+2] > p[k+3] or p[k] > p[k+2] then 
        return false;
      fi;
    fi;
  od;
  return true;
end;

# Given an ordered tuple <list> the function returns 
# a permutation in <n> letters 
# written as a product of disjoint transpositions. 
# The elements of <list> belong to 1,...,<n>. 
# Example:
# gap> ToPermutation([2,1,3,4], 4);
# (1,2)(3,4)
# gap> ToPermutation([2,1,3,6], 6);
# (1,2)(3,6)
ToPermutation := function(list, n)
  local k,l;
  l := [1..n]; 
  for k in [1..Size(list)/2] do
    l[list[2*k-1]] := list[2*k];
    l[list[2*k]] := list[2*k-1];
  od;
  return PermList(l);
end;

# Given three integers <blue>, <red> and <free>, this
# function returns a list of all equivalence classes 
# of oriented trees whose external vertices have 
# <blue> blue vertices, <red> red vertices
# and <free> pairs of free vertices. 
# Examples:
# gap> c := ColoredTree(1,0,1);;
# gap> Size(c);
# 3
ColoredTree := function(blue, red, free)
  local n, b, r, c, x, f, tmp, set, output, classes;

  n := blue+red+2*free;
  classes := OrientedTreeClassesWithAutomorphisms(n-2);
  output := [];

  for c in classes do
    for b in IteratorOfCombinations([1..n], blue) do
      if not free = 0 then 
       for r in IteratorOfCombinations(Difference([1..n], b), red) do
        set := Difference([1..n], Union(b,r));
          f := Filtered(SymmetricGroup(2*free), p->IsOrderedPermutation(p,2*free));
          for x in f do 
            tmp := ShallowCopy(c);
            tmp!.coloring := [(n-2)+b, (n-2)+r, ToPermutation(n-2+List(ListPerm(x, 2*free), y->set[y]),2*n-2)];
            #tmp!.coloring := [(n-2)+b, (n-2)+r, ToPermutation(n-2+List(ListPerm(x, 2*free), y->set[y]))];
            tmp!.aut := c!.aut;
            if IsNewColoredTree(output, tmp, c!.aut) then
              Add(output, tmp);
            fi;
          od;
        od;
      else
        tmp := ShallowCopy(c);
        tmp!.coloring := [(n-2)+b, (n-2)+Difference([1..n],b), () ]; # fixme!
        tmp!.aut := c!.aut;
        if IsNewColoredTree(output, tmp, c!.aut) then
          Add(output, tmp);
        fi;
      fi;
    od;
  od;
  return output;
end;

# Given an integer <d>, the function returns
# a list of equivalence classes of subgroups of index <d> 
# in SL(2,Z) as an oriented graph. 
# PSL?
TreeDiagrams := function(d)
  local b, r, k, from, to, l;

  if d = 1 then
    return [rec( aut := Group([(1,2)]), tree_aut := Group([(1,2)]), 
    coloring := [ [ 1 ], [ 2 ], () ], graph := [ [ false, true ], [ true, false ] ],
      orientation := [ [  ], [  ], () ], size := 2 )];
  fi;

  if d = 2 then
    return [rec( aut := Group([(1,2)]), tree_aut := Group([(1,2)]), 
    coloring := [ [ 1, 2 ], [ ], () ], graph := [ [ false, true ], [ true, false ] ],
      orientation := [ [  ], [  ], () ], size := 2 )];
  fi;

  from := Int(Ceil(Float((d-2)/4))); 
  to := Int(Floor(Float(d/3)));

  l := [];

  for k in [from..to] do
    b := d-3*k;
    for r in [0..Int((k+2-b)/2)] do
      Append(l, ColoredTree(b, k+2-2*r-b, r)); 
    od;
  od;
  return l;
end;

# Given an oriented tree <obj> and an external vertex <x>, the function 
# returns the vertex of <obj> to the left of <x>. 
LeftVertex := function(obj, x)
  local c, k, l, g, y, z;

  if x < obj!.size/2 then
    return fail;
  fi;

  g := ShallowCopy(obj);
  for c in obj!.orientation do 
    k := Position(obj!.orientation, c);
    if c = () then
      l := VerticesAdjacentTo(obj!.graph, k);
      g!.orientation[k] := (l[1], l[2], l[3]); # We now choose one arbitrary orientation 
    fi;
  od;

  y := VerticesAdjacentTo(obj!.graph, x)[1];

  while y <= obj!.size/2-1 do
    z := y;
    y := x^Inverse(g!.orientation[y]);
    x := z;
  od;

  return y;
end;

# Given an oriented tree <obj> and an external vertex <x>, the function 
# returns the vertex of <obj> to the right of <x>. 
RightVertex := function(obj, x)
  local c, k, l, g, y, z;

  if x < obj!.size/2 then
    return fail;
  fi;

  g := ShallowCopy(obj);
  for c in obj!.orientation do 
    k := Position(obj!.orientation, c);
    if c = () then
      l := VerticesAdjacentTo(obj!.graph, k);
      g!.orientation[k] := (l[1], l[2], l[3]); # We now choose one arbitrary orientation 
    fi;
  od;

  y := VerticesAdjacentTo(obj!.graph, x)[1];

  while y <= obj!.size/2-1 do
    z := y;
    y := x^g!.orientation[y];
    x := z;
  od;

  return y;
end;


# Given a colored tree <obj> the function
# returns the associated Kulkarni diagram. 
ColoredTree2KulkarniDiagram := function(obj)
  local n, v, w, x, p;

  n := obj!.size;
  v := Concatenation([infinity], [0..n/2-1], [infinity]);
  w := [1..n/2+1]; 

  # Even
  for x in obj!.coloring[2] do
    w[x-n/2+1] := "even";
  od;

  # Odd
  for x in obj!.coloring[1] do
    w[x-n/2+1] := "odd";
  od;
  
  p := obj!.coloring[3];
  for x in MovedPoints(p) do
    if x^p > x then
      w[x-n/2+1] := x;
      w[x^p-n/2+1] := x;
    fi;
  od;
  
  obj!.farey_symbol := FareySymbolByData(v, w);
  return obj;
end;

# Given a colored tree <obj>, this function
# returns the linear system of the inequivalent cups of <obj>. 
SystemNumberOfCusps := function(obj)
  local e, f, i, j, n, m;

  n := obj!.size/2+1;
  m := NullMat(n, n);

  for i in [1..n] do 
    e := i+obj!.size/2-1;
    if e in Union(obj!.coloring[1], obj!.coloring[2]) then
      j := RightVertex(obj, e)-obj!.size/2+1;
      m[i][i] := 1;
      m[i][j] := -1;
    else
      m[i][i] := 1;
      f := RightVertex(obj, e^obj!.coloring[3]);
      j := f-obj!.size/2+1;
      if f = e then
        m[i][j] := 0;
      else
        m[i][j] := -1;
      fi;
    fi;
  od;
  return m;
end;

# Given a Kulkarni diagram <kdiagram>, this function
# returns the permutation group associated to the cups relations of <obj>. 
CuspsRelations := function(kdiagram)
  local e, f, i, j, n, gens;

  n := kdiagram!.size/2+1;

  gens := [];

  for i in [1..n] do 
    e := i+kdiagram!.size/2-1;
    if e in Union(kdiagram!.coloring[1], kdiagram!.coloring[2]) then
      j := RightVertex(kdiagram, e)-kdiagram!.size/2+1;
    else
      f := RightVertex(kdiagram, e^kdiagram!.coloring[3]);
      j := f-kdiagram!.size/2+1;
    fi;
    if not i = j then
      Add(gens, (i,j));
    fi;
  od;
  return Group(gens);
end;


# Given a Kulkarni diagram <kdiagram>, this function 
# returns the number of inequivalent cups of <kdiagram>. 
# Example:
# gap> List(TreeDiagrams(4), NumberOfusps);
# [ 1, 1, 1, 2, 2, 2 ]
NumberOfCusps := function(kdiagram)
  return Size(NullspaceMat(TransposedMat(SystemNumberOfCusps(kdiagram))));
end;

# Given a Kulkarni diagram <kdiagram>, this function 
# returns the genus of the upper half plane quotient by <kdiagram>. 
# Example:
# gap> List(TreeDiagrams(4), Genus);
# [ 0, 0, 0, 0, 0, 0 ]
Genus := function(kdiagram)
  local f;
  f := (kdiagram!.size/2+1-Size(Union(kdiagram!.coloring[1], kdiagram!.coloring[2])))/2;
  return (f+1-NumberOfCusps(kdiagram))/2;
end;

# Given a Kulkarni diagram <kdiagram>, this function
# computes all equivalence classes of cusps.
EquivalenceClassesCusps := function(kdiagram)
  local i, j, m, ac, cclass;
  
  m := SystemNumberOfCusps(kdiagram);
  cclass := [];

  for i in [1..Size(m)] do
    if [m[i]] = NullMat(1,Size(m)) then
      Add(cclass,[i]);
    else
      ac := [i];
      j := Position(m[i],-1);
      while j <> i do
        Add(ac,j);
        j := Position(m[j],-1);
      od;
      Sort(ac);
      AddSet(cclass,ac);
    fi;
  od;
  return cclass;
end;

# Given a Kulkarni diagram <kdiagram> and a <cusp>, this function
# returns the widths of the k-cusp.
WidthOfCusp := function(kdiagram, k)
  local gr, d, fs, gfs, cfs, i, n; 

  gr := CuspsRelations(kdiagram);

  fs := kdiagram!.farey_symbol;

  gfs := GeneralizedFareySequence(fs);
  cfs := LabelsOfFareySymbol(fs);

  n := Size(gfs);
  d := 0;

  for i in Orbit(gr, k) do
    if i=1 then
      d := d+AbsoluteValue(NumeratorOfGFSElement(gfs, n-1)*DenominatorOfGFSElement(gfs, 2)-DenominatorOfGFSElement(gfs, n-1)*NumeratorOfGFSElement(gfs, 2));
      if cfs[1] = "odd" then
        d := d+1/2;
      fi;
      if cfs[n-1] = "odd" then
        d := d+1/2;
      fi;
    else
      d := d+AbsoluteValue(NumeratorOfGFSElement(gfs, i-1)*DenominatorOfGFSElement(gfs, i+1)-DenominatorOfGFSElement(gfs, i-1)*NumeratorOfGFSElement(gfs, i+1));
      if cfs[i-1] = "odd" then
        d := d+1/2;
      fi;	
      if cfs[i] = "odd" then
        d := d+1/2;
      fi;
    fi;
  od;
  return d;
end;

# Given a colored tree <obj> the function
# returns the generators of an associated subgroup. 
#Generators := function(kdiagram)
#  return GeneratorsByFareySymbol(ColoredTree2FareySymbol(obj));
#end;

# Given a generalized <farey_symbol> and an integer <k> 
# corresponding the the place of the k-cusp, 
# the function computes...
#CuspGeneratorsByFareySymbol := function(farey_symbol, k)
#  local a, b, c, d, a2, b2, c2, d2, j, gfs, cfs;
#
#  gfs := GeneralizedFareySequence(farey_symbol);
#  cfs := LabelsOfFareySymbol(farey_symbol);
#
#  a := NumeratorOfGFSElement(gfs, k+1);
#  b := DenominatorOfGFSElement(gfs, k+1);
#  c := NumeratorOfGFSElement(gfs, k);
#  d := DenominatorOfGFSElement(gfs, k);
# 
#  if cfs[k] = "even" then
#    return [[a*b+c*d,-c^2-a^2], [b^2+d^2,-a*b-c*d]];
#  elif cfs[k] = "odd" then
#    return [[a*b+c*b+c*d,-c^2-a*c-a^2], [b^2+b*d+d^2,-a*b-a*d-c*d]];
#  else
#    j := Filtered([1..Size(cfs)], x->cfs[x]=cfs[k] and x <> k)[1];
#    a2 := NumeratorOfGFSElement(gfs, j+1);
#    b2 := DenominatorOfGFSElement(gfs, j+1);
#    c2 := NumeratorOfGFSElement(gfs, j);
#    d2 := DenominatorOfGFSElement(gfs, j);
#    return [[a2*b+c2*d,-c2*c-a2*a], [d2*d+b2*b,-a*b2-c*d2]];
#  fi;
#end;

# Given a Kulkarni diagram <kdiagram> and an integer <k> 
# corresponding the the place of the k-cusp, 
# the function computes...
CuspGenerators := function(kdiagram, k)
  local a, b, c, d, a2, b2, c2, d2, j, gfs, cfs;

  gfs := GeneralizedFareySequence(kdiagram!.farey_symbol);
  cfs := LabelsOfFareySymbol(kdiagram!.farey_symbol);

  a := NumeratorOfGFSElement(gfs, k+1);
  b := DenominatorOfGFSElement(gfs, k+1);
  c := NumeratorOfGFSElement(gfs, k);
  d := DenominatorOfGFSElement(gfs, k);
 
  if cfs[k] = "even" then
    return [[a*b+c*d,-c^2-a^2], [b^2+d^2,-a*b-c*d]];
  elif cfs[k] = "odd" then
    return [[a*b+c*b+c*d,-c^2-a*c-a^2], [b^2+b*d+d^2,-a*b-a*d-c*d]];
  else
    j := Filtered([1..Size(cfs)], x->cfs[x]=cfs[k] and x <> k)[1];
    a2 := NumeratorOfGFSElement(gfs, j+1);
    b2 := DenominatorOfGFSElement(gfs, j+1);
    c2 := NumeratorOfGFSElement(gfs, j);
    d2 := DenominatorOfGFSElement(gfs, j);
    return [[a2*b+c2*d,-c2*c-a2*a], [d2*d+b2*b,-a*b2-c*d2]];
  fi;
end;

# Given an element <g> of SL(2,Z) and a Kulkarni diagram <kdiagram> 
# the function returns a reduction of <g>. 
ReducedModulo := function(g, kdiagram)
  local a, b, c, l, x, y, m, gfs, cfs, gens, case, quotient;

  quotient := function(a, b)
    if b = 0 then
      return infinity;
    else
      return a/b;
    fi;
  end;

  gfs := GeneralizedFareySequence(kdiagram!.farey_symbol);
  cfs := LabelsOfFareySymbol(kdiagram!.farey_symbol);

  if g[2][1] = 0 then
    case := 1;
  elif g[2][2] = 0 then
    case := 2;
  else 
    case := "generic";
  fi;

  if case = "generic" then
    if g[1][2]/g[2][2] > g[1][1]/g[2][1] then
      x := ReducedModulo([[-g[1][2],g[1][1]],[-g[2][2],g[2][1]]], kdiagram);
      return [[-x[1][2],x[1][1]],[-x[2][2],x[2][1]]];
    fi;
  elif case = 1 then
    if g[1][1] < 0 and g[1][2]/g[2][2] > gfs[Size(gfs)-1] then
      g := -g;
    elif g[1][1] > 0 and g[1][2]/g[2][2] < 0 then
      g := -g;
    fi;

    if g[1][1] < 0 then    
      x := ReducedModulo([[-g[1][2],g[1][1]],[-g[2][2],g[2][1]]], kdiagram);
      return [[-x[1][2],x[1][1]],[-x[2][2],x[2][1]]];
    fi;

  elif case = 2 then
    if g[1][1]/g[2][1] < 0 and g[1][2] > 0 then
      g := -g;
    elif g[1][1]/g[2][1] > gfs[Size(gfs)-1] and g[1][2] < 0 then
      g := -g;
    fi;

    if g[1][2] > 0 then 
      x := ReducedModulo([[g[1][2],-g[1][1]],[g[2][2],-g[2][1]]], kdiagram);
      return [[x[1][2],-x[1][1]],[x[2][2],-x[2][1]]];
    fi;
  fi;

  a := quotient(g[1][2], g[2][2]);
  b := quotient(g[1][1], g[2][1]);

  if a in gfs and b in gfs then 
    return g;
  else
    if case = 1 then
      c := Size(gfs);
    elif case = 2 then
      c := 2;
    elif case = "generic" then 
      if b in gfs then
        c := Position(gfs{[2..Size(gfs)-1]}, b)+1;
      else
        l := Concatenation(gfs{[2..Size(gfs)-1]}, [b]); 
        Sort(l);
        c := Position(l, b)+1;
      fi;
    fi;
  fi;

  if not cfs[c-1] = "odd" then
    y := CuspGenerators(kdiagram, c-1);
  else
    m := (NumeratorOfGFSElement(gfs, c-1)+NumeratorOfGFSElement(gfs, c))/(DenominatorOfGFSElement(gfs, c-1)+DenominatorOfGFSElement(gfs, c));
    if g[2][1] = 0 or b > m then
      y := CuspGenerators(kdiagram, c-1);
    else
      y := Inverse(CuspGenerators(kdiagram, c-1));
    fi;
  fi;
  return ReducedModulo(y*g, kdiagram);
end;

# Given a Kulkarni diagram <kdiagram> and a matrix <g>
# the function checks whether <g> belongs to the 
# subgroup corresponding to the diagram. 
IsInSubgroup := function(g, kdiagram)
  local x, gfs, cfs, quotient; 

  quotient := function(a, b)
    if b = 0 then
      return infinity;
    else
      return a/b;
    fi;
  end;

  g := ReducedModulo(g, kdiagram);

  gfs := GeneralizedFareySequence(kdiagram!.farey_symbol);
  cfs := LabelsOfFareySymbol(kdiagram!.farey_symbol);
  
  if IsIdentityMat(g) or IsIdentityMat(-g) then
    return true;
  elif not cfs[1] in ["odd", "even"] then
    x := CuspGenerators(kdiagram, 1);
    if g in [x, -x, Inverse(x), -Inverse(x)] then
      return true;
    fi;
  elif g in [[[0,-1],[1,0]], [[0,1],[-1,0]]] then
    return gfs[2] = 0 and cfs[1] = "even"; 
  fi;
  return false;
end;

# Given a Kulkarni diagram <kdiagram> the function
# returns a list of coset representatives of the 
# corresponding subgroup. 
CosetRepresentatives := function(kdiagram)
  local reps, cfs, gfs, T, phi, w, i, j, n;

  reps := [];

  gfs := GeneralizedFareySequence(kdiagram!.farey_symbol);
  cfs := LabelsOfFareySymbol(kdiagram!.farey_symbol);
  
  n := Size(gfs);

  T := [[1,1],[0,1]];;

  for i in [1..n-1] do
    if i = 1 then
      w := AbsoluteValue(NumeratorOfGFSElement(gfs, n-1)*DenominatorOfGFSElement(gfs, 2)-DenominatorOfGFSElement(gfs, n-1)*NumeratorOfGFSElement(gfs, 2));
    else
      w := AbsoluteValue(NumeratorOfGFSElement(gfs, i-1)*DenominatorOfGFSElement(gfs, i+1)-DenominatorOfGFSElement(gfs, i-1)*NumeratorOfGFSElement(gfs, i+1));
    fi;
    phi := [[-NumeratorOfGFSElement(gfs, i), NumeratorOfGFSElement(gfs, i+1)],[-DenominatorOfGFSElement(gfs, i), DenominatorOfGFSElement(gfs, i+1)]];
    if cfs[i] = "odd" then
      Add(reps, phi*Inverse(T));
    fi;
    for j in [0..w-1] do
      Add(reps, phi*T^j);
    od;
  od;
  return reps;
end;

# Given a Kulkarni diagram <kdiagram>, the function
# computes the passport. 
KulkarniDiagram2Passport := function(kdiagram)
  local s, t, d, reps, i, p, q, v;

  s := [[0,-1],[1,0]];
  t := [[1,1],[0,1]];

  reps := CosetRepresentatives(kdiagram);

  d := Size(reps);
  p := [1..d];
  q := [1..d];

  v := List(reps, x->x*s);
  for i in [1..d] do 
    p[i] := First([1..d], x->IsInSubgroup(v[i]*Inverse(reps[x]), kdiagram));
  od;
  
  v := List(reps, x->x*t);
  for i in [1..d] do
    q[i] := First([1..d], x->IsInSubgroup(v[i]*Inverse(reps[x]), kdiagram));
  od;

  return [PermList(p), PermList(p)*PermList(q), PermList(q)];

end;

# Given two permutations <p1> and <p2> and an integer <n>, the function
# checks whether the pairs of permutations 
# are conjugate in SL_2(Z). 
SL2PermutationsAreEquivalent := function(n, p1, p2)
  return not fail = RepresentativeAction(SymmetricGroup(n), [p1[1], p1[2]], [p2[1], p2[2]], OnPairs);
end;

# Given two Kulkarni diagrams <k1> and <k2> and an integer <n>, the function
# checks whether the passports associated with these diagrams 
# are conjugate. 
KulkarniDiagramsAreEquivalent := function(n, k1, k2)
  local p1, p2;

  p1 := KulkarniDiagram2Passport(k1);
  p2 := KulkarniDiagram2Passport(k2);

  return SL2PermutationsAreEquivalent(n, p1, p2);

end;

# Given two permutations <p1> and <p2> and an integer <n>, the function
# checks whether the pairs of permutations 
# are conjugate in GL_2(Z) 
GL2PermutationsAreEquivalent := function(n, p1, p2)
  return not fail = RepresentativeAction(SymmetricGroup(n), [p1[1], p1[2]], [p2[1], p2[2]], OnPairs)
  or not fail = RepresentativeAction(SymmetricGroup(n), [p1[1], p1[2]], [p2[1], Inverse(p2[2])], OnPairs);
end;

# Given a positive integer <n> the function returns a list 
# index-n subgroups of PSL_2(Z) up to conjugation 
# by SL_2(Z)
SL2RepresentativesOfSubgroups := function(n)
  local res, x, pairs;

  res := [];
  pairs := List(TreeDiagrams(n), x->KulkarniDiagram2Passport(ColoredTree2KulkarniDiagram(x)));

  for x in pairs do
    if ForAll(res, y->not SL2PermutationsAreEquivalent(n, x, y)) then
      Add(res, x);
    fi;
  od;

  return res; 
end;

GL2RepresentativesOfSubgroups := function(n)
  local res, x, pairs;

  res := [];
  pairs := List(TreeDiagrams(n), x->KulkarniDiagram2Passport(ColoredTree2KulkarniDiagram(x)));

  for x in pairs do
    if ForAll(res, y->not GL2PermutationsAreEquivalent(n, x, y)) then
      Add(res, x);
    fi;
  od;

  return res; 
end;

# Given a Kulkarni diagram <kdiagram>, the function
# checks wether the corresponding subgroup 
# is a congruence subgroup. 
IsACongruenceSubgroup := function(kdiagram)
  local R, L, a, b, c, d, e, m, n, s, z, r, l, reps, p, q, v, i;

  L := [[1,1],[0,1]];
  R := [[1,0],[1,1]];

  reps := CosetRepresentatives(kdiagram);

  d := Size(reps);
  p := [1..d];
  q := [1..d];

  v := List(reps, x->x*L);
  for i in [1..d] do 
    p[i] := First([1..d], x->IsInSubgroup(v[i]*Inverse(reps[x]), kdiagram));
  od;
  
  v := List(reps, x->x*R);
  for i in [1..d] do
    q[i] := First([1..d], x->IsInSubgroup(v[i]*Inverse(reps[x]), kdiagram));
  od;

  p := PermList(p);
  q := PermList(q);
  n := Order(p);

  if IsOddInt(n) then
    return IsOne((q^2*Inverse(p)^((n+1)/2))^3);  
  else
    e := 2^Valuation(n,2);
    m := n/e;
    if m = 1 then
      z := GcdRepresentation(5,n)[1];
      s := p^20*q^z*Inverse(p^4)*Inverse(q);
      return IsOne(Inverse(p*Inverse(q)*p)*s*p*Inverse(q)*p*s) 
        and IsOne(Inverse(s)*q*s*Inverse(q^25)) 
        and IsOne((s*q^5*p*Inverse(q)*p)^3);
    else
      z := GcdRepresentation(5,e)[1];
      c := ChineseRem([e,m],[0,1]);
      d := ChineseRem([e,m],[1,0]);
      a := p^c;
      b := q^c;
      l := p^d;
      r := q^d;
      s := l^20*r^z*Inverse(l^4)*Inverse(r);
      return IsOne(a*r*Inverse(a)*Inverse(r)) 
        and IsOne((a*Inverse(b)*a)^4)
        and IsOne((a*Inverse(b)*a)^2*(Inverse(b)*a)^(-3))
        and IsOne((a*Inverse(b)*a)^2*(b^2*Inverse(a)^((m+1)/2))^(-3))
        and IsOne(Inverse(l*Inverse(r)*l)*s*l*Inverse(r)*l*s)
        and IsOne(Inverse(s)*r*s*Inverse(r^25))
        and IsOne((l*Inverse(r)*l)^2*Inverse((s*r^5*l*Inverse(r)*l)^3));
    fi;  
  fi;
end;

# Our object is a record with the following components:
# A Kulkarni diagram an oriented tree 
# with a <coloring> of the external vertices 
# and a generalized Farey Symbol, that is: 
# 1) An extended <graph>. 
# 2) An <orientation>. 
# 3) The <size>.   
# 4) The automorphism group <tree_aut> of the tree.
# 5) The automorphism group <aut> of the oriented tree. 
# 6) A <coloring>. 
# 7) A generalized <farey_symbol>.

ComputeTables := function(bound)
  local s, k, g, n, t0, t1, t2, t3, mytime;

  s := [1..bound]; 
  k := [1..bound]; 
  g := [1..bound];

  t0 := NanosecondsSinceEpoch();

  for n in [2..bound] do
    t1 := NanosecondsSinceEpoch();

    s[n] := TreeDiagrams(n);
    k[n] := List(s[n], ColoredTree2KulkarniDiagram);
#    g[n] := List(f[n], GeneratorsByFareySymbol);

    t2 := NanosecondsSinceEpoch();
    mytime := Int(Float((t2-t1)/10^6));
    Print("Index: ", n, ", I constructed ", Size(s[n]), " subgroups in ", mytime , "ms (=", StringTime(mytime), ")\n");
  od;

  t3 := NanosecondsSinceEpoch();
  mytime := Int(Float((t3-t0)/10^6));
  Print("--\nI constructed ", bound, " tables in ", mytime , "ms (=", StringTime(mytime), ")\n");

  return [s,k];
end;

ComputeSL2Classes := function(bound)
  local s, n, t0, t1, t2, t3, mytime;

  s := [1..bound]; 

  t0 := NanosecondsSinceEpoch();

  for n in [2..bound] do
    t1 := NanosecondsSinceEpoch();

    s[n] := SL2RepresentativesOfSubgroups(n);

    t2 := NanosecondsSinceEpoch();
    mytime := Int(Float((t2-t1)/10^6));
    Print("Index: ", n, ", I constructed ", Size(s[n]), " SL2 representatives of subgroups in ", mytime , "ms (=", StringTime(mytime), ")\n");
  od;

  t3 := NanosecondsSinceEpoch();
  mytime := Int(Float((t3-t0)/10^6));
  Print("--\nI constructed ", bound, " tables in ", mytime , "ms (=", StringTime(mytime), ")\n");

  return s;
end;

ComputeGL2Classes := function(bound)
  local s, n, t0, t1, t2, t3, mytime;

  s := [1..bound]; 

  t0 := NanosecondsSinceEpoch();

  for n in [2..bound] do
    t1 := NanosecondsSinceEpoch();

    s[n] := GL2RepresentativesOfSubgroups(n);

    t2 := NanosecondsSinceEpoch();
    mytime := Int(Float((t2-t1)/10^6));
    Print("Index: ", n, ", I constructed ", Size(s[n]), " GL2 representatives of subgroups in ", mytime , "ms (=", StringTime(mytime), ")\n");
  od;

  t3 := NanosecondsSinceEpoch();
  mytime := Int(Float((t3-t0)/10^6));
  Print("--\nI constructed ", bound, " tables in ", mytime , "ms (=", StringTime(mytime), ")\n");

  return s;
end;


