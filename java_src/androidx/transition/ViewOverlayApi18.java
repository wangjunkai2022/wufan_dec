package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi(18)
/* loaded from: classes2.dex */
class ViewOverlayApi18 implements ViewOverlayImpl {

    /* renamed from: a  reason: collision with root package name */
    private final ViewOverlay f7797a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewOverlayApi18(@NonNull View view) {
        this.f7797a = view.getOverlay();
    }

    @Override // androidx.transition.ViewOverlayImpl
    public void add(@NonNull Drawable drawable) {
        this.f7797a.add(drawable);
    }

    @Override // androidx.transition.ViewOverlayImpl
    public void remove(@NonNull Drawable drawable) {
        this.f7797a.remove(drawable);
    }
}
