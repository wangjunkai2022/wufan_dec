package com.xinzhu.overmind.client.hook.provider;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.utils.e;
import java.io.File;
/* compiled from: FileProviderHandler.java */
/* loaded from: classes.dex */
public class a {
    public static Uri a(Context context, Uri uri) {
        if (e.d()) {
            for (ProviderInfo providerInfo : com.xinzhu.overmind.client.e.getProviders()) {
                try {
                    File d4 = FileProvider.d(context, providerInfo.authority, uri);
                    if (d4 != null && d4.exists()) {
                        return Overmind.getMindStorageManager().c(d4.getAbsolutePath());
                    }
                } catch (Exception unused) {
                }
            }
        }
        return uri;
    }
}
