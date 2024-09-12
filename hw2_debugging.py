"""
Imports random array function from rand.py
"""
import rand


def merge_sort(arr):
    """
    Continuously divides the array into pieces recursively, then recombines
    each section in sorted order
    """
    if len(arr) == 1 or len(arr) == 0:
        return arr

    half = len(arr) // 2

    return recombine(merge_sort(arr[:half]), merge_sort(arr[half:]))


def recombine(left_arr, right_arr):
    """
    This function recombines the
    solutions in order to get the
    results.
    """
    left_index = 0
    right_index = 0
    merge_arr = []
    while left_index < len(left_arr) and right_index < len(right_arr):
        if left_arr[left_index] < right_arr[right_index]:
            merge_arr.append(left_arr[left_index])
            left_index += 1
        else:
            merge_arr.append(right_arr[right_index])
            right_index += 1
    merge_arr.extend(left_arr[left_index:])
    merge_arr.extend(right_arr[right_index:])

    return merge_arr


arr_new = rand.random_array([0] * 20)
arr_out = merge_sort(arr_new)

print(arr_out)
