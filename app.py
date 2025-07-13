from flask import Flask
import os

app = Flask(__name__)


@app.route("/info")
def srtechopsinfo():
    return "Welcome to SRTechOps"

@app.route("/contact")
def srtechopsmobilenumber():
    return "FOR TRAINING ENQUIRY: +91 9150477118"

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(debug=True,host='0.0.0.0',port=port)