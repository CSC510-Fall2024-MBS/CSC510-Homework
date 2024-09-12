"""
Imports merge sort function for testing and
imports random array generation function for testing
"""

from hw2_debugging import merge_sort
from rand import random_array


def test_negative_sort():
    """
    Tests array containing both negative and positive numbers and
    determines if it is sorted correctly
    """
    # Test mixed negative and positive numbers
    sample_array = [-2, -3, -9, 0, 2, 5]
    a2 = merge_sort(sample_array)
    assert a2 == [-9, -3, -2, 0, 2, 5]
    # Test mixed negative and positive, but more dispersed
    sample_array = [2, 3, -8, 0, -2, -5]
    a2 = merge_sort(sample_array)
    assert a2 == [-8, -5, -2, 0, 2, 3]
    # Test all negative numbers
    sample_array = [-1, -6, -56, -76, -5, -17]
    a2 = merge_sort(sample_array)
    assert a2 == [-76, -56, -17, -6, -5, -1]
    # Test multiple instances of negative numbers
    sample_array = [-2, -2, -2, -9, -9, -9, -3, -3, -3]
    a2 = merge_sort(sample_array)
    assert a2 == [-9, -9, -9, -3, -3, -3, -2, -2, -2]


def test_sort():
    """
    Tests array containing only positive numbers and multiple instances and
    determines if it is sorted correctly
    """
    # Tests positive numbers
    sample_array = [8, 2, 3, 1, 5, 9]
    a2 = merge_sort(sample_array)
    assert a2 == [1, 2, 3, 5, 8, 9]
    # Test multiple instances with normal positive numbers
    sample_array = [0, 15, 7, 91, 1, 1]
    a2 = merge_sort(sample_array)
    assert a2 == [0, 1, 1, 7, 15, 91]
    # Tests multiple instances of 1, 2, and 3
    sample_array = [2, 2, 2, 1, 1, 1, 3, 3, 3]
    a2 = merge_sort(sample_array)
    assert a2 == [1, 1, 1, 2, 2, 2, 3, 3, 3]
    # Test already sorted array
    sample_array = [1, 5, 16, 27, 38, 49]
    a2 = merge_sort(sample_array)
    assert a2 == [1, 5, 16, 27, 38, 49]
    # Test empty array
    sample_array = []
    a2 = merge_sort(sample_array)
    assert not a2 # Assert that it is an empty array
    # Test array with 1 element
    sample_array = [5]
    a2 = merge_sort(sample_array)
    assert a2 == [5]


def test_random_sort():
    """
    Tests array using a random array generated via rand.py's random_array function and
    determines if it is correctly sorted via python's sorting algorithm
    """
    # Test 20 items
    a1 = random_array([0] * 20)
    a2 = merge_sort(a1)
    assert a2 == sorted(a1)
    # Test 40 items
    a1 = random_array([0] * 40)
    a2 = merge_sort(a1)
    assert a2 == sorted(a1)
    # Test odd number of items
    a1 = random_array([0] * 19)
    a2 = merge_sort(a1)
    assert a2 == sorted(a1)
