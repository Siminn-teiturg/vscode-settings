def start(lst):
    lst.reverse()
    return q1(lst)

def q1(lst):
    if len(lst) == 0: return False
    x = lst.pop()
    if x == "0": return q1(lst)
    elif x == "1": return q2(lst)

def q2(lst):
    if len(lst) == 0: return True
    x = lst.pop()
    if x == "1": return q2(lst)
    else: return q3(lst)

def q3(lst):
    if len(lst) == 0: return False
    x = lst.pop()
    return q2(lst)

s = "0000"
lst = list(s)
print(s)
print(start(lst))