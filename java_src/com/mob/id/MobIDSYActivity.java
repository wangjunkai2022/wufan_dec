package com.mob.id;

import android.app.Activity;
import android.os.Bundle;
import android.os.PowerManager;
import android.view.MotionEvent;
/* loaded from: classes4.dex */
public class MobIDSYActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            if (getIntent() != null) {
                for (int i2 : getIntent().getIntArrayExtra("fg")) {
                    getWindow().addFlags(i2);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        try {
            if (((PowerManager) getSystemService("power")).isScreenOn()) {
                finish();
            }
        } catch (Throwable unused) {
        }
        super.onResume();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            finish();
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }
}
