from flask import Flask, render_template, request
import fasttext

app = Flask(__name__)

model = fasttext.load_model("/app/lid.176.bin")


@app.route("/", methods=["GET", "POST"])
def index():
    if request.method == "POST":
        user_text = request.form.get("text_input")

        prediction = model.predict(user_text)
        language_code = prediction[0][0].replace("__label__", "")
        confidence = prediction[1][0]

        return render_template("index.html", text=user_text, language=language_code,
                               confidence=confidence)

    return render_template("index.html")


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=3000)
