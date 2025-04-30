package com.flipboard.bottomsheet.custom;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Outline;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewOutlineProvider;
/* compiled from: Util.java */
/* loaded from: classes2.dex */
class a {

    /* compiled from: Util.java */
    @TargetApi(21)
    /* renamed from: com.flipboard.bottomsheet.custom.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static class C0096a extends ViewOutlineProvider {

        /* renamed from: a  reason: collision with root package name */
        int f13750a;

        /* renamed from: b  reason: collision with root package name */
        int f13751b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0096a(int i2, int i4) {
            this.f13750a = i2;
            this.f13751b = i4;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRect(0, 0, this.f13750a, this.f13751b);
        }
    }

    private a() {
        throw new AssertionError("No Instances");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Context context, float f4) {
        return Math.round(TypedValue.applyDimension(1, f4, context.getResources().getDisplayMetrics()));
    }
}
