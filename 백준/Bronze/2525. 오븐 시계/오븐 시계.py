A, B = map(int,input().split())
C = int(input())

print((A + (B + C) // 60) % 24, end=" ")
print((B + C) % 60)