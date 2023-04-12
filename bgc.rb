require "prawn"
bingoArray =[
b_col = (1..15).to_a.sample(5),
i_col = (16..30).to_a.sample(5),
n_col = (31..45).to_a.sample(5),
g_col = (46..60).to_a.sample(5),
o_col = (61..75).to_a.sample(5)]
def align(num)
    if num < 10
        return " #{num}"
    else
        return "#{num}"
    end 
end
bingo_card= <<-BINGO
+----+----+----+----+----+
|  B |  I |  N |  G |  O | 
+----+----+----+----+----+
| #{align(b_col[0])} | #{i_col[0]} | #{n_col[0]} | #{g_col[0]} | #{o_col[0]} |
+----+----+----+----+----+
| #{align(b_col[1])} | #{i_col[1]} | #{n_col[1]} | #{g_col[1]} | #{o_col[1]} |
+----+----+----+----+----+
| #{align(b_col[2])} | #{i_col[2]} |  F | #{g_col[2]} | #{o_col[2]} |
+----+----+----+----+----+
| #{align(b_col[3])} | #{i_col[3]} | #{n_col[2]} | #{g_col[3]} | #{o_col[3]} |
+----+----+----+----+----+
| #{align(b_col[4])} | #{i_col[4]} | #{n_col[3]} | #{g_col[4]} | #{o_col[4]} |
+----+----+----+----+----+
BINGO

pdf = Prawn::Document.new
pdf.text  bingo_card
pdf.render_file 'card.pdf'
header = ['B', 'I', 'N', 'G', 'O']
Prawn::Document.generate("card.pdf") do
    define_grid(columns: 5, rows:6)
    # grid.show_all
    header.each_with_index do |letter, i|
        grid(0, i).bounding_box do
            stroke_bounds
            text letter, align: :center, valign: :center, size:50,style: :bold
        end

    end
    bingoArray.each_with_index do |array, aIndex|
        array.each_with_index do |num, i|
            grid((i+1), aIndex).bounding_box do
                stroke_bounds
                text num.to_s, align: :center, valign: :center, size:50, style: :bold
            end
        end
    end
end
puts bingo_card