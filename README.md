# layers
> track and display object history in ArrayLists
________________________

##TODO
- [] create single particle object for use with fire
- [] create particle system of particles for fire 
- [] LayerParticle extends Particle 
     - where LayerParticle overrides display with texture image
- [] Particle hasA history

##Objects IN System
- Particles in ParticleSystem
- LayerParticle in ParticleSystem via polymorphism

##ArrayLists primary methods
- add()
- get()
- remove()
- size()

##Syntax - generics
     //setup
     ArrayList<object> arrayName;
     arrayName = new ArrayList<object>();

     //draw
     arrayName.add(new object());

     //get() returns reference to object
     referenceToObject = arrayName.get(index);

     //for every element in the ArrayList, update AND display

###ForLoop syntax
- Enhanced ForLoop
     - note: cannot modify the arraylist while were in the enhanced loop.
``` 
     for (Object o : arraryName) {
          o.update();
	  o.display();
     }
```
- standard forloop allows modification
```
for (int i = 0; i < arrayName.size(); i++) {
    Object o = arrayName.get(i);
    if (o.isDead()){
       arrayName.remove(i);
     }
  }
```
- HOWEVER, modifying an index that has yet to be counted may cause problems
- THEREFORE, when modifying, start iterate from the last item and move to the front
- WHERE i will loop until it reaches zero
```
for (int i = arrayName.size()-1; i >=0; i--){
     Object o = arrayName.get(i);
     o.update();
     o.display();
     
     if (o.isDead()){
          arrayName.remove(i);
       }
  }
```

###Deleting Objects
- remove ZERO :: remove the first element in the arraylist (the OLDEST object)
```
if (arrayName.size() > NUM) {
     arrayName.remove(0);      //removes the oldest object (zero index)
     }
```

##Encapsulate the idea of a system into its own class

