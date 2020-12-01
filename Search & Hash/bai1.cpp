int binarySearch(int arr[], int left, int right, int x)
{
    int ans = -1;
    while (right >= left) {
        int mid = left + (right-left)/2;
        cout << "We traverse on index: " << mid << endl;
        if (arr[mid] == x) {
            ans = mid;
            break;
        } else if (x < arr[mid]) {
            right = mid - 1;
        } else {
            left = mid + 1;
        }
    }
    return ans;
}
