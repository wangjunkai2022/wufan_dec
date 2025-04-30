package com.facebook.common.media;

import com.facebook.common.internal.ImmutableMap;
import java.util.Locale;
import java.util.Map;
import javax.annotation.Nullable;
/* compiled from: MediaUtils.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, String> f11712a = ImmutableMap.of("mkv", "video/x-matroska", "glb", "model/gltf-binary");

    @Nullable
    private static String a(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf < 0 || lastIndexOf == str.length() - 1) {
            return null;
        }
        return str.substring(lastIndexOf + 1);
    }

    @Nullable
    public static String b(String str) {
        String a4 = a(str);
        if (a4 == null) {
            return null;
        }
        String lowerCase = a4.toLowerCase(Locale.US);
        String b4 = b.b(lowerCase);
        return b4 == null ? f11712a.get(lowerCase) : b4;
    }

    public static boolean c(String str) {
        return f11712a.containsValue(str);
    }

    public static boolean d(@Nullable String str) {
        return str != null && str.startsWith("image/");
    }

    public static boolean e(@Nullable String str) {
        return str != null && str.equals("model/gltf-binary");
    }

    public static boolean f(@Nullable String str) {
        return str != null && str.startsWith("video/");
    }
}
