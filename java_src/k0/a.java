package k0;

import android.graphics.drawable.Animatable;
import android.view.MotionEvent;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
/* compiled from: DraweeController.java */
@ThreadSafe
/* loaded from: classes.dex */
public interface a {
    void a(@Nullable b bVar);

    void b();

    void c(String str);

    void d();

    @Nullable
    b e();

    Animatable f();

    void g(boolean z3);

    String getContentDescription();

    boolean h(a aVar);

    boolean onTouchEvent(MotionEvent motionEvent);
}
