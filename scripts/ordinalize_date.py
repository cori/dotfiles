#!/usr/bin/env python3

import datetime, sys, argparse

def suffix(d):
    return 'th' if 11<=d<=13 else {1:'st',2:'nd',3:'rd'}.get(d%10, 'th')

def custom_strftime(format, t):
    return t.strftime(format).replace('{S}', str(t.day) + suffix(t.day))

def ordinalize_date( daysago=0, weeksago=0 ):
# if __name__ == "__main__":
    # parser = argparse.ArgumentParser()
    # parser.add_argument("-D", "--days", type=int, default=0, help="Number of days in the past to ordinalie")
    # parser.add_argument("-W", "--weeks", type=int, default=0, help="Number of weeks in the past to ordinalie")
    # args = parser.parse_args()

    date_to_convert = datetime.date.today() - datetime.timedelta(days=daysago, weeks=weeksago)
    
    try:
        date = custom_strftime('[[%B {S}, %Y]]', date_to_convert),
    except:
        print("Unexpected error:", sys.exc_info()[0])
        raise
    # print(dir(date))
    # print(dir(date[0]))
    # print(type(date[0]))
    return(date[0])
