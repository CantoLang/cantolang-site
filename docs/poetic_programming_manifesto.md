#Poetic Programming: A Manifesto

##Introduction

Poetic Programming is an attitude that sees programming as a form of writing, and sees poetry as an especially good prototype for most programming.  Poetry is economical (says a lot with few words), rich (carries multiple layers of meaning), and beautiful (or strives to be).  Poetic Programming says that programs should aim for the same economy, richness, and aesthetic value that poems do.

Poetic Programming is not the same as Code Poetry, though they certainly share many values and motivations.  Code Poetry takes code of any sort and lays it out so it resembles poetry.  Poetic Programming urges programs to be, not just resemble, poetry.

###The Semantics of Poetry

The attributes of poetry that Poetic Programming seeks to emulate -- economy, richness, and beauty -- are means to an end; the end is to convey meaning.  Human writing in general contains two kinds of meaning: denotational (the dictionary definition) and affective (the feelings the writing evokes).  Many kinds of writing, such as technical writing, reference works, statutes, contracts, and many others, limit themselves as much as possible to denotational meaning, which can be objectively defined and delineated.  Affective meaning is subjective and much harder to nail down.  But that doesn't mean it's not useful or effective.  Some kinds of writing, such as poetry, actively use affective meaning to great effect.

It's also not true that affective meaning in any way conflicts with or takes away from denotational meaning.  Quite the contrary, affective meaning can lead to more and deeper denotational meaning.  The great poet Rumi said that from understanding comes love.  It's also true that from love comes understanding.  When we love a subject, we dig deeper and invest more in making sense of it.  Revelations bring us joy.  When we love a person, we want to know not just the surface meaning of what she says; we want to know the feelings that she intends her words to carry.  It is those feelings that tell us what is really going on inside of her.

Ideally we have virtuous understanding-love-understanding-love cycle, where the more we learn about persons or subjects, the more we love them, and the more we love persons or subjects, the more we learn about them.  But even if the feelings are not positive, they add positively to (painful) understanding.

And the connection between denotational and affective goes beyond love of subject.  It extends to our most fundamental judgements.  Denotational knowledge always reaches a limit.  It reaches a limit as you drill down into the facts, and eventually reach questions of fact for which you have no answer.  It reaches a limit as you follow the logical arguments that turn facts into understanding back to their source, the premises we take as given.  And most notably for our present topic, it reaches a limit when we get to the normative judgments that underlie those premises.

It is by now well established experimentally that normative judgments are often influenced by affective factors.  Sometimes this influence is small and fleeting, like the effect of store music on shopping behavior.  Other times it can be deep and abiding, such as the moral instruction we receive as children.  In the deep and abiding category is the normative judgment underlying scientific knowledge, known to philosophers of science as the problem of theory choice.  As Thomas Kuhn and others have observed, there is no way to select between two theories of the world on the basis of fact, because facts are always facts about something, and what counts as something is different from theory to theory.

###The Semantics of Code

Code has its own semantic divide, analogous in some ways to the denotational-affective difference.  Some aspects of code, such as keywords and syntactic structures, determine what happens when the code executes.  Others, such as comments and the names of variables and functions, are largely irrelevant.  It's a common practice, in fact, to remove comments and replace names as part of the deploy process for code such as scripts that run in a browser to improve performance and security.  Yet comments and names are absolutely necessary for understanding and maintaining code.


##The Poetic Critique

Poetic Programming begins not as a paradigm, or even a style.  It begins , in good dialectic fashion, as a critique of the existing practice.  Too often programs are bloated, incomprehensible, and ugly, not because programmers are incapable of better but because many forces push them in that direction.  Among these forces are various trends and commonly held principles that are generally considered to be neutral or positive, but which reliably lead to unwieldy and confusing programs.  Here are examples:

###Platforms and Frameworks

Platforms and frameworks are harmful.  They constrain the behavior of a program and force it to adopt specific models and strategies.  They require constant care and feeding.  Over time the purposes of the platform may crowd out the purposes of the program.  Poetic Programming encourages programmers to see platforms and frameworks as the most temporary and throw-away part of a program rather than its most deeply entrenched and permanent part.

###Frameworks on Top of Frameworks

Frameworks designed as customizations or extensions of other frameworks are doubly harmful.  Programmers who love frameworks generally love building frameworks as well, and if a framework has been adopted for a mission the temptation to build a more suitable and powerful framework on top of the first framework is very strong.  Any functionality that might be useful to multiple applications built on top of the framework is a candidate for the new intermediate framework.  The goal is improve the efficiency of application development by providing more functionality "out of the box".  Often however the result is that functionality is divided among different levels, and what might have seemed to be a natural division of responsibility to the original programmer seems arbitrary to those that come after.

###Libraries

Libraries are harmful.  They are opaque, written by someone who is not familiar with your concerns and may or may not share your assumptions about what should happen in various circumstances.  They are full of code that you don't need.  In the code you do need, there are often complexities of no value to you, and risks of which you have no knowledge.  Poetic programming encourages programmers to see functions they craft themselves as superior to functions in libraries, other things being equal.  Libraries have value because you can't do everything yourself, and wouldn't want to if you could.  But if it's a programming task you do have the luxury of tackling yourself, and you are interested in the problem being solved, then curating your own code may be better than blindly calling someone else's.
   
###Dependencies with Dependencies

Depenedencies with dependencies are harmful squared.  "Dependency Hell" is a rite of passage for developers, referring to the inability to build an application because of dependency conflicts and the hours of work often needed to fix them.  But "dependency hell" is a misnomer.  It really should be "dependency of dependency hell", because the problem arises only when dependencies have dependencies of their own, and those second-degree dependencies overlap with other primary or secondary dependencies.  When a dependency-with-a-dependency needs to be updated to a new version it may require an update if its own dependencies, which can trigger a cascade of further update requirements.  Sometimes this leads to contradictory requirements, such as two different versions of a single library. 

Programmers hardly ever disqualify a dependency simply for having its own dependencies, but they should.  Not only would this avoid Dependency Hell, it would also reward those libraries that accomplish their objectives most poetically -- free of irrelevant concerns and unnecessary complexity.

###Variables

Programmers are often told that state is bad, but generally what is meant is not all state, but state contained in variables.  From the point of view of the hardware, a program is itself a form of state, but it's not automatically bad; to the contrary, not having a program is bad.  Other forms of state arise naturally during the course of program execution, such as the return address pushed on the stack when a function is called.  This bit of state is not bad; it allows a function to return to where it was called from, without which functions would be useless.

The problem with variables is that they are disentangled from the values they represent.  Consider a variable intended to hold a temperature value.  A measurement is taken, and the result is stored.  At that point the connection between the state of the program and the state of the world is severed.  The world goes its own way, while the stored value just sits there. There is generally no way to know if the value is correct without obtaining the temperature data again to check it against.  But if you have to do that every time there isn't much point in storing the temperature in the first place.


##The Poetic Anti-Critique

Just as important as spotlighting programming practices that should be changed is identifying those that should be encouraged.  Poetic Programming acknowledges several positive trends in software engineering.

###Design Patterns

Design patterns did not originate among programmers. The book that started it all, _A Pattern Language: Towns, Buidings, Construction_, was written by architects (Christopher Alexander, Sara Ishikawa, and Murray Silverstein).  It begins with the recognition that the problems that architects and designers encounter at all scales, from chairs and tables to houses and shops to cities and parks, arise from the tension inherent in Human Space -- the interplay between the hard, unalterable reality of physics and geometry on the one hand, and the harder-to-pin-down but just as real needs and constraints of human beings on the other.  The problems of Human Space are too dynamic and variable for exact, scientifically determined solutions, yet with experience it is possible to recognize that some approaches are better than others.

Design patterns are knowledge extracted from this experience.  They aren't algorithms; they depend on nuanced adaptation to circumstances.  They are templates, but not just templates; they are based on images of a solution deriving from simple but deep concepts.  They resemble more than anything else the metaphoric imagery of poetry. 

###Functions

In one sense, a function is the simplest thing in the world -- a bit of code that does something.  But when the constraints that make a function a _good_ function are included and considered, a function is a profound achievement.  These constraints, which may be imposed by the language or by the programmer, include isolation and generality.  Isolation means that the code inside the function doesn't need anything outside the function, except perhaps further functions that are themselves isolated, and doesn't change anything outside the function either -- no side effects.  Generality means that the code is parameterized, and the range of values and combinations provided by the parameters cover all cases for which the function might be useful.

Not all functions can be _good_ functions.  Output is a side effect, so a program with no side effects whatsoever would be invisible and ineffective.  But all functions can embody functional values as best they can given their purpose and context.

Poetic Programming embraces functional principles, but not functional purity.  For certain programming tasks pure functional programming leads to clumsy, hard-to-fathom constructions that defeat one of the most important objectives of any program: to communicate clearly the program's purposes and approach to other programmers. 

###Declarative Programming

There is no doubt that procedural programming is the most natural style for most programmers: step-by-step instructions to the computer, a recipe for the desired outcome.  Yet the focus on _how_ to achieve an outcome can obscure _what_ the outcome should be.  Which steps are vital, and which are simply the whim of the programmer?  Which effects are desired, and which are unanticipated?  

Declarative programming encourages the programmer to start with the _what_ and work backwards to the _how_.  This requires deeper thinking by the programmer, but the benefits are enormous: the purpose of the program is clear, and the organization of the program reflects its purpose.  As a bonus, the programmer will walk away with a fuller understanding of the original problem.

Declarative programming has another advantage for poetic programmers: declarative syntax is more poetic than imperative syntax.  Descriptions, narratives, and metaphors are all typically rendered in a declarative voice.  To be sure, imperative programs can be poetic.  Declarative programming simply makes it easier.

###Polymorphism and Inheritance

There is no single universally recognized definition of object-oriented programming, but polymorphism and inheritance show up, in some form, in pretty much all of them.  Polymorphism and inheritance are two views on the same underlying phenomenon, which is the entanglement of an abstract model and a concrete instance.

Polymorphism is the user's view.  Let's say I pick up some object x.  x might be a corkscrew, so I can use x to open a bottle of wine.  x might also be bottle opener, so I can also use x to open a bottle of beer.  In this case two abstract models (corkscrew and bottle opener) are entangled with one concrete instance (x).  A user's interest in a concrete instance depends on which abstract models are entangled with it, since the user is engaging with the instance for a reason, and reasons are themselves almost always abstractions.

Inheritance is the implementer's view.  If I have to construct x, and x has to be a corkscrew and also a bottle opener, my job is a lot easier if I start with a good corkscrew prototype and also a good bottle opener prototype.  In most cases it's much easier and better to build on good existing designs than to build something complex (like a corkscrew-bottlge-opener) completely from scratch. 

###Static Typing and Dynamic Typing

The Type Wars ended when the number of people fighting them were outnumbered by people saying the Type Wars were stupid because static and dynamic typing are both useful.  Static typing provides safety, reliability, and performance while dynamic typing provides flexibility, robustness, and rapid development.

###Automated Testing

Automated testing is the software equivalent of mindfulness -- the ability of a system to see what it's doing wrong.  Not all automated testing accomplishes this equally well.  Unit tests are seldom useful past initial development, but they are pretty easy to write and cheap to run.  Functional tests can be very valuable but it's hard to construct good functional tests.  Integration tests are always valuable but are hard to write and expensive to maintain and run.

##The Vision

###Simple Programming

Simplicity has value.  If two programs do the same thing but differ in complexity, the simpler program is more valuable.  Complex programs are harder to maintain and more expensive to configure and run.  When something goes wrong it's harder to figure out the problem and riskier to push a fix.

Poetic Programming is a practice of simplification.  The most complex program is the program not yet written.  In its earliest stages, when it's all skeleton and boilerplate, a program appears deceptively simple.  In fact, relative to what the program does at this early stage (almost nothing), the program may already be overly complex.   

###Automated State Management

As we have stated, variables are harmful because they are disconnected from their sources of information.  Poetic Programming suggests replacing variables with cached values that are connected to their sources.   


