from flask import Flask, render_template, request
import json
import autoSol as c
app = Flask(__name__)
@app.route("/")
def home():
    return render_template("home.html")

@app.route('/upload', methods=['GET','POST'])
def generateToken():
   text1=""
   if request.method == 'POST':
       # check if the post request has the file part
      
       tname = request.form['tname']
       tsymbol = request.form["tsymbol"]
       tsupply = request.form["tsupply"]
       terms = request.form.get("terms")
       #make contract
       print(tname)
       print(tsymbol)
       print(tsupply)
       print(terms)
       contract = c.contractData(tname,tsymbol,tsupply)
       c.basicContract(contract)
   return render_template("home.html")
  

def changeJson(tname):
    print(tname)
    with open("solMeta.json", "r+") as jsonFile:
        data = json.load(jsonFile)

        data["name"] = tname

        jsonFile.seek(0)  # rewind
        json.dump(data, jsonFile)
        jsonFile.truncate()
    