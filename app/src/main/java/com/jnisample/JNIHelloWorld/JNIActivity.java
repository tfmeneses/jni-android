package com.jnisample.JNIHelloWorld;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class JNIActivity extends Activity {

    public native String getNativeMessage();

    static {
        System.loadLibrary("mynative");
    }

    Button btnInvokeJNI;
    TextView tvNativeMsg;

    /**
     * Called when the activity is first created.
     */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);

        btnInvokeJNI = (Button) findViewById(R.id.btnInvokeJni);
        tvNativeMsg = (TextView) findViewById(R.id.txtJniText);

        btnInvokeJNI.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                tvNativeMsg.setText(getNativeMessage());
            }
        });
    }
}
