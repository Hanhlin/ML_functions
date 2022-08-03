Control.Print.printDepth := 100;
Control.Print.printLength := 100;

"====== 1 =====";

fun insert x [] = [x]
 |	insert x (a::rest) = if a >= x then (x::a::rest) else  a :: insert x rest;
 
"====== 2 =====";

fun sort [] = []
 |	sort (a::rest) = insert a (sort rest);

"====== 3 =====";

infix %;

fun polySort (op %) [] = []
 |  polySort (op %) (a::rest) = let fun insert x [] = [x]
                                     |  insert x (b::r) = if x % b then (x::b::r) else b :: insert x r
                                in insert a (polySort (op %) rest) end;
                                
"====== 4 =====";

fun fold (op %) [] b = b
 |  fold (op %) (a::rest) b = a % (fold (op %) rest b);

"====== 5 =====";

datatype 'a tree = leaf of 'a | node of 'a tree list;

"====== 6 =====";

fun fringe (leaf x) = [x]
 |  fringe (node (child)) = fold (op @) (map fringe child) [];

"====== 7 =====";

fun mapTree f (leaf x) = leaf (f x)
 |  mapTree f (node (child)) = node (map (fn x => mapTree f x) child);

"====== 8 =====";

fun sortTree (op %) T = mapTree (fn x => polySort (op %) x) T;

"====== 9 =====";

fun mergeList (op %) L1 [] = L1
 |  mergeList (op %) [] L2 = L2
 |  mergeList (op %) (a::rest) (b::r) = if a % b then a :: (mergeList (op %) rest (b::r)) 
                                                 else b :: (mergeList (op %) (a::rest) r);

"====== 10 =====";

fun mergeTree (op %) T = fold (fn (x,y) => mergeList (op %) x y) (fringe (sortTree (op %) T)) [];



