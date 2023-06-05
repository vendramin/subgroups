# This script shows some information 
# of all Kulkarni diagrams (up to conjugation by SL_2(Z)) 
# corresponding to subgroups of index up to 10.

### TODO
### FIXME
### CuspsRelations no anda con 2

LogTo("blah");


# We need our package 
Read("kulkarni.g");

from := 3;
to := 10;

# This is where we will store the data.
data := List([1..to], x->[]);

# First we collect all data from the database.
for k in [from..to] do
  Read(Concatenation("data/uptoSL2_", String(k), ".g"));
  Append(data[k], diagrams);
od;

for k in [1..Size(data)] do
  if not data[k] = [] then
    Print("\nIndex ", k);
    for x in data[k] do
      Print("\nFarey symbol: ", x!.farey_symbol);
      Print("\nPassport: ", KulkarniDiagram2Passport(x));
      Print("\nCups generators: ", CuspsRelations(x));
      eq := EquivalenceClassesOfCusps(x);
      Print("\nEquivalence classes of cusps: ", eq);
      for j in [1..Size(eq)] do
        Print("\n Cusp ", j, ", width: ", WidthOfCusp(x, j));
      od;
      Print("\n--");
    od;
  fi;
od;





