# We need the IO package for reading and writing files
LoadPackage("io");

Read("kulkarni.g");

# This function creates the data files 
# of Kulkarni diagrams modulo conjugation in SL_2(Z)
#
# Example:
# To create files corresponding to subgroups
# of index 2,3,4,5 do the following:
# gap> CreateFilesModuloSL2(2,5);
CreateFilesModuloSL2 := function(from, to)
  local k, f, diagrams, j;

  for k in [from..to] do
    f := Concatenation("data/uptoSL2_", String(k), ".g");
  
    PrintTo(f, "\# To read this file you need the package \"congruence\"\n");
    AppendTo(f, "\# gap> LoadPackage(\"congruence\");\n\n");
  
    # We construct Kulkarni diagrams up to SL2-equivalence 
    diagrams := KulkarniDiagramsUpToSL2Equivalence(k);
  
    AppendTo(f, "diagrams := [");
  
    for j in [1..Size(diagrams)] do
      AppendTo(f, diagrams[j]);
      if j < Size(diagrams) then 
        AppendTo(f, ",\n");
      else
        AppendTo(f, "\n];");
      fi;
    od;
  od;
end;

# This function creates the data files 
# of Kulkarni diagrams modulo conjugation in GL_2(Z)
#
# Example:
# To create files corresponding to subgroups
# of index 2,3,4,5 do the following:
# gap> CreateFilesModuloGL2(2,5);
CreateFilesModuloGL2 := function(from, to)
  local k, f, diagrams, j;

  for k in [from..to] do
    f := Concatenation("data/uptoGL2_", String(k), ".g");
  
    PrintTo(f, "\# To read this file you need the package \"congruence\"\n");
    AppendTo(f, "\# gap> LoadPackage(\"congruence\");\n\n");
  
    # We construct Kulkarni diagrams up to GL2-equivalence 
    diagrams := KulkarniDiagramsUpToGL2Equivalence(k);
  
    AppendTo(f, "diagrams := [");
  
    for j in [1..Size(diagrams)] do
      AppendTo(f, diagrams[j]);
      if j < Size(diagrams) then 
        AppendTo(f, ",\n");
      else
        AppendTo(f, "\n];");
      fi;
    od;
  od;
end;
