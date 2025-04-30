package com.google.android.material.color;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.content.res.loader.ResourcesLoader;
import android.os.Build;
import android.view.ContextThemeWrapper;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;
import java.util.HashMap;
import java.util.Map;
/* compiled from: HarmonizedColors.java */
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static final String f14601a = "j";

    private j() {
    }

    @RequiresApi(api = 21)
    private static void a(@NonNull Map<Integer, Integer> map, @NonNull TypedArray typedArray, @Nullable TypedArray typedArray2, @ColorInt int i2) {
        if (typedArray2 == null) {
            typedArray2 = typedArray;
        }
        for (int i4 = 0; i4 < typedArray.getIndexCount(); i4++) {
            int resourceId = typedArray2.getResourceId(i4, 0);
            if (resourceId != 0 && typedArray.hasValue(i4) && e(typedArray.getType(i4))) {
                map.put(Integer.valueOf(resourceId), Integer.valueOf(m.i(typedArray.getColor(i4, 0), i2)));
            }
        }
    }

    @RequiresApi(api = 30)
    private static boolean b(Context context, Map<Integer, Integer> map) {
        ResourcesLoader a4 = c.a(context, map);
        if (a4 != null) {
            context.getResources().addLoaders(a4);
            return true;
        }
        return false;
    }

    @NonNull
    public static void c(@NonNull Context context, @NonNull k kVar) {
        if (f()) {
            Map<Integer, Integer> d4 = d(context, kVar);
            int e4 = kVar.e(0);
            if (!b(context, d4) || e4 == 0) {
                return;
            }
            o.a(context, e4);
        }
    }

    @RequiresApi(api = 21)
    private static Map<Integer, Integer> d(Context context, k kVar) {
        int[] d4;
        HashMap hashMap = new HashMap();
        int c4 = m.c(context, kVar.b(), f14601a);
        for (int i2 : kVar.d()) {
            hashMap.put(Integer.valueOf(i2), Integer.valueOf(m.i(ContextCompat.getColor(context, i2), c4)));
        }
        i c5 = kVar.c();
        if (c5 != null) {
            int[] d5 = c5.d();
            if (d5.length > 0) {
                int e4 = c5.e();
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(d5);
                TypedArray obtainStyledAttributes2 = e4 != 0 ? new ContextThemeWrapper(context, e4).obtainStyledAttributes(d5) : null;
                a(hashMap, obtainStyledAttributes, obtainStyledAttributes2, c4);
                obtainStyledAttributes.recycle();
                if (obtainStyledAttributes2 != null) {
                    obtainStyledAttributes2.recycle();
                }
            }
        }
        return hashMap;
    }

    private static boolean e(int i2) {
        return 28 <= i2 && i2 <= 31;
    }

    @ChecksSdkIntAtLeast(api = 30)
    public static boolean f() {
        return Build.VERSION.SDK_INT >= 30;
    }

    @NonNull
    public static Context g(@NonNull Context context, @NonNull k kVar) {
        if (f()) {
            Map<Integer, Integer> d4 = d(context, kVar);
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, kVar.e(R.style.ThemeOverlay_Material3_HarmonizedColors_Empty));
            contextThemeWrapper.applyOverrideConfiguration(new Configuration());
            return b(contextThemeWrapper, d4) ? contextThemeWrapper : context;
        }
        return context;
    }
}
