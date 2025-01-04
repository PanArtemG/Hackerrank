import Foundation

 /*
 * PROBLEM
 * Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers.
 * Then print the respective minimum and maximum values as a single line of two space-separated long integers.

 * Example: arr = [1, 3, 5, 7, 9]

 * The minimum sum is 1 + 3 + 5 + 7 = 16 and the maximum sum is 3 + 5 + 7 + 9 = 24 .
 * The function prints '16 24'
 */

 /*
 * Complete the 'miniMaxSum' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func miniMaxSum(arr: [Int]) -> Void {
    var sortedArray = arr
    sortedArray.sort { $0 < $1 }
    let minInt = sortedArray.first ?? 0
    let maxInt = sortedArray.last ?? 0
    
    let sum = sortedArray.reduce(0, +)
    let minSum = sum - maxInt
    let maxSum = sum - minInt
    
    print(minSum, maxSum)
}

miniMaxSum(arr: [7, 69, 2, 221, 8974])
