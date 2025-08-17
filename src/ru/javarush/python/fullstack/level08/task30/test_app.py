import unittest
from flask_testing import TestCase
from app import app, users

class TestRegistrationAPI(TestCase):

    def create_app(self):
        app.config['TESTING'] = True
        return app

    def setUp(self):
        users.clear()  # Clear users list before each test

    def test_successful_registration(self):
        response = self.client.post('/register', json={
            'username': 'testuser',
            'password': 'testpassword'
        })
        self.assertEqual(response.status_code, ???)
        self.assertEqual(response.json, {'message': 'User registered successfully'})

    def test_registration_without_username(self):
        response = self.client.post('/register', json={
            'password': 'testpassword'
        })
        self.assertEqual(response.???, 400)
        self.assertEqual(response.json, {'message': 'Username and password required'})

    def test_duplicate_registration(self):
        # First registration should succeed
        self.client.post('/register', json={
            'username': 'testuser',
            'password': 'testpassword'
        })

        # Duplicate registration should fail
        ???

        self.assertEqual(response.status_code, 409)
        self.assertEqual(response.json, {'message': 'User already exists'})

if __name__ == '__main__':
    unittest.main()