package com.example.att.model

import kotlinx.serialization.Serializable

@Serializable
data class Hello(
    var string: String,
    var lang: String
)