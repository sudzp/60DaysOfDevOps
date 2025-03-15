from flask import Flask, jsonify, request
import requests

app = Flask(__name__)

# OpenWeatherMap API Key (Replace with your own key)
API_KEY = "your_openweathermap_api_key"

@app.route("/weather", methods=["GET"])
def get_weather():
    city = request.args.get("city", "Mumbai")  # Default city: Mumbai
    url = f"http://api.openweathermap.org/data/2.5/weather?q={city}&appid={API_KEY}&units=metric"

    try:
        response = requests.get(url)
        data = response.json()

        if response.status_code != 200:
            return jsonify({"error": data.get("message", "City not found")}), 404

        weather_info = {
            "city": data["name"],
            "temperature": data["main"]["temp"],
            "description": data["weather"][0]["description"],
            "humidity": data["main"]["humidity"],
            "wind_speed": data["wind"]["speed"],
        }
        return jsonify(weather_info)
    
    except Exception as e:
        return jsonify({"error": "Failed to fetch weather data", "details": str(e)}), 500

if __name__ == "__main__":
    app.run(debug=True)


# curl http://127.0.0.1:5000/weather