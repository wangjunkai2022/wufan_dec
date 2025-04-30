package com.sdk.Unicorn.base.module.permission;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
/* loaded from: classes4.dex */
public class PermissionActivity extends Activity {
    @Override // android.app.Activity
    @SuppressLint({"NewApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent().getStringArrayExtra("KEY_INPUT_PERMISSIONS") == null) {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        finish();
    }
}
