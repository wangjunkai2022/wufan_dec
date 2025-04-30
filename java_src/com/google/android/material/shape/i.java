package com.google.android.material.shape;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.internal.w;
/* compiled from: MaterialShapeUtils.java */
/* loaded from: classes2.dex */
public class i {
    private i() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static d a(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return b();
            }
            return new e();
        }
        return new l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static d b() {
        return new l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static f c() {
        return new f();
    }

    public static void d(@NonNull View view, float f4) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) background).n0(f4);
        }
    }

    public static void e(@NonNull View view) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            f(view, (MaterialShapeDrawable) background);
        }
    }

    public static void f(@NonNull View view, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        if (materialShapeDrawable.b0()) {
            materialShapeDrawable.s0(w.j(view));
        }
    }
}
