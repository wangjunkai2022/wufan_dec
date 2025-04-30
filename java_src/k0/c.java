package k0;

import android.graphics.drawable.Drawable;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: SettableDraweeHierarchy.java */
@ThreadSafe
/* loaded from: classes2.dex */
public interface c extends b {
    void a(Throwable th);

    void b(float f4, boolean z3);

    void d(Drawable drawable, float f4, boolean z3);

    void e(Drawable drawable);

    void reset();

    void setFailure(Throwable th);
}
