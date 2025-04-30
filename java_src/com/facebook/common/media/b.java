package com.facebook.common.media;

import android.webkit.MimeTypeMap;
import com.facebook.common.internal.ImmutableMap;
import java.util.Map;
/* compiled from: MimeTypeMapWrapper.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final MimeTypeMap f11713a = MimeTypeMap.getSingleton();

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, String> f11714b = ImmutableMap.of("image/heif", "heif", "image/heic", "heic");

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, String> f11715c = ImmutableMap.of("heif", "image/heif", "heic", "image/heic");

    public static String a(String str) {
        String str2 = f11714b.get(str);
        return str2 != null ? str2 : f11713a.getExtensionFromMimeType(str);
    }

    public static String b(String str) {
        String str2 = f11715c.get(str);
        return str2 != null ? str2 : f11713a.getMimeTypeFromExtension(str);
    }

    public static boolean c(String str) {
        return f11715c.containsKey(str) || f11713a.hasExtension(str);
    }

    public static boolean d(String str) {
        return f11714b.containsKey(str) || f11713a.hasMimeType(str);
    }
}
