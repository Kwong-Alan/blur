class Image

  def initialize
   @image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0],
])
   image.output_image
  end

  def output_image
      puts @image
    end
end