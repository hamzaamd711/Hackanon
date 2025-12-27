import requests
import sys
from termcolor import colored

if len(sys.argv) < 2:
    print(colored("SYNTAX ERROR", 'light_red'))
    print(colored("example: python3 Hackanon.py <URL> <WORDLIST>", 'light_green'))
    exit()
# --------------------------------------------------------- # 
sys.argv[1] = sys.argv[1].replace("\n", "")
if sys.argv[1][-1] == "/":
    pass
else:
    sys.argv[1]+="/"

try:
    wordlist=open(sys.argv[2], 'r')
    words=wordlist.readlines()
    for word in words:
        word=word.replace("\n", "")
        respons=requests.get(sys.argv[1]+word)
        if respons.status_code == 200:
            print(colored(f"    [200] -->> {sys.argv[1]+word}/", 'green'))
        else:
            print(colored(f"    [{respons.status_code}] -->> {sys.argv[1]+word}/", 'yellow'))

except:
    print(colored("ERROR", 'red'))
