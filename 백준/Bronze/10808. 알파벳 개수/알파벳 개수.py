S = input()

for i in range(26):
    # 각 문자의 개수를 세고 출력
    count = S.count(chr(ord('a') + i))
    print(f"{count}", end=" ")