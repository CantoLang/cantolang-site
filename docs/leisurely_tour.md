###Say Hello, Canto

How else to begin our tour?  Say hello, Canto:

  script hello_world {
      public main = "Hello, World."
  }

  site hello {
      public page index = "<h1>Hello, World.</h1>"
  }

The above code defines a web site called `hello`.  (A Canto program is
automatically a web site.)  The `{` and `}` delimit a code
block, which is a block containing Canto statements.  This particular block contains
a single statement, a definition of a page called `index`, the default
home page for the site.  

The line

  page index = "<h1>Hello, World.</h1>"

may look like the declaration of a variable initialized to a string, but Canto is a 
declarative language and doesn't have variables of the sort procedural languages do.
The above line defines an entity called `index`, a subclass of `page`,
which behaves more like a function than a variable: it returns the string 
`&lt;h1>Hello, World.&lt;/h1>` when it is instantiated, but until then
does nothing.  In particular, `index` doesn't point to a memory address, and 
there is no way to change the value it returns.

Here is an alternate way of expressing the same definition: 

  site hello {
      page index [|
          <h1>Hello, World.</h1>
      |]
  }

In this case we represent the content of the page with a data block rather than
a string.  A data block is delimited by `[|` and `|]`,  
and may contain any kind of text.  Leading and trailing whitespace is automatically
trimmed, so this version produces exactly the same text as the previous one.


###A more personal hello

Let's now enhance our humble site to be a bit more dynamic, by allowing the target of 
the greeting to be specified at runtime.  In a traditional language, we might handle this
with command line arguments.  The web-oriented equivalent are the arguments encoded in
the request url, and all we have to do to get them is add the appropriate parameter to 
our page definition.  In this case, the appropriate parameter is what Canto calls a
table -- also known as a map, dict, key-value pair collection or associative array.  In
Canto curly braces (`{}`) signify a table.

What we want our application to do is look for a "name" argument, and if it's there say
hello to the specified name, otherwise say hello to World.  Here is our improved site: 

      site hello {
          page index(params{}) {
              user_name = params["name"]
    
              hello_to = user_name ? user_name : "World"
    
              hello(target) [|
                  <h1>Hello, {= target; =}.</h1>
              |]
          
              hello(hello_to);
          }
      }

The definition of `index` contains three other definitions, `user_name`,
`hello_to` and `hello`, and one construction (`hello(hello_to);`.
That may seem like a lot for page that just says hello, and indeed it is; we could replace the
above definition of index with the following and achieve the same output:

      page index(params{}) = "<h1>Hello, " + (params["name"] ? params["name"] : "World") + ".</h1>"

However, we want our application to be comprehensible, maintainable and adaptable, so we break
up the logic into three distinct functions:

* `user_name`, to retrieve data, specifically the name of the user.  If we ever change 
where or how we get the user's name, this is where we would make the change.

* `hello_to`, to define the business logic, specifically the logic that determines whom
we say hello to.  As implemented here, the logic is that we say hello to the user, if the user name 
is available, otherwise we say hello to "World".

* `hello`, to implement the presentation in a clean manner, that is, free of dependencies.
This makes it easy to refactor `hello` into a base class or widget library if it turns
out we need to say hello on other pages.

   


* `hello(target)`, to    

hello, but there are benefits to 


In a standard object-oriented language, subclasses wrap superclasses.  The superclass is 
constructed first, then subclass construction begins where the superclass leaves off.  If
a subclass has a method of the same signature as its superclass, the subclass method is
the one visible to the outside world.  This is all to preserve one-way dependency: 
subclasses are dependent on superclasses, but superclasses are completely ignorant of 
subclasses.

Canto is object-oriented with a rich inheritance model that provides possibilities that
are not available in other languages.  One of these possibilities is inside-out
construction, which begins with the realization that the wrapping order can be inverted
without changing the dependency order.    

 


  
