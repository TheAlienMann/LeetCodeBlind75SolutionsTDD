def sum_two(arr, target):
    index_i, index_j = 0, 0
    i, j, diff = 0, len(arr) - 1, float("inf")

    while j > i:
        if abs(arr[i] + arr[j] - target) < diff:
            index_i = i
            index_j = j
            diff = abs(arr[i] + arr[j] - target)
        if arr[i] + arr[j] > target:
            j -= 1
        else:
            i += 1
    print((arr[index_i], arr[index_j]))
    return (arr[index_i], arr[index_j])

arr = sorted([1, 6, -2, 4, 7, 8, 3])
result = sum_two(arr, target= 2)
print(result)
