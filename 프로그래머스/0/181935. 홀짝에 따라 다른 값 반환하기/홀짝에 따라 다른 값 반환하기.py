def solution(n):
    return sum(i * i for i in range(1, n+1) if i % 2 == 0) if n%2==0 else sum(i for i in range(1, n+1) if i % 2 == 1)