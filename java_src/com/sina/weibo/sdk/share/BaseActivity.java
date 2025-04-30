package com.sina.weibo.sdk.share;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public class BaseActivity extends Activity {
    private boolean h() {
        Exception e4;
        boolean z3;
        Method method;
        try {
            TypedArray obtainStyledAttributes = obtainStyledAttributes((int[]) Class.forName("com.android.internal.R$styleable").getField("Window").get(null));
            method = ActivityInfo.class.getMethod("isTranslucentOrFloating", TypedArray.class);
            method.setAccessible(true);
            z3 = ((Boolean) method.invoke(null, obtainStyledAttributes)).booleanValue();
        } catch (Exception e5) {
            e4 = e5;
            z3 = false;
        }
        try {
            method.setAccessible(false);
        } catch (Exception e6) {
            e4 = e6;
            e4.printStackTrace();
            return z3;
        }
        return z3;
    }

    private boolean i() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mActivityInfo");
            declaredField.setAccessible(true);
            ((ActivityInfo) declaredField.get(this)).screenOrientation = -1;
            declaredField.setAccessible(false);
            return true;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        if (Build.VERSION.SDK_INT == 26 && h()) {
            i();
        }
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i2) {
        if (Build.VERSION.SDK_INT == 26 && h()) {
            return;
        }
        super.setRequestedOrientation(i2);
    }
}
