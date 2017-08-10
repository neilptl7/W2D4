str1 = "day"
str2 = "ayd"
str3 = "ya"
str4 = "aijsd7sbaa"

def anagrams1(str1, str2)
  long_str = str1.length >= str2.length ? str1 : str2
  other_str = long_str == str1 ? str2 : str1


  anagrams = long_str.chars.permutation(long_str.length).to_a
  anagrams.map! do |arr_chars|
    arr_chars.join # We think join is n because it iterates over the array and removes chs
  end

  # p long_str
  # p other_str
  # p anagrams
  anagrams.include?(other_str)
  # p anagrams
end

p anagrams1(str1, str2)
p anagrams1(str1, str3)
p anagrams1(str2, str3)
p anagrams1(str1, str4)


# O(n!)- permutation. n! dominates n^2.
