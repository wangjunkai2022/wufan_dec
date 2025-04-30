package com.ss.android.socialbase.appdownloader.b;

import android.os.Build;
import android.text.TextUtils;
import net.lingala.zip4j.util.e;
/* compiled from: Constants.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f57572a;

    static {
        StringBuilder sb = new StringBuilder();
        String str = Build.VERSION.RELEASE;
        boolean z3 = true;
        boolean z4 = !TextUtils.isEmpty(str);
        boolean z5 = !TextUtils.isEmpty(Build.ID);
        z3 = (!"REL".equals(Build.VERSION.CODENAME) || TextUtils.isEmpty(Build.MODEL)) ? false : false;
        sb.append("AppDownloader");
        if (z4) {
            sb.append(e.F0);
            sb.append(str);
        }
        sb.append(" (Linux; U; Android");
        if (z4) {
            sb.append(" ");
            sb.append(str);
        }
        if (z3 || z5) {
            sb.append(";");
            if (z3) {
                sb.append(" ");
                sb.append(Build.MODEL);
            }
            if (z5) {
                sb.append(" Build/");
                sb.append(Build.ID);
            }
        }
        sb.append(")");
        f57572a = sb.toString();
    }
}
