import pytest

from app import app


@pytest.fixture
def client():
    app.config["TESTING"] = True
    with app.test_client() as client:
        yield client


def test_hello(client):
    """Test the /api/hello endpoint"""
    response = client.get("/")
    assert response.status_code == 200
    assert response.data == b"Hello, World!"
