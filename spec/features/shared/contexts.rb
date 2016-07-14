# require "rails_helper"
#
# # Pages
# shared_context "Home page", page: :main do
#   background { visit root_path }
# end
# shared_context "Simple Page", page: :simple do
#   background { visit simple_path }
# end
#
# # Form Submission
# shared_context "Form Submitted", form_submitted: true do |name: "Spicoli", text: "dude!"|
#   let(:hint_name) { "Your Name" }
#   let(:hint_text) { "Say something using markdown..." }
#   let(:name) { name }
#   let(:text) { text }
#
#   background do
#     fill_in hint_name, with: name
#     fill_in hint_text, with: text
#     click_button "Post"
#   end
# end
#
# shared_context "Form Submitted with Blank Fields", blank_form_submitted: true do
#   include_context "Form Submitted", name: "", text: ""
# end
#
# # Fixtures
# shared_context "Existing Comment", existing_comment: true do
#   before { Comment.create(author: "John Doe", text: "Hello there!") }
# end
