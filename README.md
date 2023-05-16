## Problem
Bob's friend's birthday is about to come and so he decided to buy his
friend a gift and give it to him on his birthday. But he doesn't have
enough money and hence thought that he should save money.
Currently he has X rupees. He wants Y rupees for the gift. But there
are only Z days left for his friend's birthday ((Z+1)th day is his
birthday). Starting from today, he can save i rupee(s) on the th day (1
rupee on the first day, 2 rupees on the second day and so on)
.Determine if he could save enough money so that he could buy a gift
for his friend before his birthday.

** Input Format ** 
Each test contains multiple test cases. The first line of each test
contains the number of test cases T. The description of test cases is
given below:
The first and the only line of each test case contains three integers
X, Y, Z.

** Output Format ** 
Print YES if Bob can buy the gift, otherwise print NO.

** Constraints ** 
1 ≤ T ≤ 1000
0 ≤ X, Y, Z ≤ 105

** Sample Inp ** 
```bash
3
013
2 10 3
880
```

**  Sample Output ** 
```bash
YES
NO
YES
```

** Explanation ** 
In the first test case, Bob initially doesn't have money and the cost of
the gift is 1 rupee. His friend's birthday is 3 days away and hence he
can save 1 rupee in the first day and buy the gift. So, we print YES.
In the second test case, Bob initially has 2 rupees and the cost of the
gift is 10 rupees. His friend's birthday is 3 days away and hence he can
save 6 rupees. So, he'll have 8 rupees in total before his friend's
birthday which is not sufficient to buy the gift and so we print NO.
In the third test case, Bob initially has 8 rupees and the cost of the gift
is 8 rupees. His friend's birthday is 0 days away which means the
birthday is today and Bob cannot save any money. But, since Bob
already has enough amount of money to buy the gift, we print YES.
