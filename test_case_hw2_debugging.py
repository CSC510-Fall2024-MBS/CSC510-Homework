"""
Imports merge sort function for testing
Imports random array generation function for testing
"""

from hw2_debugging import merge_sort
from rand import random_array

def test_case1():
    """Test 1"""
    sample_array = [-2,-3,-9,0,2,5]
    a2 = merge_sort(sample_array)
    assert a2 == sorted(sample_array)

def test_case2():
    """Test 2"""
    sample_array = [8,2,3,1,5,9]
    a2 = merge_sort(sample_array)
    assert a2 == sorted(sample_array)

def test_case3():
    """Test 3"""
    a1 = random_array([9]*20)
    a2 = merge_sort(a1)
    assert a2 == sorted(a1)
