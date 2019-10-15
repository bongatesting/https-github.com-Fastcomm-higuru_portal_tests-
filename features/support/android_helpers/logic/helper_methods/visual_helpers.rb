module VisualHelpers
  
  def feature_based_comparison(path_to_image1, path_to_image2)
    #Performs images matching by template to find possible occurrence of the partial image in the full image
    image1 = File.read path_to_image1
    image2 = File.read path_to_image2

    match_result = $app_driver.match_images_features first_image: image1, second_image: image2

    match_result_visual = $app_driver.match_images_features first_image: image1, second_image: image2, visualize: true
    converted_image = Base64.decode64(match_result_visual['visualization'])
    File.open('match_result_visual.png', "w", encoding: 'ascii-8bit') {|f| f.write(converted_image) }
  end

  def occurrence_based_comparison(path_to_image1, path_to_image2)
    # 
    image1 = File.read path_to_image1
    image2 = File.read path_to_image2

    find_result = @driver.find_image_occurrence full_image: image1, partial_image: image2

    find_result_visual = @driver.find_image_occurrence full_image: image1, partial_image: image2, visualize: true
    converted_image = Base64.decode64(find_result_visual['visualization'])
    File.open('match_result_visual.png', "w", encoding: 'ascii-8bit') {|f| f.write(converted_image) }
  end

  # def similarity_calculation(path_to_image1, path_to_image2)
  #   image1 = File.read path_to_image1
  #   image2 = File.read path_to_image2

  #   get_images_result = $app_driver.get_images_similarity first_image: image1, second_image: image2

  #   get_images_result_visual = $app_driver.get_images_similarity first_image: image1, second_image: image2, visualize: true
  #   converted_image = Base64.decode64(get_images_result_visual['visualization']
  #   File.open('match_result_visual.png', 'w', encoding: 'ascii-8bit') {|f| f.write(converted_image) }
  # end
end