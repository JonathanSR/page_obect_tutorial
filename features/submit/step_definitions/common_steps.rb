Given("I am on the Submit Page") do
  #Loading/visiting our starting page
  @app.root.load

  #Assertion to verify that we are on our expected root page
  expect(@app.root).to be_displayed
end

When("I login I should be on the Home Page") do
  # Sequenece of events where we are accessing single elements, to execute actions, via method calls belonging to the rootpage class.
  @app.root.sign_in.click
  @app.root.input_name.set ""
  @app.root.next_button.click

  @app.root.input_password.set
  @app.root.password_next_button.click

  #verifiyng that after our events have transpired we are on our expected home page
  expect(@app.home).to be_displayed
end 

And("I click on the submit button") do
  #Another method action being executed by calling click on our submit element belonging to our home page.
  @app.home.submit.click
end

Then("I should be on the Submit Page") do
  expect(@app.submit).to be_displayed

  #wait_for_module waits for our module element to load/display before moving on. 
  @app.submit.wait_for_module

  #be_all_there is an assertion that verifies that all our elements in our submit page are present.
  expect(@app.submit).to be_all_there
end 

And("I submit an auto") do

  #Series of events that traverse our Submit page to complete an entry for an automation record.
  @app.submit.module.select("")
  @app.submit.number.set("") 
  @app.submit.description.set("")
  @app.submit.scenarios.set("2")
  @app.submit.add_auto_button.click
end 

Then("I should see that auto logged in my dashboard") do
  expect(@app.home).to be_displayed
  
  #Method called on our current sprint section to verify that our record has been entered successfully
  @app.home.current_sprint.assert_new_feature("")
end 

