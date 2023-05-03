#question 1
#Write a function to print "hello_USERNAME!" USERNAME is the input of the function. The first line of the code has been defined as below.

def hello_name(user_name):
    print("hello_" + user_name + "!")
hello_name("USERNAME")

#question 2
#Write a python function, first_odds that prints the odd numbers from 1-100 and returns nothing

def first_odds():
    for i in range(101):
        if i % 2 != 0:
            print(i)

#question 3
#Please write a Python function, max_num_in_list to return the max number of a given list. The first line of the code has been defined as below.

def max_num_in_list(a_list):
    if len(a_list) == 0:
        return 0
    return max(a_list)
print(max_num_in_list([]))

#question 4
#Write a function to return if the given year is a leap year. A leap year is divisible by 4, but not divisible by 100, unless it is also divisible by 400. The return should be boolean Type (true/false).

def is_leap_year(year):
    if (year % 4 == 0) and (year % 100 != 0 or year % 400 == 0):
        return f"{year} is absolutley a leap year"
    return f"{year} is NOT a leap year"
print(is_leap_year(2020))


#question 5
#Write a function to check to see if all numbers in list are consecutive numbers. For example, [2,3,4,5,6,7] are consecutive numbers, but [1,2,4,5] are not consecutive numbers. The return should be boolean Type.
def is_consecutive(value):
    for index_position in range(len(value) -1):
        if value [index_position] > value[index_position + 1]:
            return False
        return True
    print(is_consecutive([1,3,2,4,5]))
    