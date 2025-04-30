package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi(18)
/* loaded from: classes2.dex */
class ViewGroupOverlayApi18 implements ViewGroupOverlayImpl {

    /* renamed from: a  reason: collision with root package name */
    private final ViewGroupOverlay f7779a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewGroupOverlayApi18(@NonNull ViewGroup viewGroup) {
        this.f7779a = viewGroup.getOverlay();
    }

    @Override // androidx.transition.ViewOverlayImpl
    public void add(@NonNull Drawable drawable) {
        this.f7779a.add(drawable);
    }

    @Override // androidx.transition.ViewOverlayImpl
    public void remove(@NonNull Drawable drawable) {
        this.f7779a.remove(drawable);
    }

    @Override // androidx.transition.ViewGroupOverlayImpl
    public void add(@NonNull View view) {
        this.f7779a.add(view);
    }

    @Override // androidx.transition.ViewGroupOverlayImpl
    public void remove(@NonNull View view) {
        this.f7779a.remove(view);
    }
}
