package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
class TintResources extends ResourcesWrapper {

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<Context> f1468b;

    public TintResources(@NonNull Context context, @NonNull Resources resources) {
        super(resources);
        this.f1468b = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public Drawable getDrawable(int i2) throws Resources.NotFoundException {
        Drawable a4 = a(i2);
        Context context = this.f1468b.get();
        if (a4 != null && context != null) {
            ResourceManagerInternal.get().s(context, i2, a4);
        }
        return a4;
    }
}
