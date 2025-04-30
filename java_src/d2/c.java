package d2;

import android.view.Surface;
/* compiled from: IGSYSurfaceListener.java */
/* loaded from: classes4.dex */
public interface c {
    void onSurfaceAvailable(Surface surface);

    boolean onSurfaceDestroyed(Surface surface);

    void onSurfaceSizeChanged(Surface surface, int i2, int i4);

    void onSurfaceUpdated(Surface surface);
}
