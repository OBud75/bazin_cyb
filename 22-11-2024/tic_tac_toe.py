game = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]

def is_a_win(player):
        row_1 = game [0]
        row_2 = game [1]
        row_3 = game [2]
        return any([ 
             all([cell == player for cell in row])
             for row in [
                (row_1[0], row_1[1], row_1[2]),
                (row_2[0], row_2[1], row_2[2]),
                (row_3[0], row_3[1], row_3[2]),
                (row_1[0], row_2[0], row_3[0]),
                (row_1[1], row_2[1], row_3[1]),
                (row_1[2], row_2[2], row_3[2]),
                (row_1[0], row_2[1], row_3[2]),
                (row_1[2], row_2[1], row_3[0])]])


def print_game():
        for row in game:
                print(row)

def turn(player):
        for row in game:
                print(row)
        row_1 = game [0]
        row_2 = game [1]
        row_3 = game [2]

        if is_a_win("X"):
                return 1 
        if is_a_win("O"):
                return 0 
        for row in game:
                for cell in row:
                        if cell == " ":
                                cell = player
                                if player == "X":
                                        turn("O")
                                else:
                                        turn("X")

turn("X")
