Poetic Programming: A Manifesto

Poetic Programming is an attitude towards programming that sees programming as fundamentally a form of written human expression, and sees poetry as an especially good role model.  Poetry is economical (says a lot with few words), rich (carries multiple layers of meaning), and beautiful (or at least tries to be).  Poetic Programming says that programs should strive for the same economy, richness, and aesthetic value that poems do.


The Critique

Poetic Programming is not a paradigm, or even a style.  It is a critique.  Too often programs are bloated, incomprehensible, and ugly, not because programmers are incapable of better but because many forces push them in that direction.  Among these forces are trends and commonly held principles that are generally considered to be neutral or positive, but which reliably lead to unwieldy and confusing programs.  Here are examples:

Platforms and Frameworks.  Platforms and frameworks are evil.  They constrain the behavior of a program and force it to adopt specific models and strategies.  They require constant care and feeding.  Over time the purposes of the platform may crowd out the purposes of the program.  Poetic Programming encourages programmers to see platforms and frameworks as the most temporary and throw-away part of a program rather than its most deeply entrenched and permanent part.

Libraries.  Libraries are evil.  They are opaque, written by someone who is not familiar with your concerns and may or may not share your assumptions about what should happen in various circumstances.  They are full of code that you don't need.  In the code you do need, there are often complexities of no value to you, and risks of which you have no knowledge.  Poetic programming encourages programmers to see functions they craft themselves as superior to functions in libraries, other things being equal.  Libraries have value when a programmer is missing either the time, knowledge or interest required to develop some functionality; but curating your own code is always better than blindly calling someone else's if you can manage it.
   
Dependencies with Dependencies.  Depenedencies with dependencies are evil squared.  "Dependency Hell" is a rite of passage for developers, referring to the inability to build an application because of dependency conflicts and the hours of work often needed to fix it.  But "dependency hell" is a misnomer.  It really should be "dependency of dependency hell", because the problem arises only when dependencies have dependencies of their own, and those second-degree dependencies overlap with other primary or secondary dependencies.  Programmers hardly ever disqualify a dependency simply for its own depenedencies, but they should.  Not only would this avoid Dependency Hell, it would also reward those libraries that accomplish their objectives most poetically -- free of irrelevant concerns and unnecessary complexity.

Variables.  Programmers are often told that state is bad, but generally what is meant is not all state, but state contained in variables.  From the point of view of the hardware, a program is itself a form of state, but it's not bad automatically bad; to the contrary, not having a program is bad.  Other forms of state arise naturally during the course of program execution, such as the return address pushed on the stack when a function is called.  This bit of state is not bad; it allows a function to return to where it was called from, without which functions would be useless.

The problem with variables is that they are disentangled from the values they represent.  Consider a variable intended to hold a temperature value.  A measurement is taken, and the result is stored.  At that point the connection between the state of the program and the state of the world is severed.  The world goes its own way, while the stored value just sits there. There is generally no way to know if the value is correct without obtaining the temperature data again to check it against.  But if you have to do that every time there isn't much point in storing the temperature in the first place.


The Acknowledgements

Poetic Programming acknowledges a number of very positive developments in programming.

Patterns. 

Functions.

Declarative Programming.

Polymorphism and Inheritance.

Static Typing and Dynamic Typing.

Automated Testing.


The Vision

Simple Programming.

Automated State Management.




