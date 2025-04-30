package com.xinzhu.overmind.utils.wrappers;

import android.content.ContentProviderClient;
import android.net.Uri;
import android.os.Bundle;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.utils.e;
/* loaded from: classes.dex */
public class ContentProviderWrapper {
    private static final int RETRY_COUNT_LIMIT = 5;

    public static Bundle acquire(String authority, String method, String arg, Bundle extras) {
        Uri parse = Uri.parse("content://" + authority);
        ContentProviderClient acquireContentProviderClient = acquireContentProviderClient(parse);
        if (acquireContentProviderClient != null) {
            try {
                return acquireContentProviderClient.call(method, arg, extras);
            } finally {
            }
        } else {
            throw new RuntimeException("ContentProviderWrapper get null content provider " + parse);
        }
    }

    private static ContentProviderClient acquireContentProviderClient(Uri uri) {
        ContentProviderClient acquireContentProviderClientNoRetry;
        int i2 = 0;
        while (true) {
            acquireContentProviderClientNoRetry = acquireContentProviderClientNoRetry(uri);
            if (acquireContentProviderClientNoRetry == null && (i2 = i2 + 1) <= 5) {
                try {
                    Thread.sleep(50L);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
            }
        }
        return acquireContentProviderClientNoRetry;
    }

    private static ContentProviderClient acquireContentProviderClientNoRetry(Uri uri) {
        return Overmind.getContext().getContentResolver().acquireUnstableContentProviderClient(uri);
    }

    private static void closeOrRelease(ContentProviderClient client) {
        try {
            if (e.d()) {
                client.close();
            } else {
                client.release();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
