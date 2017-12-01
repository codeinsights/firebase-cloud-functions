# firebase-cloud-functions
Repository project for tutorial https://codeinsights.in/tutorials/6/cloud-functions-for-firebase-with-android

## Commands to setup

Run ```firebase login```

This will give a url to authenticate. In the docker container port 9005 is mapped to 8091 as after authentication it will redirect to port 9005, hence changing the redirect url to 8091 from 9005
will work successfully

Authentication url provided will be like. Open it in your browser. Here you need to change the last param **9005** to **8091**
https://accounts.google.com/o/oauth2/auth?client_id=63423452345-fgrhgmd47bqnekij5i8b5pr03ho849e6.apps.googleusercontent.com&scope=email%20openid%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloudplatformprojects.readonly%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Ffirebase%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform&response_type=code&state=2525234234&redirect_uri=http%3A%2F%2Flocalhost%3A9005


Redirect url should look like
http://localhost:8091/?state=234234234&code=4/A234242wer7B-pd3Qfn4gYHKy136-LQrhD-pav1LVbg&authuser=0&session_state=e5c81f6a5204bfff234sdgsfwwgee1353e..b613&prompt=consent#

If it is successful you will get a message in the browser.

## Initialize the project
Run
```firebase init functions```

You will be asked to attach it to an existing project
If you choose to create a new project Then
Please visit https://console.firebase.google.com to create a new project

To attach this to an existing firebase project run ```firebase use --add```. 
Type ```yes``` when asked to install dependencies
