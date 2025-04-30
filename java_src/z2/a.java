package z2;

import android.annotation.TargetApi;
import android.view.View;
import it.sephiroth.android.library.util.b;
/* compiled from: ViewHelper14.java */
/* loaded from: classes5.dex */
public class a extends b.C0473b {
    public a(View view) {
        super(view);
    }

    @Override // it.sephiroth.android.library.util.b.C0473b, it.sephiroth.android.library.util.b.a
    @TargetApi(11)
    public boolean a() {
        return this.f70415a.isHardwareAccelerated();
    }

    @Override // it.sephiroth.android.library.util.b.C0473b, it.sephiroth.android.library.util.b.a
    @TargetApi(14)
    public void c(int i2) {
        this.f70415a.setScrollX(i2);
    }
}
