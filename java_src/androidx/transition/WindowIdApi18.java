package androidx.transition;

import android.view.View;
import android.view.WindowId;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi(18)
/* loaded from: classes2.dex */
class WindowIdApi18 implements WindowIdImpl {

    /* renamed from: a  reason: collision with root package name */
    private final WindowId f7840a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WindowIdApi18(@NonNull View view) {
        this.f7840a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof WindowIdApi18) && ((WindowIdApi18) obj).f7840a.equals(this.f7840a);
    }

    public int hashCode() {
        return this.f7840a.hashCode();
    }
}
