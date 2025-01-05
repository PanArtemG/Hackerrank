import Foundation

// MARK: - Birthday Cake Candles

/*
 You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age.
 They will only be able to blow out the tallest of the candles. Count how many candles are tallest.

 Example:
    `candles = [4, 4, 1, 3]`
    The maximum height candles are  units high. There are  of them, so return .

 Function Description

 Complete the function birthdayCakeCandles in the editor below.
    birthdayCakeCandles has the following parameter(s):
    - int candles[n]: the candle heights
 
 Returns:
    - int: the number of candles that are tallest
 
 Input Format
    The first line contains a single integer `n`, , the size of `candles[]` .
    The second line contains `n` space-separated integers, where each integer `i` describes the height of `candles[i]`.

*/


/*
 * Complete the 'birthdayCakeCandles' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY candles as parameter.
 */

func birthdayCakeCandles(candles: [Int]) -> Int {
    var countOfBiggerCandles = 0
    let maxNum = candles.max() ?? 0
    
    candles.forEach {
        if $0 == maxNum {
            countOfBiggerCandles += 1
        }
    }

    return countOfBiggerCandles
}

birthdayCakeCandles(candles: [3, 2, 1, 3])
