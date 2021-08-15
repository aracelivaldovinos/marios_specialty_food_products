require 'rails_helper'

describe "the add a product and review process" do
  it "adds a new product" do
    visit '/'
    click_link 'PRODUCT'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Lovely Dove'
    fill_in 'Cost', :with => 12.51
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    expect(page).to have_content 'Success! Product was added. ☺'
    expect(page).to have_content 'Lovely Dove'
    expect(page).to have_content '12.51'
    expect(page).to have_content 'United States'
  end
  it "adds a new product without a name" do
    visit '/'
    click_link 'PRODUCT'
    click_link 'Create new product'
    fill_in 'Name', :with => ''
    fill_in 'Cost', :with => 12.51
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    expect(page).to have_content 'Oh no! ☹ Try creating it again.'
    expect(page).to have_content 'Name can\'t be blank'
  end 
    it "adds a new product without a country of origin" do
      visit '/'
      click_link 'PRODUCT'
      click_link 'Create new product'
      fill_in 'Name', :with => 'Lovely Dove'
      fill_in 'Cost', :with => 12.51
      fill_in 'Country of origin', :with => ''
      click_on 'Create Product'
      expect(page).to have_content 'Oh no! ☹ Try creating it again.'
      expect(page).to have_content 'Country of origin can\'t be blank'
  end
  it "adds a new product without a cost" do
    visit '/'
    click_link 'PRODUCT'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Lovely Dove'
    fill_in 'Cost', :with => ''
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    expect(page).to have_content 'Oh no! ☹ Try creating it again.'
    expect(page).to have_content 'Cost can\'t be blank'
end
  it "edits a product" do
    visit '/'
    click_link 'PRODUCT'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Lovely Dove'
    fill_in 'Cost', :with => 12.51
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    click_link 'Lovely Dove'
    click_link 'Edit'
    fill_in 'Cost', :with => 20.56
    click_on 'Update Product'
    expect(page).to have_content 'Yay! It is saved!'
    expect(page).to have_content 'Lovely Dove'
    expect(page).to have_content '20.56'
    expect(page).to have_content 'United States'
  end
  it "edits a product without price" do
    visit '/'
    click_link 'PRODUCT'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Lovely Dove'
    fill_in 'Cost', :with => 12.51
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    click_link 'Lovely Dove'
    click_link 'Edit'
    fill_in 'Cost', :with => ''
    click_on 'Update Product'
    expect(page).to have_content 'Gosh darnit! Gotta do it again.'
  end

  it "adds a review" do
    visit '/'
    click_link 'PRODUCT'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Lovely Dove'
    fill_in 'Cost', :with => 12.51
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    click_link 'Lovely Dove'
    click_link 'Add a review'
    fill_in 'Author', :with => 'Test Testing'
    fill_in 'Content body', :with => 'Just testing this test to make sure that this test is working.'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    expect(page).to have_content 'Hooray!!! Your review is added!'
    expect(page).to have_content 'Test Testing'
    expect(page).to have_content 'Just testing this test to make sure that this test is working.'
    expect(page).to have_content '4'
  end 
  it "adds a review with a content body less than recommended criteria" do
    visit '/'
    click_link 'PRODUCT'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Lovely Dove'
    fill_in 'Cost', :with => 12.51
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    click_link 'Lovely Dove'
    click_link 'Add a review'
    fill_in 'Author', :with => 'Test Testing'
    fill_in 'Content body', :with => 'Just testing this test.'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    expect(page).to have_content 'Dang this create method. Gotta do it again!'
    expect(page).to have_content 'Content body is too short (minimum is 50 characters)'
  end 
  it "adds a review without a rating" do
    visit '/'
    click_link 'PRODUCT'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Lovely Dove'
    fill_in 'Cost', :with => 12.51
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    click_link 'Lovely Dove'
    click_link 'Add a review'
    fill_in 'Author', :with => 'Test Testing'
    fill_in 'Content body', :with => 'This is really great coffee the aroma is all over the house.'
    fill_in 'Rating', :with => ''
    click_on 'Create Review'
    expect(page).to have_content 'Dang this create method. Gotta do it again!'
    expect(page).to have_content 'Rating is not a number'
    expect(page).to have_content 'Rating can\'t be blank'
  end 
  it "adds a review without a rating" do
    visit '/'
    click_link 'PRODUCT'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Lovely Dove'
    fill_in 'Cost', :with => 12.51
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    click_link 'Lovely Dove'
    click_link 'Add a review'
    fill_in 'Author', :with => ''
    fill_in 'Content body', :with => 'This is really great coffee the aroma is all over the house.'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    expect(page).to have_content 'Dang this create method. Gotta do it again!'
    expect(page).to have_content 'Author can\'t be blank'
  end 
  it "edit a review" do
    visit '/'
    click_link 'PRODUCT'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Lovely Dove'
    fill_in 'Cost', :with => 12.51
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    click_link 'Lovely Dove'
    click_link 'Add a review'
    fill_in 'Author', :with => 'Test Testing'
    fill_in 'Content body', :with => 'Just testing this test to make sure that this test is working.'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    click_link 'Test Testing'
    click_link 'Edit review'
    fill_in 'Rating', :with => '5'
    click_on 'Update Review'
    expect(page).to have_content 'YES!!! The review has been updated!'
    expect(page).to have_content 'Test Testing'
    expect(page).to have_content 'Just testing this test to make sure that this test is working.'
    expect(page).to have_content '5'
  end 
  it "edits a review rating outside of integer range" do
    visit '/'
    click_link 'PRODUCT'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Lovely Dove'
    fill_in 'Cost', :with => 12.51
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    click_link 'Lovely Dove'
    click_link 'Add a review'
    fill_in 'Author', :with => 'Test Testing'
    fill_in 'Content body', :with => 'Just testing this test to make sure that this test is working.'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    click_link 'Test Testing'
    click_link 'Edit review'
    fill_in 'Rating', :with => '6'
    click_on 'Update Review'
    expect(page).to have_content 'Okay...Try it one more time.'
  end 
  it "deletes a review" do
    visit '/'
    click_link 'PRODUCT'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Lovely Dove'
    fill_in 'Cost', :with => 12.51
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    click_link 'Lovely Dove'
    click_link 'Add a review'
    fill_in 'Author', :with => 'Test Testing'
    fill_in 'Content body', :with => 'Just testing this test to make sure that this test is working.'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    click_link 'Test Testing'
    click_link 'Delete review'
    expect(page).to have_no_content 'Test Testing'
    expect(page).to have_no_content 'Just testing this test to make sure that this test is working.'
    expect(page).to have_no_content '4'
  end 
  it "deletes a product" do
    visit '/'
    click_link 'PRODUCT'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Lovely Dove'
    fill_in 'Cost', :with => 12.51
    fill_in 'Country of origin', :with => 'United States'
    click_on 'Create Product'
    click_link 'Lovely Dove'
    click_link 'Delete product'
    expect(page).to have_no_content 'Lovely Dove'
    expect(page).to have_no_content '12.51'
    expect(page).to have_no_content 'United States'
  end

end 