package a3;

import android.annotation.TargetApi;
import android.view.View;
/* compiled from: ViewHelper16.java */
/* loaded from: classes5.dex */
public class a extends z2.a {
    public a(View view) {
        super(view);
    }

    @Override // it.sephiroth.android.library.util.b.C0473b, it.sephiroth.android.library.util.b.a
    @TargetApi(16)
    public void b(Runnable runnable) {
        this.f70415a.postOnAnimation(runnable);
    }
}
