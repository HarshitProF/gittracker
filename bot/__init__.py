from telebot import TeleBot
import os
apikey=os.getenv('TOKEN',default=None)
bot=TeleBot(apikey)