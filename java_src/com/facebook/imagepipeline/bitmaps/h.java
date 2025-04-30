package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
/* compiled from: SimpleBitmapReleaser.java */
/* loaded from: classes2.dex */
public class h implements com.facebook.common.references.c<Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private static h f12459a;

    private h() {
    }

    public static h a() {
        if (f12459a == null) {
            f12459a = new h();
        }
        return f12459a;
    }

    @Override // com.facebook.common.references.c
    /* renamed from: b */
    public void release(Bitmap bitmap) {
        bitmap.recycle();
    }
}
