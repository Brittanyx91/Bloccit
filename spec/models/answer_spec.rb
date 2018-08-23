require 'rails_helper'

RSpec.describe Answer, type: :model do
let(:question) { Question.create!(title: "New Post Title", body: "New Post Body", resolved: "boolean") }
  let(:answer) { Answer.create!(body: "New Post Body", question:question) }
  
   describe "attributes" do
     it "has body attributes" do
       expect(answer).to have_attributes(body: "New Post Body")
     end
   end
end
