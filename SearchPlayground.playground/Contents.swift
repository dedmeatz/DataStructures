import UIKit
import Foundation

func bubbleSort(array: [Int]) -> [Int]{
    var array = array
    for index in 0..<array.count {
        for index2 in (index)..<(array.count) {
            if(array[index2] < array[index]){
                let temp = array[index2]
                array[index2] = array[index]
                array[index] = temp
            }
        }
    }
    return array
}

func insertionSort(array: [Int]) -> [Int]{
    var array = array
    for index in 1..<array.count {
        var key = array[index]
        var i2 = index-1
        while(i2 > (-1) && array[i2] > key){
            array[i2+1] = array[i2]
            i2 = i2-1
        }
        array[i2+1] = key
    }
    return array
}

func selectionSort(array: [Int]) -> [Int] {
    var array = array
    
    var index1 = 0
    
    while(index1 < array.count){
        for index in (index1+1)..<array.count {
            if(array[index] < array[index1]){
                var temp = array[index1]
                array[index1] = array[index]
                array[index] = temp
            }
        }
        index1 = index1 + 1
    }
    
    return array
}

func binarySearch(array: [Int], value: Int) -> (Bool, Int) {
    var array = bubbleSort(array: array)
    
    var mid = array.count/2
    
    while(mid >= 0 && mid < array.count){
        if(value == array[mid]){
            return (true, mid+1)
        } else if(value < array[mid]){
            mid = (0 + mid)/2
        } else {
            mid = (mid + array.count)/2
        }
    }
    
    return (false,-1)
}

var tt = [3,1,5,4,6,7,1,3]

selectionSort(array: tt)

