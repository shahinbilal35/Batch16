import { LightningElement } from 'lwc';

export default class LocalProperties extends LightningElement {
    name;
    fullName = "Sahin";
    age = 42;
    isComplete = true;
    location = {
        city: "Houston",
        country: "United State"
    };
    fruits = ["Banana", "Grapa", "Apple", "Dragon"];
}