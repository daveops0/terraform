for x in range(1, 100):
    print(((x % 3 == 0) * 'Fizz' + (x % 5 == 0) * 'Buzz') or x)
