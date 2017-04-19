---
layout: post
title:  "Design patterns ( part 2 )"
---

## Singleton Design pattern

Singleton is the one of the most famous design patterns, despite of you like it or not.
Singleton state that every class should have only one instance across the application and can't be extended, like the president of any country, there is only one president for any country.

We can use it to do some tasks like writing some logs to file or in Wordpress class we don't need to create inheritance from specific class ( because we using hooks ).

## Factory Design pattern

Factory design pattern that we create a class that create other instance from other class .

```php
interface Human
{
  public function talk();

  public function walk();
}

class Boy extends Human {
  public function talk() {
    return "he talk";
  }

  public function walk() {
    return "he walk";
  }
}

class CreateHumanFactory {
  public function make(Human $human)  
  {
    return $human->talk . ' and ' . $human->walk;
  }
}

(new CreateHumanFactory)->make(new Boy);
```
