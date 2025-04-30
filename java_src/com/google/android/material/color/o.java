package com.google.android.material.color;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
/* compiled from: ThemeUtils.java */
/* loaded from: classes2.dex */
final class o {
    private o() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull Context context, @StyleRes int i2) {
        Resources.Theme b4;
        context.getTheme().applyStyle(i2, true);
        if (!(context instanceof Activity) || (b4 = b((Activity) context)) == null) {
            return;
        }
        b4.applyStyle(i2, true);
    }

    @Nullable
    private static Resources.Theme b(@NonNull Activity activity) {
        View peekDecorView;
        Context context;
        Window window = activity.getWindow();
        if (window == null || (peekDecorView = window.peekDecorView()) == null || (context = peekDecorView.getContext()) == null) {
            return null;
        }
        return context.getTheme();
    }
}
