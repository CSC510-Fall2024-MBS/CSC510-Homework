""" Imports subprocess to 
handle array generation """
import subprocess # nosec B404

def random_array(arr):
    """
    Randomizes the elements in the given array parameter
    """
    # Temporary variable used to store generated number value
    shuffled_num = None

    # Iterates through each element of the array and populates it with a number
    for i, _ in enumerate(arr):
        shuffled_num = subprocess.run(["shuf", "-i1-20", "-n1"], capture_output=True, check = True)
        arr[i] = int(shuffled_num.stdout)


    # Return populated array
    return arr
