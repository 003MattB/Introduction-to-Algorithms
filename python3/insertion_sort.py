#takes an array of comparable items and sorts them in place

def insertion_sort(A):
    for j in range(1,len(A)):
        key = A[j]
        #the elements in the sub-array A[0..j-1] are already sorted
        #by inserting A[j] into the subarray in the proper place
        #the sub-array A[0..j] maintains sorted order
        i = j-1
        while i > -1 and A[i] > key:
            #shift the elements in the array to the right
            #until a space is made for key
            A[i+1] = A[i]
            i -= 1
        A[i+1] = key
