package com.example.att

import com.example.att.model.BlocosModel
import io.ktor.client.*
import io.ktor.client.call.*
import io.ktor.client.engine.*
import io.ktor.client.request.*
import io.ktor.client.statement.*
import io.ktor.util.*
import kotlinx.coroutines.flow.callbackFlow


class Greeting {
    private val platform: Platform = getPlatform()
    ///private var db = Firebase.firestoregit add
    private val httpClient = HttpClient()

    @Throws(Throwable::class)
    suspend fun greeting(): String {
        return "${hello()}, ${platform.name}!"
    }

    suspend fun hello(): String{
        val response: HttpResponse = httpClient.get("https://gitcdn.link/cdn/KaterinaPetrova/greeting/7d47a42fc8d28820387ac7f4aaf36d69e434adc1/greetings.json")
        return response.bodyAsText()
    }
}