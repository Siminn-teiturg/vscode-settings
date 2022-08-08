def Automaton(lst):
    curr = "0"
    for i in lst:
        curr = adj[int(curr)][int(i)]
    return curr == "1"

adj = [
    ["0", "1"],
    ["2", "1"],
    ["1", "1"],
]

s = "0010"
s = "1010"
lst = list(s)
print(Automaton(lst))
