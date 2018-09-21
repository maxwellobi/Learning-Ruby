class Prime

    def self.print_prime_2(max_number)

        array = (2..max_number).to_a
        primes = []
       
        array.each { |x|

            is_prime = true;
            2.upto(x - 1).each { |y|
                if x%y == 0 
                  
                    is_prime = false
                    break
                end
            }

            primes << x if is_prime
        }

        puts primes;
    end

    def self.print_prime_1(max_number)

        primes = []
        numbers = (2..max_number).to_a

        numbers.each_with_index { |v, i|
            if i == 0 
                primes << v
                next
            end

            x = i - 1
            is_prime = true;
            while x > 0
                if v % numbers[x] == 0 #not prime
                    is_prime = false
                    break
                end
                x -= 1
            end

            if is_prime
                primes << v
            end

        }

        puts primes
    end
end

Prime.print_prime_2(50)