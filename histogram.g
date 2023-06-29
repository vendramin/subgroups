LoadPackage("congruence");

Read("kulkarni.g");

LogTo("histogram.log");

from := 1;
to := 20;

for k in [from..to] do
  Read(Concatenation("data/uptoSL2_", String(k), ".g"));
  Print("Index: ", k, "\n");

  Print("There are ", Size(diagrams), " subgroups (modulo SL_2(Z)).\n");
  Print(Number(diagrams, IsACongruenceSubgroup), " are congruence subgroups.\n");

  genus := [];
  for x in diagrams do
    Add(genus, Genus(x));
  od;

  Print("Genera: ", Set(genus), "\n");
  Display(Collected(genus));

  Print("--\n");
od;

