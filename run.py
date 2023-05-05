def round_up(decimals,number):
        place_number=str(number)[ : : -1].find(".")
        number=round(number,decimals)
        if decimals>place_number:
            print('greater than decimal')
            factor=decimals-place_number
            result_number=str(number)
            for i in range(factor):
                result_number=result_number+"0"
            return result_number
        else:
            return number
result=round_up(decimals=3,number=14.6200)
print(result)
