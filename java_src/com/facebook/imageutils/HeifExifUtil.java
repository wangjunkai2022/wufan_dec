package com.facebook.imageutils;

import android.media.ExifInterface;
import android.os.Build;
import androidx.annotation.RequiresApi;
import com.facebook.soloader.DoNotOptimize;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class HeifExifUtil {

    /* renamed from: a  reason: collision with root package name */
    public static final String f13360a = "HeifExifUtil";

    @DoNotOptimize
    /* loaded from: classes2.dex */
    private static class HeifExifUtilAndroidN {
        private HeifExifUtilAndroidN() {
        }

        @RequiresApi(api = 24)
        static int a(InputStream inputStream) {
            try {
                return new ExifInterface(inputStream).getAttributeInt("Orientation", 1);
            } catch (IOException e4) {
                com.facebook.common.logging.a.n(HeifExifUtil.f13360a, "Failed reading Heif Exif orientation -> ignoring", e4);
                return 0;
            }
        }
    }

    public static int a(InputStream inputStream) {
        if (Build.VERSION.SDK_INT >= 24) {
            return HeifExifUtilAndroidN.a(inputStream);
        }
        com.facebook.common.logging.a.i(f13360a, "Trying to read Heif Exif information before Android N -> ignoring");
        return 0;
    }
}
