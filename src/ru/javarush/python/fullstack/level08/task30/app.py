from flask import Flask, request, jsonify

app = Flask(__name__)

# In-memory users storage for demonstration purposes
users = []

@app.route('/register', methods=['POST'])
def register():
    data = request.get_json()
    username = data.get('username')
    password = data.get('password')

    if not username or not password:
        return jsonify({'message': 'Username and password required'}), 400

    # Check if the user already exists
    if any(user['username'] == username for user in users):
        return jsonify({'message': 'User already exists'}), 409

    users.append({'username': username, 'password': password})
    return jsonify({'message': 'User registered successfully'}), 201

if __name__ == '__main__':
    app.run(debug=True)