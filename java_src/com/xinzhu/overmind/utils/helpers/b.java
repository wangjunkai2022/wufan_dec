package com.xinzhu.overmind.utils.helpers;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
/* compiled from: BundleHelper.java */
/* loaded from: classes.dex */
public class b {
    public static IBinder a(Intent intent, String key) {
        Bundle bundleExtra = intent.getBundleExtra(key);
        if (bundleExtra != null) {
            return b(bundleExtra, "binder");
        }
        return null;
    }

    public static IBinder b(Bundle bundle, String key) {
        return bundle.getBinder(key);
    }

    public static void c(Intent intent, String key, IBinder value) {
        Bundle bundle = new Bundle();
        d(bundle, "binder", value);
        intent.putExtra(key, bundle);
    }

    public static void d(Bundle bundle, String key, IBinder value) {
        bundle.putBinder(key, value);
    }
}
