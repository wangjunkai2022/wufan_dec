package androidx.core.os;

import android.os.Build;
import android.os.Environment;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
/* loaded from: classes.dex */
public final class EnvironmentCompat {
    public static final String MEDIA_UNKNOWN = "unknown";

    /* renamed from: a  reason: collision with root package name */
    private static final String f4490a = "EnvironmentCompat";

    private EnvironmentCompat() {
    }

    @NonNull
    public static String getStorageState(@NonNull File file) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            return Environment.getExternalStorageState(file);
        }
        if (i2 >= 19) {
            return Environment.getStorageState(file);
        }
        try {
            return file.getCanonicalPath().startsWith(Environment.getExternalStorageDirectory().getCanonicalPath()) ? Environment.getExternalStorageState() : "unknown";
        } catch (IOException e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("Failed to resolve canonical path: ");
            sb.append(e4);
            return "unknown";
        }
    }
}
