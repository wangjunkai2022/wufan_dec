package com.facebook.imagepipeline.nativecode;

import android.os.Build;
import com.facebook.soloader.SoLoader;
/* compiled from: NativeJpegTranscoderSoLoader.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f12928a;

    public static synchronized void a() {
        synchronized (d.class) {
            if (!f12928a) {
                if (Build.VERSION.SDK_INT <= 16) {
                    try {
                        SoLoader.k("fb_jpegturbo");
                    } catch (UnsatisfiedLinkError unused) {
                    }
                }
                SoLoader.k("native-imagetranscoder");
                f12928a = true;
            }
        }
    }
}
