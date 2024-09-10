from main import add, multiply

def test_add():
    assert add(3, 4) == 7
    
def test_multiply():
    assert multiply(3, 4) == 12
