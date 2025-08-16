from flask import Flask, jsonify, request, abort

app = Flask(__name__)

# In-memory data structure to store tasks
tasks = {}
current_id = 1

@app.route('/???', methods=['???'])
def create_task():
    global current_id
    if not request.json or 'title' not in request.json:
        abort(400)
    task = {
        'id': current_id,
        'title': request.json['title'],
        'description': request.json.get('description', ""),
        'done': False
    }
    tasks[current_id] = task
    current_id += 1
    return jsonify({'task': task}), 201

@app.route('/????', methods=['???'])
def get_tasks():
    return jsonify({'tasks': list(tasks.values())})

@app.route('/???/<int:task_id>', methods=['???'])
def get_task(task_id):
    task = tasks.get(task_id)
    if task is None:
        abort(404)
    return jsonify({'task': task})

@app.route('/???/<int:task_id>', methods=['???'])
def update_task(task_id):
    task = tasks.get(task_id)
    if task is None:
        abort(404)
    if not request.json:
        abort(400)
    if 'title' in request.json and type(request.json['title']) is not str:
        abort(400)
    if 'description' in request.json and type(request.json['description']) is not str:
        abort(400)
    if 'done' in request.json and type(request.json['done']) is not bool:
        abort(400)
    
    task['title'] = request.json.get('title', task['title'])
    task['description'] = request.json.get('description', task['description'])
    task['done'] = request.json.get('done', task['done'])
    
    return jsonify({'task': task})

@app.route('/???/<int:task_id>', methods=['???'])
def delete_task(task_id):
    task = tasks.pop(task_id, None)
    if task is None:
        abort(404)
    return jsonify({'result': True})

if __name__ == '__main__':
    app.run(debug=True)