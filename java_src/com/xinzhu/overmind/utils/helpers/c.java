package com.xinzhu.overmind.utils.helpers;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ComponentInfo;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
/* compiled from: ComponentHelper.java */
/* loaded from: classes.dex */
public class c {
    public static boolean a(Intent a4, Intent b4) {
        return new Intent.FilterComparison(a4).equals(new Intent.FilterComparison(b4));
    }

    public static boolean b(Intent intent) {
        return AdBaseConstants.MIME_APK.equals(intent.getType());
    }

    public static boolean c(Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null || com.xinzhu.overmind.client.e.getVPackageName() == null) {
            return false;
        }
        return component.getPackageName().equals(com.xinzhu.overmind.client.e.getVPackageName());
    }

    public static boolean d(Intent[] intent) {
        for (Intent intent2 : intent) {
            if (!c(intent2)) {
                return false;
            }
        }
        return true;
    }

    public static ComponentName e(ComponentInfo info) {
        return new ComponentName(info.packageName, info.name);
    }
}
