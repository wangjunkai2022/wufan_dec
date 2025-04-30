package j0;

import android.graphics.drawable.Animatable;
import javax.annotation.Nullable;
/* compiled from: ImageLoadingTimeControllerListener.java */
/* loaded from: classes.dex */
public class a extends com.facebook.drawee.controller.b {

    /* renamed from: b  reason: collision with root package name */
    private long f70674b = -1;

    /* renamed from: c  reason: collision with root package name */
    private long f70675c = -1;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f70676d;

    public a(@Nullable b bVar) {
        this.f70676d = bVar;
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void d(String str, @Nullable Object obj, @Nullable Animatable animatable) {
        long currentTimeMillis = System.currentTimeMillis();
        this.f70675c = currentTimeMillis;
        b bVar = this.f70676d;
        if (bVar != null) {
            bVar.a(currentTimeMillis - this.f70674b);
        }
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void e(String str, Object obj) {
        this.f70674b = System.currentTimeMillis();
    }
}
