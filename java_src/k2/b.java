package k2;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
/* compiled from: ProtoUtils.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final String f70691a = "1OoQD6f6G6KQ6xSW70qKhkI1CncmjOVT";

    public static String a(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            int i2 = packageInfo.versionCode;
            String str = packageInfo.versionName;
            return i2 + "_" + str;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return "1_1.0";
        }
    }
}
