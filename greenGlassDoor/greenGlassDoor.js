//WELCOME TO THE GREEN GLASS DOOR!
const readline = require("readline-sync");
userInput = readline.question("Enter something you think could enter the Green Glass Door: ");

function grnGlassDoor(str)
{
    for (i = 0; i < str.length; i++)
    {
        if (str[i] == str[i+1])
        {
            console.log("Yes " + str + " can enter the Green Glass Door!");
            break;
        }
        if (i == str.length-1)
        {
            console.log("No! " + userInput + " can NOT enter the Green Glass Door!");
        }
    }
}

grnGlassDoor(userInput);
