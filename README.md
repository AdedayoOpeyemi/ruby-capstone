# Ruby Linter

:computer: This project consists of a CSS Linter written in Ruby :computer:

## Built With

- Ruby, RSpec
- VSCode


## Getting Started

**To get a local copy up and running follow these simple example steps.**

### Prerequisites

- Ruby installed

### Setup

- Clone this repository on your local environment:
  - From a terminal window, change to the local directory where you want to clone your repository. 
  - Clone using the following command, for HTTPS: ```git clone https://github.com/alvaropazz/ruby-capstone.git``` for SSH ```git@github.com:alvaropazz/ruby-capstone.git```.

### Usage

- Go into the ```bin``` folder and execute the following command
  - ```ruby main #{insert the path to the css file to be analized} ```

### Run tests

- Install RSpec
  - Run the ```rspec``` command

### Linter Usage

1. Check Indentation on starting and ending lines
  - This linter checks whether or not your starting and ending lines have spaces before them when they aren't nested.
  
**Bad Code**
```
  h1 {
  color: green;
}
```

**Good Code**
```
h1 {
  color: green;
}
```

2. Check Indentation on body of the selector 
  - This linter checks whether or not the lines on the body of your selector are indented.
  
**Bad Code**
```
section {
display: grid;
}
```

**Good Code**
```
section {
  display: grid;
}
```

3. Check if there are spaces after your colons
  - This linter checks whether or not there's a space after your colons.
  
**Bad Code**
```
li {
  display:flex;
}
```

**Good Code**
```
li {
  display: flex;
}
```

4. Check if your body lines end with a semi-colon.
  - This linter checks whether or not there's a semi-colon at the end of your body lines.
  
**Bad Code**
```
body {
  box-sizing: border-box
}
```

**Good Code**
```
body {
  box-sizing: border-box;
}
```

5. Check you added a unit after a zero.
  - This linter checks whether or not there's a unit after a zero.
  
**Bad Code**
```
body {
  margin: 0px;
}
```

**Good Code**
```
body {
  margin: 0;
}
```

## Screenshot

![Example Output](https://user-images.githubusercontent.com/58086801/80663620-1dcec000-8a5a-11ea-8668-735e1b4c4f59.png)

## Authors

:bulb: **Alvaro Paz**

- Github: [@alvaropazz](https://github.com/alvaropazz)
- Twitter: [@alvaropazz](https://twitter.com/alvaropazz)
- Linkedin: [linkedin](https://linkedin.com/in/alvaropaz)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/alvaropazz/ruby-capstone/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](lic.url) licensed.