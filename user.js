class User {
    constructor(name, age) {
        this.name = name;
        this.age = age;
    }

    compare(user) {
        if(this.age > user.age)
            return `${this.name} is older than ${user.name}`
        else
            return `${user.name} is older than ${this.name}`
    }
}

user1 = new User('mike', 20);
user2 = new User('jack', 25);


user1.compare(user2);
