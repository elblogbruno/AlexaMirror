## Welcome to AlexaMirror

<iframe width="854" height="480" src="https://www.youtube.com/embed/I0a1GjF9JYk" frameborder="0" allowfullscreen></iframe>

Alexa is my MagicMirror alexa enabled attempt.It took me several weeks to develop and today I bring it to you in a short and easy way,I hope.Well I'm only 15 I'm just leaving the shell.

### "Alexa" enabled MagicMirror

Thanks to @MichMich first and the alexa team, for developing such a great software growing every day!.
You  can see his work here(It is crucial on this project) 

[MagicMirror Repository](https://github.com/MichMich/MagicMirror)

[Alexa Avs Sample App ](https://github.com/alexa/alexa-avs-sample-app/)

### What you need to do.
Open a terminal
type 

```markdown

curl -sL https://raw.githubusercontent.com/elblogbruno/AlexaMirror/master/installscript.sh | bash

```

When alexa installation starts follow this steps(they've been took from alexa avs sample app wiki):

### Step 1: Register for an Amazon developer account

Unless you already have one, go ahead and create a free developer account at developer.amazon.com. You should review the AVS Terms and Agreements here.

![Image of alexa](https://github.com/alexa/alexa-avs-sample-app/wiki/assets/amazon-dev-account.png)

### Step 2: Create a device and security profile

Follow the steps here to register your product and create a security profile.

Make note of the following parameters. You'll need these in Step 5 below.

    ProductID (also known as Device Type ID),
    ClientID, and
    ClientSecret

Important: Make sure your Allowed Origins and Allowed Return URLs are set under Security Profile > Web Settings (see Create a device and security profile):

![Image of alexa](https://github.com/alexa/alexa-avs-sample-app/wiki/assets/allowed-origins.png)

### Step 3: Update the install script with your credentials

Before you run the install script, you need to update the script with the credentials that you got in step 3 - ProductID, ClientID, ClientSecret.

![Image of alexa](https://github.com/alexa/alexa-avs-sample-app/wiki/assets/update-script.png)

Paste the values for ProductID, ClientID, and ClientSecret that you got from Step 2 above.

The changes should look like this:

    ProductID="RaspberryPi3"
    ClientID="amzn.xxxxx.xxxxxxxxx"
    ClientSecret="4e8cb14xxxxxxxxxxxxxxxxxxxxxxxxxxxxx6b4f9"

Type ctrl-X and then Y, and then press Enter to save the changes to the file and press space on my little script to follow the installation.

When you arrive to that part of the installation,you can choose between using hdmi output for sound or speakers conected to the 3.5 mm jack output

![Image of output](https://github.com/elblogbruno/AlexaMirror/blob/master/setaudiooutputalexa.png?raw=true)


### Support or Contact

Having trouble with AlexaMirror? You can sent me an email to elblogdebruno@outlook.es 

Thanks a lot!
