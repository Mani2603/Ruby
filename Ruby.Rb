puts 'hello world'
print "HIII"
p "welcome"

#print,puts,p is a printed statement.

#get a input from a user .Data type-String
a=gets.chomp
print a 
b=gets.to_i
puts b
c=gets.to_f

#get a input from a user for Array

ar=gets.split(" ")
print ar[0]
puts "\nsize of array  #{ar.size}"
puts "Unique value in a Array #{ar.uniq}"
puts "Sorting a array #{ar.sort}"


#Method to find a Array Size
n=[1,2,3,4,5]
size=n.size
len=n.length
puts size
puts len


#method of if condition
a=10
b=20
if a<b
    print b
    
else
    puts a   
    

#while loop    
    x = gets.chomp.to_i   
    while x >= 0    
      puts x   
      x -=1   
    end    

    #for looping


    n=7
    puts "Emter the count of integers : "+ n
    for i in 1..n
        puts i
    end        


#hashes and each do loop

a={
    "abc"=>123,
    "bcd"=>234,
    'cde'=>456,
    "def"=>567}
puts a.size    
a.each  do |key,value|
puts "#{key} is #{value}"



#object and class

class first
    def second
        puts "hiiii"
    end
end
object=first.new
object.second        


#examples 
#Area of circle and its circumference
class Circle
    def initialize(radius)
        @radius=radius
    end
    def Area
        puts "Area of the Circle : #{@radius*@radius*3.14} "
    end
    def circumference
        puts "Circumference of Circle : #{2*3.14*@radius}" 
    end
end
puts "Enter the radius value is"
radius=gets.to_i
x=Circle.new(radius)
y=x.Area
z=x.circumference



class Person
    attr_accessor:name,:age,:place
end
class Parent < Person 
    attr_accessor:Children
end 
 
a=Parent.new
a.name="Mani"
a.age=20
a.place="pollachi"
puts a.inspect
       

class Animal
    attr_accessor:pet,:color
    def initialize(pet,color)
        @pet=pet
        @color=color
    end
end
class Dog < Animal
    def speak
        puts("booooowwwwwww ")
    end 
end
x=Dog.new("DOG","Brown")
puts Dog.speak
puts x.inspect

#inheritance method

class Parent
    def initialize(width,height)
        @width=width
        @height=height
    end
    def Area 
        puts "The Area is #{@width*@height}"
    end     
end
class Child < Parent 
end
x=Child.new(10,20)
puts x.Area


#freezing method


class Mouse
    attr_accessor:tail_len,:height
    def initialize(t,h)
        @tail_len=t
        @height=h
    end
end
mou=Mouse.new(10,4)
puts mou.tail_len
puts mou.height
mou.freeze
if(mou.frozen?)
    puts "Yes its freezing "

else
    puts "No its freezing"
end


#procs and lambda

#method 1
proc_object=Proc.new{ puts "proc object"}
proc_object.call

#method 2
proc_object=lambda{puts "hiiiiii hellloooooo"}
proc_object.call
puts "is proc object a #{proc_object.lambda?}"

#method 3
 
def My_method(&My_Block)
    puts "hello"
    My_Block.call
end
My_method{puts "world"}

#Method 4

lam=lambda{|x,y| puts "Parameter1 - #{x}    parameter2-#{y}"}
lam.call(10,30)


#method and fundamental execution
proc_obj=Proc.new{|n| "Mani\n"*n}
puts proc_obj.call(10)

#alternate method 2
puts Proc.new{|n| "Bharathi\n"*n}.call(3)

#alternate method 3
puts Proc.new{|n| "Hai\n"*n}.[2]



