class Permutation

    def permute(word, prefix = "")

        if word.length == 0
           puts prefix
        else
            for i in 0..(word.length - 1)
                str = word[0, i] + word[i + 1, word.length]
                permute(str, prefix + word[i])
            end
        end
    end
end