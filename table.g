# This script shows some information 
# of all Kulkarni diagrams (up to conjugation by SL_2(Z)) 
# corresponding to subgroups of index up to 10.

LogTo("table.log");

# We need our package 
Read("kulkarni.g");
Read("graph.g");

from := 2;
to := 10;

# This is where we will store the data.
data := List([1..to], x->[]);

# First we collect all data from the database.
for k in [from..to] do
  Read(Concatenation("data/uptoSL2_", String(k), ".g"));
  Append(data[k], diagrams);
od;

for k in [1..Size(data)] do
  l := 0;
  if not data[k] = [] then
    Print("\nIndex ", k);
    for x in data[k] do
      l := l+1;
      Print("\nFarey symbol: ", x!.farey_symbol);
      Print("\nPassport: ", KulkarniDiagram2Passport(x));
  #    Print("\nCups generators: ", CuspsRelations(x));
      Print("\nGraph: graph/modSL2_index", String(k), "_", String(l), ".dot");

      CreateGraph(x, Concatenation("graph/modSL2_index", String(k), "_", String(l), ".dot"));

      Print("\nGenus: ", Genus(x));
      Print("\nDegree 2 ramified points: ", NrDegreeTwoRamifiedPoints(x));
      Print("\nDegree 3 ramified points: ", NrDegreeThreeRamifiedPoints(x));
      eq := EquivalenceClassesOfCusps(x);
      Print("\nEquivalence classes of cusps: ", eq);
      for j in [1..Size(eq)] do
        Print("\n Cusp ", j, ", width: ", WidthOfCusp(x, j));
      od;
      Print("\nGenerators: ", Generators(x));
      Print("\nIs a congruence subgroup? ", IsACongruenceSubgroup(x));
      Print("\n--");
    od;
  fi;
od;





