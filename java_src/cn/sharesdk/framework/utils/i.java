package cn.sharesdk.framework.utils;

import android.content.Context;
import com.mob.tools.utils.ResHelper;
/* compiled from: SizeHelper.java */
/* loaded from: classes2.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public static float f8931a = 1.5f;

    /* renamed from: b  reason: collision with root package name */
    public static int f8932b = 540;

    /* renamed from: c  reason: collision with root package name */
    private static Context f8933c;

    public static void a(Context context) {
        Context context2 = f8933c;
        if (context2 == null || context2 != context.getApplicationContext()) {
            f8933c = context;
        }
    }

    public static int b(int i2) {
        return ResHelper.designToDevice(f8933c, f8932b, i2);
    }

    public static int a(int i2) {
        return ResHelper.designToDevice(f8933c, f8931a, i2);
    }
}
