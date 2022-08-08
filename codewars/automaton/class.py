class Automaton(object):

    def __init__(self):
        self.states = [["0","1"],["2","1"],["1","1"]]

    def read_commands(self, commands):
        # Return True if we end in our accept state, False otherwise
        curr = "0"
        for i in commands:
            curr = self.states[int(curr)][int(i)]
        return curr == "1"

my_automaton = Automaton()
print(my_automaton.read_commands(["1", "0", "0", "1"]))
