import os

def main():
    environment = os.getenv('MY_ENVIRONMENT', 'development')
    print(f'Running in {environment} environment')

main()