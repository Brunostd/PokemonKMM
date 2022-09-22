package com.example.att

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform