package com.example.base_template

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel

class SecondActivity : FlutterActivity() {
//    private val channel = "example/secondActivity";

//    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
//        super.configureFlutterEngine(flutterEngine)
//        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel).setMethodCallHandler { call, result ->
//            when (call.method) {
//                "openBrowser" -> {
//                    val url = call.argument<String>("url")
//                    openBrowser(result, url)
//                }
//                "startNewActivity" -> openSecondActivity(result)
//                else -> {
//                    result.notImplemented()
//                }
//            }
//        }
//    }


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_second)
    }
}