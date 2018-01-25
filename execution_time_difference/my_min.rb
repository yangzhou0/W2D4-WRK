def my_min (arr)
  arr.each_with_index do |num1,i|
    min = true
    arr.each_with_index do |num2,j|
      next if i == j
      min = false if num2 < num1
    end
  return num1 if min   
  end  
end

def my_min (arr)
  minimum = arr.first
  arr.each do |num|
    minimum = num if num<minimum
    minum
  end
end

def sub_sum (arr)
  sum = arr.first
  (1..arr.size).each do |size|
    arr.each_cons(size) do |sub_arr|
      sub_sum = sub_arr.reduce(:+) 
      sum = sub_sum if sub_sum > sum
    end
  end
  sum  
end

def best_sum(arr)
  subsum = 0 
  arr.each do |num|
    subsum += num 
      if subsum != subsum.abs 
        subsum = 0 
      end 
  end 
  subsum 
end 

def best_sum(arr)
  max_so_far = arr[0]
  curr_max = arr[0]
  (1..arr.count-1).each do |idx|
    curr_max = [arr[idx],curr_max+arr[idx]].max
    max_so_far = [max_so_far,curr_max].max 
  end
  max_so_far
end