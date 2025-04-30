package com.join.mgps.activity;

import android.content.Intent;
import android.os.Bundle;
import com.BaseActivity;
/* loaded from: classes3.dex */
public class MyAccountCenterActivity_ extends BaseActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        startActivity(new Intent(this, MyAccountLoginActivity_.class));
        finish();
    }
}
