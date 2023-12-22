A = frozenset([1, 2, 3, 4])
B = frozenset([3, 4, 5, 6])

# copying a frozenset
C = A.copy()
print(C)

# union
print(A.union(B))

# intersection
print(A.intersection(B))  

# difference
print(A.difference(B))

# symmetric_difference
print(A.symmetric_difference(B))  