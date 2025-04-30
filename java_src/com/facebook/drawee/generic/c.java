package com.facebook.drawee.generic;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.facebook.drawee.drawable.r;
import com.facebook.infer.annotation.ReturnsOwnership;
import javax.annotation.Nullable;
/* compiled from: GenericDraweeHierarchyInflater.java */
/* loaded from: classes.dex */
public class c {
    @Nullable
    private static Drawable a(Context context, TypedArray typedArray, int i2) {
        int resourceId = typedArray.getResourceId(i2, 0);
        if (resourceId == 0) {
            return null;
        }
        return context.getResources().getDrawable(resourceId);
    }

    @ReturnsOwnership
    private static RoundingParams b(b bVar) {
        if (bVar.r() == null) {
            bVar.Y(new RoundingParams());
        }
        return bVar.r();
    }

    @Nullable
    private static r.c c(TypedArray typedArray, int i2) {
        switch (typedArray.getInt(i2, -2)) {
            case -1:
                return null;
            case 0:
                return r.c.f12138a;
            case 1:
                return r.c.f12139b;
            case 2:
                return r.c.f12140c;
            case 3:
                return r.c.f12141d;
            case 4:
                return r.c.f12142e;
            case 5:
                return r.c.f12143f;
            case 6:
                return r.c.f12144g;
            case 7:
                return r.c.f12145h;
            case 8:
                return r.c.f12146i;
            default:
                throw new RuntimeException("XML attribute not specified!");
        }
    }

    public static b d(Context context, @Nullable AttributeSet attributeSet) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("GenericDraweeHierarchyBuilder#inflateBuilder");
        }
        b f4 = f(new b(context.getResources()), context, attributeSet);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return f4;
    }

    public static a e(Context context, @Nullable AttributeSet attributeSet) {
        return d(context, attributeSet).a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x01cb, code lost:
        if (r14 != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x01e5, code lost:
        if (r5 != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x01e7, code lost:
        r4 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.drawee.generic.b f(com.facebook.drawee.generic.b r18, android.content.Context r19, @javax.annotation.Nullable android.util.AttributeSet r20) {
        /*
            Method dump skipped, instructions count: 585
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.drawee.generic.c.f(com.facebook.drawee.generic.b, android.content.Context, android.util.AttributeSet):com.facebook.drawee.generic.b");
    }
}
