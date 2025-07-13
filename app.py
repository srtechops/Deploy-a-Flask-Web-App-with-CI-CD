from flask import Flask

app = Flask(__name__)


@app.route("/info")
def srtechopsinfo():
    return "Welcome to SRTechOps"

@app.route("/contact")
def srtechopsmobilenumber():
    return "FOR TRAINING ENQUIRY: +91 9150477118"

app.run(host="0.0.0.0")