package uk.co.dorrio.dotpay_dorrio_example;

import android.os.Bundle;
import android.util.Log;

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;

import pl.mobiltek.paymentsmobile.dotpay.AppSDK;
import pl.mobiltek.paymentsmobile.dotpay.utils.Settings;

public class MainActivity extends FlutterActivity {
  @Override
  public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
    GeneratedPluginRegistrant.registerWith(flutterEngine);
  }

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    Log.d("myTag", "This is my message");
    Log.d("myTag", "This is my message");
    Log.d("myTag", "This is my message");
    AppSDK.initialize(this);
  }
}
