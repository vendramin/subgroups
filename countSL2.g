LoadPackage("congruence");

Read("kulkarni.g");

LogTo("countSL2.log");

from := 1;
to := 20;

for k in [from..to] do
  Read(Concatenation("data/uptoSL2_", String(k), ".g"));
  Print("Index: ", k, ". There are ", Size(diagrams), " subgroups (modulo GL_2(Z)).\n");
od;

