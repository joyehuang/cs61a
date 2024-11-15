void pack(int A[]) {
    int readPos = 0;
    int writePos = 0;
    
    while (A[readPos] != 0) {
        int currentVal = A[readPos];
        int count = 1;
        
        // Count consecutive occurrences of currentVal
        while (A[readPos + 1] == currentVal) {
            count++;
            readPos++;
        }
        
        // Write the value itself
        A[writePos++] = currentVal;
        
        // If we found repetitions, write the negative count
        if (count > 1) {
            A[writePos++] = -count + 1;
        }
        
        readPos++;
    }
    
    // Add the sentinel value at the end
    A[writePos] = 0;
}

int main() {
    int A[] = {1, 1, 2, 2, 2, 3, 3, 3, 3, 0};
    pack(A);
    return 0;
}
