def round_up(decimals,number):
        place_number=str(number)[ : : -1].find(".")
        number=round(number,decimals)
        if place_number==decimals:
            print('equal to number')
            return number
        elif place_number>decimals :
            print('less than decimal')
            return number
        else:
            print('greater than decimal')
            factor=decimals-place_number
            result_number=str(number)
            for i in range(factor):
                result_number=result_number+"0"
            return result_number
result=round_up(decimals=3,number=14.6200)
print(result)
