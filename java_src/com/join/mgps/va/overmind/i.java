package com.join.mgps.va.overmind;

import android.content.ContentProviderClient;
import android.net.Uri;
import android.os.Bundle;
import com.xinzhu.overmind.Overmind;
/* compiled from: WfContentProviderWrapper.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static final int f52371a = 5;

    public static Bundle a(String str, String str2, String str3, Bundle bundle) {
        Uri parse = Uri.parse("content://" + str);
        ContentProviderClient b4 = b(parse);
        if (b4 != null) {
            try {
                return b4.call(str2, str3, bundle);
            } finally {
            }
        } else {
            throw new RuntimeException("ContentProviderWrapper get null content provider " + parse);
        }
    }

    private static ContentProviderClient b(Uri uri) {
        ContentProviderClient c4;
        int i2 = 0;
        while (true) {
            c4 = c(uri);
            if (c4 == null && (i2 = i2 + 1) <= 5) {
                try {
                    Thread.sleep(50L);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
            }
        }
        return c4;
    }

    private static ContentProviderClient c(Uri uri) {
        return Overmind.getContext().getContentResolver().acquireUnstableContentProviderClient(uri);
    }

    private static void d(ContentProviderClient contentProviderClient) {
        try {
            if (com.xinzhu.overmind.utils.e.d()) {
                contentProviderClient.close();
            } else {
                contentProviderClient.release();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
