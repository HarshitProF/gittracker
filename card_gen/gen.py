from image_module import main
from random import randint,uniform


class Generator :
    def __init__(self,Perpetual,entry_price,exit_price,Margin_usdt,type_trade,cross):
        self.Perpetual=str(Perpetual)
        self.entry_price=str(entry_price)
        self.exit_price=str(exit_price)
        self.Margin_usdt=str(Margin_usdt)
        self.type=str(type_trade)
        self.cross=str(int(cross))
        self.difference=abs(float(entry_price)-float(exit_price))
        self.ROI=str(round(self.difference/float(entry_price)*100*float(self.cross),2))
        self.Size=str(round(float(Margin_usdt)*float(cross),4))
        self.Unrealized_PNL=str(round(float(self.Margin_usdt)*float(self.ROI)*0.01,2))
    def profit_card(self):
        if int(float(self.ROI))<50:
            img_path="saved/Type_A_without_perpentual.JPG"
        elif int(float(self.ROI))>50 and int(float(self.ROI))<100:
            img_path="saved/Type_D_without_perpentual.JPG"
        else :
            img_path="saved/Type_B_without_perpentual.JPG"
        if self.type=="Long":
            situation="LONG"
        else:
            situation="SHORT"
        referral_code=str(randint(100000000,999999999))
        image=main.MODIFICATION(cross=f'{self.cross}x',Perpetual=self.Perpetual,Situation=situation,percentage=self.ROI,Entry_Price=self.entry_price,last_price=self.exit_price,referral_code=referral_code,type="type_B",img=img_path).WriteOnImage_type_b()
        return image
    def info_card(self):
        mark1=mark2=mark3=mark4="raw"
        if int(float(self.ROI))<50:
            mark1=mark2=mark3=mark4="green"
        elif int(float(self.ROI))>50 and int(float(self.ROI))<100:
            mark1=mark2="green"
        elif int(float(self.ROI))>100 and int(float(self.ROI))<150:

            mark1=mark2=mark3="green"
        elif int(float(self.ROI))>150 and int(float(self.ROI))<200:
            mark1=mark2="red"
        else:
            mark1=mark2=mark3=mark4="red"
        if self.type=="Long":
            img_path="saved/without_perpentual.jpg"
            liq=str(round(float(self.entry_price)-float(self.entry_price)*randint(20,30)*0.01,2))
        else:
            img_path="saved/without_perpentual_2.jpg"
            liq=str(round(float(self.entry_price)+float(self.entry_price)*randint(20,30)*0.01,2))
        risk=str(round(randint(2,7)+uniform(1.1,1.9),2))
        print(liq)


        print(f"ROI-{self.ROI}")
        
        image=main.MODIFICATION(img=img_path,cross=f"Cross {self.cross}x",Perpetual=self.Perpetual,Unrealized_PNL=self.Unrealized_PNL,ROE=self.ROI,Size=self.Size,Margin=self.Margin_usdt,Risk=risk,Entry_Price=self.entry_price,Mark_Price=self.exit_price,Liq_Price=liq,type="type_a").WriteOnImage_type_a(mark1=mark1,mark2=mark2,mark3=mark3,mark4=mark4)
        return image


