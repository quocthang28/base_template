package com.example.base_template

import android.content.Intent
import android.net.Uri
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val channel = "example/browser";
    private val networkEventChannel = "platform_channel_events/connectivity"


    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel).setMethodCallHandler { call, result ->
            when (call.method) {
                "openBrowser" -> {
                    val url = call.argument<String>("url")
                    openBrowser(result, url)
                }
                "startNewActivity" -> openSecondActivity(result)
                else -> {
                    result.notImplemented()
                }
            }
        }

        EventChannel(flutterEngine.dartExecutor.binaryMessenger, networkEventChannel).setStreamHandler(ConnectivityEventStreamHandler(this))

    }

    private fun openBrowser(result: MethodChannel.Result, url: String?) {
        val browserIntent = Intent(Intent.ACTION_VIEW, Uri.parse(url))
        startActivity(browserIntent)
        result.success("browser opened")
    }

    private fun openSecondActivity(result: MethodChannel.Result){
        //val intent = Intent(this, SecondActivity::class.java)
        val secondActivity = NewEngineIntentBuilder(SecondActivity::class.java).build(applicationContext)
        startActivity(secondActivity)
        result.success("second activity started")
    }

}
