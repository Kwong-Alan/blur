
class Image
  def initialize(images)
    @images = images
  end

  def output_image
    @images.each do |images|
      puts images.join
    end
  end

  def blur(distance)

    distance.times do 
      blur_coords
    end
  end

  def blur_coords
    blur_coords = []
    @images.each_with_index do |row, index_x|
      row.each_with_index do |value, index_y|
        blur_coords << [index_x, index_y] if value == 1
      end
    end

    blur_coords.each do |coord|
      @images[coord[0]][coord[1]+1] = 1 if coord[1] + 1 <= @images[coord[0]].length - 1
      @images[coord[0]][coord[1]-1] = 1 if coord[1] - 1 >= 0
      @images[coord[0]+1][coord[1]] = 1 if coord[0] + 1 <= @images.length - 1
      @images[coord[0]-1][coord[1]] = 1 if coord[0] - 1 >= 0
    end
  end
end

# creating an instance of Image class
image = Image.new([
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 1, 0, 0],
])

puts "Original Image"
image.output_image

puts "Blurred Image"
image.blur(2)
# image.blur_coords
image.output_image