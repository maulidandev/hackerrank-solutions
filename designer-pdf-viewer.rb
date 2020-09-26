def designerPdfViewer(h, word)
    max = 0

    word.each_byte {|c| max = max < h[c-97] ? h[c-97] : max }

    return max * word.length
end

h = gets.rstrip.split(' ').map(&:to_i)

word = gets.to_s.rstrip

result = designerPdfViewer h, word

print result