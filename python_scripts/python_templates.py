import logging
from datetime import datetime

def get_datetime_string():
    time_format = "%Y%m%d_%H%M%S"
    now = datetime.now()
    return now.strftime(time_format)

def get_date():
    date_format = "%y%m%d"
    now = datetime.now()
    return now.strftime(date_format)

def main():
    pass

if __name__ == '__main__':
    logging.basicConfig(format="[%(asctime)s] %(message)s", datefmt="%Y-%m-%d %H:%M:%S", level=logging.INFO)
    main()
