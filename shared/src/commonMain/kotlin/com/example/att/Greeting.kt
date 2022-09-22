package com.example.att

import dev.gitlive.firebase.Firebase
import dev.gitlive.firebase.firestore.firestore


class Greeting {
    private val platform: Platform = getPlatform()
    private var db = Firebase.firestore

    fun greeting(): String {
        return "Hello, ${platform.name}!"
    }

    fun hello(): String{
        db.collection("blocos")
        return "Hello world!!"
    }

}