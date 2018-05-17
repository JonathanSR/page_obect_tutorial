## Page Object Model Pattern

We are going to explore the Page Object Model Pattern by creating a feature test using it.

### Learning Goals
* Understand what a Page Object Model is
* The benefits of a Page Object Model
* Implement the Page Object Model into an automation project using SitePrism

### Warmup
* As a group share what your definition of a Page Object Model is
* What are its benefits
* What are its drawbacks

### What is it?
* The page object model is a test automation patttern that aims to create an abstraction of your site's user interface that can be used in tests.
* A page object wraps the HTML page, or a section with an application-specific API, allowing you to manipulate page elements without digging around in the HTML. Within block anyone?

### Page Object with Site Prism
* Site prism provides a simple DSL for describing your site using Page Objects in conjunction with Capybara.
* Site Prism allows us to model pages, sections, elements, collection of elements etc. We will cover the four that were just mentioned.

#### Pages
* Pages are the central block of the Page Object Model. 'https://google.com' is a page.
```shell
class Home < SitePrism::Page
end
```

#### Sections
* A Section is a part of a page that either contains complex objects or appears in multiple pages. 
* A Navbar and a Search Form are examples of a section.
```shell
class SearchForm < SitePrism::Section
end
```

#### Elements
* An element is a text field, button, box, image etc. A singular item that appears on your page.
```shell
element :search_box, '.search-box'
```
#### Collection of Elements
* A collection of elements is a collection of similar elements. Think a grid with agents.
```shell
elements :agents, '.grid-box.box'
```

### Getting Started
For this tutorial we are going to clone down a repo that has the skeleton setup for our page object implementation. 
```shell
$ git clone git@github.com:JonathanSR/page_obect_tutorial.git
$ cd page_object_tutorial
$ bundle
```

### Takeaways
- Abstracts functionality from step definitions and support files into one singular location.
- Easy to maintain your framework as it grows.
- Allows for quicker maintenace as your UI changes, which is frequently.
- Models your folder structure making it more detailed and approachable.

### Resources for Further Study
- https://github.com/natritmeyer/site_prism
- https://martinfowler.com/bliki/PageObject.html
- https://code.dev.kaseya.net:8443/projects/AT2/repos/k1-auto-tests/browse
- https://www.pgs-soft.com/blog/better-automated-tests-in-ruby-using-the-siteprism-gem-for-the-page-object-model-pattern/
