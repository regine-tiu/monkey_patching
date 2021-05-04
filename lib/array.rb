# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    if self.length > 0
      self.sort!
      return self[-1] - self[0]
    else
      return nil
    end    
  end  
end

class Array
  def average
    if self.length > 0
      self.sum / (self.length * 1.00)
    else  
      return nil
    end  
  end  
end  

class Array
  def median
    return nil if self.empty?
   
    if self.length.odd?
      i = (self.length - 1) /2
      return self.sort[i]
    elsif self.length.even?
      self.sort!
      i = self.length / 2
      avg = (self[i] + self[i - 1]) / 2.0
      return avg
    end    
  end
end   

class Array
  def counts
    count = Hash.new(0)
    self.each {|ele| count[ele] += 1}
    count
  end 
end  

class Array
  def my_count(ele)
    count = Hash.new(0)
    self.each {|ele| count[ele] += 1}
    count[ele]
  end  

  def my_index(target)
    self.each_with_index do |ele, i|
      if ele == target
        return i
      end  
    end
    nil
  end  

  def my_uniq
    hash = {}
    self.each {|ele| hash[ele] = true}
    hash.keys  
  end  

  def my_transpose
    new_arr = []

    (0...self.length).each do |row|
      new_row = []
      (0...self.length).each do |col|
        new_row << self[col][row]
      end 
      new_arr << new_row
    end
    new_arr  
  end  

end  