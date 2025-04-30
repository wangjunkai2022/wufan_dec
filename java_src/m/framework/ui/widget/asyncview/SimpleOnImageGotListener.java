package m.framework.ui.widget.asyncview;

import android.graphics.Bitmap;
/* loaded from: classes5.dex */
public class SimpleOnImageGotListener implements OnImageGotListener {
    public static final SimpleOnImageGotListener INSTANCE = new SimpleOnImageGotListener();

    private SimpleOnImageGotListener() {
    }

    @Override // m.framework.ui.widget.asyncview.OnImageGotListener
    public Bitmap onImageGot(AsyncView asyncView, Bitmap bitmap, String str) {
        if (str == null || str.trim().length() <= 0 || !str.equals(asyncView.getUrl())) {
            return null;
        }
        return bitmap;
    }
}
