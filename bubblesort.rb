class BubbleSort

    def self.sort (array)

        loop until array.each_cons(2).with_index.none? { |(x,y), i|
            p "#{i}: #{x}, #{y}"
            if x > y
                array[i], array[i+1] = array[i+1], array[i]
            end
        }
       
    end
end

BubbleSort.sort([2, 5, 1, 7])
