from telebot import TeleBot
import os
apikey=os.getenv('TOKEN')
bot=TeleBot(apikey)