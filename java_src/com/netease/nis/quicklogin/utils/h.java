package com.netease.nis.quicklogin.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import com.netease.nis.basesdk.Logger;
/* compiled from: ViewIdHelper.java */
/* loaded from: classes4.dex */
public class h {

    /* renamed from: c  reason: collision with root package name */
    private static volatile h f54339c;

    /* renamed from: a  reason: collision with root package name */
    private Context f54340a;

    /* renamed from: b  reason: collision with root package name */
    private Resources f54341b;

    private h(Context context) {
        this.f54340a = null;
        if (context != null) {
            this.f54340a = context.getApplicationContext();
        }
        if (context != null) {
            this.f54341b = context.getResources();
        }
        LayoutInflater.from(context);
    }

    public static h a(Context context) {
        if (f54339c == null) {
            try {
                f54339c = new h(context);
            } catch (Exception e4) {
                Logger.e(e4.getMessage());
            }
        }
        return f54339c;
    }

    public Drawable b(String str) {
        int identifier;
        Resources resources = this.f54341b;
        if (resources == null || str == null || (identifier = resources.getIdentifier(str, "drawable", this.f54340a.getPackageName())) == 0) {
            return null;
        }
        return this.f54341b.getDrawable(identifier);
    }

    public int c(String str) {
        Resources resources = this.f54341b;
        if (resources == null || str == null) {
            return 0;
        }
        return resources.getIdentifier(str, "drawable", this.f54340a.getPackageName());
    }

    public int d(String str) {
        Resources resources = this.f54341b;
        if (resources != null) {
            return resources.getIdentifier(str, "layout", this.f54340a.getPackageName());
        }
        return 0;
    }

    public int a(String str) {
        Resources resources = this.f54341b;
        if (resources == null || str == null) {
            return 0;
        }
        return resources.getIdentifier(str, "anim", this.f54340a.getPackageName());
    }
}
