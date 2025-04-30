package androidx.core.os;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Message;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public final class MessageCompat {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f4502a = true;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f4503b = true;

    private MessageCompat() {
    }

    @SuppressLint({"NewApi"})
    public static boolean isAsynchronous(@NonNull Message message) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 22) {
            return message.isAsynchronous();
        }
        if (f4503b && i2 >= 16) {
            try {
                return message.isAsynchronous();
            } catch (NoSuchMethodError unused) {
                f4503b = false;
            }
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    public static void setAsynchronous(@NonNull Message message, boolean z3) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 22) {
            message.setAsynchronous(z3);
        } else if (!f4502a || i2 < 16) {
        } else {
            try {
                message.setAsynchronous(z3);
            } catch (NoSuchMethodError unused) {
                f4502a = false;
            }
        }
    }
}
