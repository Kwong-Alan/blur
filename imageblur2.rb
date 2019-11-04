
class Image
  def initialize(image)
    @image = image
  end

  def output_image
    @image.each do |image|
      puts image.join
    end
  end

  def blur_coords
    blur_coords = []
    @image.each_with_index do |row, x|
      row.each_with_index do |column, y|
        blur_coords << [x, y] if column == 1
      end
    end

    blur_coords.each do |coord|
      @image[coord[0]][coord[1]+1] = 1 if coord[1] + 1 <= @image[coord[0]].length - 1
      @image[coord[0]+1][coord[1]] = 1 if coord[0] + 1 <= @image.length - 1
      @image[coord[0]+1][coord[1]] = 1 if coord[0] + 1 >= 1
    end
  end
end
 
image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

puts "Original Image"
image.output_image

puts "Blurred Image"
image.blur_coords
image.output_image