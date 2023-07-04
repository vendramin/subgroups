LoadPackage("io");

# This function creates files with the 
# graphs in graphviz format. Note that it only works
# with graphs of up to ten vertices. 
CreateGraph := function(kdiagram, filename)
  local i,j,f,str,size,label;

	# Only for "small" graphs. 
  # The graph with only one vertex is excluded :)
	if kdiagram!.size >= 10 or kdiagram!.size = 1 then
		return fail;
	fi;
  
  f := IO_File(filename, "w");
  size := Size(kdiagram!.graph);

  IO_WriteLine(f, "graph diagram {");
  IO_WriteLine(f, "node [shape=point,color=black];");
  IO_WriteLine(f, "rankdir = LR;");
  IO_WriteLine(f, "subgraph subdiagram {");
  
  if size = 4 then
    IO_WriteLine(f, "1;");
  elif size = 2 or size = 6 then
    IO_WriteLine(f, "1 -- 2;");   
  elif size = 8 then
    IO_WriteLine(f, "2 -- 1 -- 3;");    
  fi;

  IO_WriteLine(f, "}");

  if size = 4 or size = 6 then
    IO_WriteLine(f, "{3,4} -- 1;");
  elif size = 8 then
    IO_WriteLine(f, "{7,8} -- 2;");
    IO_WriteLine(f, "{rank=same;1 -- 4};");
  fi;
 
  if size = 4 then
    IO_WriteLine(f, "1 -- 2;");
  elif size = 6 or size = 8 then
    IO_WriteLine(f, String(size/2-1)," -- {6,5}");
  fi;    

  for i in [size/2..size] do
    if i in kdiagram!.coloring[1] then
      IO_WriteLine(f, String(i)," [color=blue];");   
    elif i in kdiagram!.coloring[2] then
      IO_WriteLine(f, String(i)," [color=red];");
    elif i in MovedPoints(kdiagram!.coloring[3]) then
      label := Minimum(i,i^kdiagram!.coloring[3]);
      IO_WriteLine(f, String(i)," [fillcolor=red,xlabel=",String(label),"];");
    fi;
  od;

  IO_WriteLine(f, "}");
  IO_Flush(f);
  IO_Close(f);
end;

# This function uses the Yags internal drawing system
# to draw the underlying graph. The inner vertices
# are highligthed. 
# Commands:
# H - Show help.
# L - Show/hide labels.
# R - Reorder vertices.
DrawWithYags := function(kdiagram)
  #Draw(GraphByAdjMatrix(kdiagram!.graph), kdiagram!.coloring[1]);
  Draw(GraphByAdjMatrix(kdiagram!.graph));
end;

