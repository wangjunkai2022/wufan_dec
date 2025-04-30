package ru.noties.scrollable;

import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
/* compiled from: ViewUtils.java */
/* loaded from: classes5.dex */
class p {
    private p() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            if (Build.VERSION.SDK_INT >= 16) {
                viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            } else {
                viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
            }
        }
    }
}
