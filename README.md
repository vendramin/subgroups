# subgroups

Our script uses the GAP packages [Yags](https://github.com/yags/yags) and [ToolsForHomalg](https://github.com/homalg-project/homalg_project/tree/master/ToolsForHomalg). 

Here we show an example of the calculations related to conjugacy classes in $GL_2(\Z)$:

```
gap> ComputeGL2Classes(10);;
Index: 2, I constructed 1 GL2 representatives of subgroups in 0ms (= 0:00:00.000)
Index: 3, I constructed 2 GL2 representatives of subgroups in 8ms (= 0:00:00.008)
Index: 4, I constructed 2 GL2 representatives of subgroups in 9ms (= 0:00:00.009)
Index: 5, I constructed 1 GL2 representatives of subgroups in 4ms (= 0:00:00.004)
Index: 6, I constructed 8 GL2 representatives of subgroups in 28ms (= 0:00:00.028)
Index: 7, I constructed 4 GL2 representatives of subgroups in 26ms (= 0:00:00.026)
Index: 8, I constructed 6 GL2 representatives of subgroups in 31ms (= 0:00:00.031)
Index: 9, I constructed 12 GL2 representatives of subgroups in 134ms (= 0:00:00.134)
Index: 10, I constructed 19 GL2 representatives of subgroups in 324ms (= 0:00:00.324)
--
Here we show an example of the calculations related to conjugacy classes in $GL_2(\Z)$:
```
```
I constructed 10 tables in 568ms (= 0:00:00.568)
gap> ComputeSL2Classes(10);;
Index: 2, I constructed 1 SL2 representatives of subgroups in 0ms (= 0:00:00.000)
Index: 3, I constructed 2 SL2 representatives of subgroups in 8ms (= 0:00:00.008)
Index: 4, I constructed 2 SL2 representatives of subgroups in 10ms (= 0:00:00.010)
Index: 5, I constructed 1 SL2 representatives of subgroups in 4ms (= 0:00:00.004)
Index: 6, I constructed 8 SL2 representatives of subgroups in 24ms (= 0:00:00.024)
Index: 7, I constructed 6 SL2 representatives of subgroups in 24ms (= 0:00:00.024)
Index: 8, I constructed 7 SL2 representatives of subgroups in 28ms (= 0:00:00.028)
Index: 9, I constructed 14 SL2 representatives of subgroups in 123ms (= 0:00:00.123)
Index: 10, I constructed 27 SL2 representatives of subgroups in 298ms (= 0:00:00.298)
--
I constructed 10 tables in 524ms (= 0:00:00.524)
```
