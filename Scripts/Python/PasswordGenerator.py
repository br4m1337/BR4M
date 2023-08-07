#!/usr/bin/env python3

import os
import random

try:
    i = 0
    while (i != 1):
        #os.system('title Password Generator')
        #os.system('mode 40,10')
        #os.system('cls')
        os.system('clear')

        print('Please Choose An Option:')
        print('')
        print('1: EXIT')
        print('2: Only Lower Case & Upper Case')
        print('3: With Numbers')
        print('4: With Special Charecters')
        print('5: Everything')
        print('')

        option = int(input('Enter Your Choice: '))
        if option == 1:
            #os.system('cls')
            os.system('clear')
            #input('Bye!')
            #os.system('clear')
            #os.system('pause')
            i = 1
        elif option == 2:
            #os.system('cls')
            os.system('clear')
            print('=====Generate Lower/Upper Case Password=====')
            print('')
            chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
            number = int(input('Amount of passwords to generate: '))
            lenght = int(input('Password lenght: '))
            os.system('clear')
            print('Generated Passwords: ')
            print('')
            for pwd in range(number):
                passwords = ''
                for c in range(lenght):
                    passwords += random.choice(chars)
                print(passwords)
            print('')
            input("Press enter to clear the screen...")
            i = 2
        elif option == 3:
            #os.system('cls')
            os.system('clear')
            print('=====Generate With Numbers=====')
            print('')
            charsNum = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
            number = int(input('Amount of passwords to generate: '))
            lenght = int(input('Password lenght: '))
            os.system('clear')
            print('Generated Passwords: ')
            print('')
            for pwd in range(number):
                passwords = ''
                for c in range(lenght):
                    passwords += random.choice(charsNum)
                print(passwords)
            print('')
            input("Press enter to clear the screen...")
            i = 3
        elif option == 4:
            #os.system('cls')
            os.system('clear')
            print('=====Generate With Special Charecters=====')
            print('')
            charsSpec = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*().,?'
            number = int(input('Amount of passwords to generate: '))
            lenght = int(input('Password lenght: '))
            os.system('clear')
            print('Generated Passwords: ')
            print('')
            for pwd in range(number):
                passwords = ''
                for c in range(lenght):
                    passwords += random.choice(charsSpec)
                print(passwords)
            print('')
            input("Press enter to clear the screen...")
            i = 4
        elif option == 5:
            #os.system('cls')
            os.system('clear')
            print('=====Generate With Everything=====')
            print('')
            charsAll = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*().,?'
            number = int(input('Amount of passwords to generate: '))
            lenght = int(input('Password lenght: '))
            os.system('clear')
            print('Generated Passwords: ')
            print('')
            for pwd in range(number):
                passwords = ''
                for c in range(lenght):
                    passwords += random.choice(charsAll)
                print(passwords)
            print('')
            input("Press enter to clear the screen...")
            i = 5
        else:
            print('Invalid option. Please enter a number between 1 and 4.')
            #os.system('pause')
except:
    os.system('clear')
    print("Please run the script again and choose a valid option!")
    print("")
    input("Press enter to exit program...")
    os.system('clear')