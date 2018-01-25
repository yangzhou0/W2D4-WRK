# def bad_two_sum? 
# 
# 
# 
# end 

def ok_two_sum (arr,target)
  lo = 0
  hi = arr.length - 1
  
  while true
    break if hi == lo
    if arr[lo] + arr[hi] == target 
      return true
    elsif arr[lo] + arr[hi] < target 
      lo += 1
    else arr[lo] + arr[hi] > target
      hi -= 1
    end
  end
  false
end

def two_sum (arr,target)
  hash = Hash.new
  arr.each_with_index do |num,i|
    if hash[target-num] != nil
      return true
    else
      hash[num] = i
    end
  end
  false
end