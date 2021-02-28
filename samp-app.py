# script: 
import os
import flask
# from flask import Flask
import MySQLdb


server = Flask(__name__)

@server.route("/")
 def hello():
    return "Hello Demo Sample App!"

if __name__ == "__main__":
   server.run(host='0.0.0.0')
   


### additional code ###
### https://github.com/DaoCloud/python-mysql-sample/blob/master/application.py ###
# application = flask.Flask(__name__)
# application.debug = True

# @application.route('/')
# def hello_world():
  # storage = Storage()
  # storage.populate()
  # score = storage.score()
  # return "Hello Beijing 123, %d!" % score

# class Storage():
  # def __init__(self):
    # self.db = MySQLdb.connect(
      # user   = os.getenv('MYSQL_USERNAME'),
      # passwd = os.getenv('MYSQL_PASSWORD'),
      # db     = os.getenv('MYSQL_INSTANCE_NAME'),
      # host   = os.getenv('MYSQL_PORT_3306_TCP_ADDR'),
      # port   = int(os.getenv('MYSQL_PORT_3306_TCP_PORT'))
    # )

    # cur = self.db.cursor()
    # cur.execute("CREATE TABLE IF NOT EXISTS scores(score INT)")

  # def populate(self):
    # cur = self.db.cursor()
    # cur.execute("INSERT INTO scores(score) VALUES(1234)")

  # def score(self):
    # cur = self.db.cursor()
    # cur.execute("SELECT * FROM scores")
    # row = cur.fetchone()
    # return row[0]

# if __name__ == "__main__":
  # application.run(host='0.0.0.0', port=3000)