package cn.sharesdk.framework.authorize;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
/* loaded from: classes2.dex */
public class ResizeLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private OnResizeListener f8809a;

    /* loaded from: classes2.dex */
    public interface OnResizeListener {
        void OnResize(int i2, int i4, int i5, int i6);
    }

    public ResizeLayout(Context context) {
        super(context);
    }

    public void a(OnResizeListener onResizeListener) {
        this.f8809a = onResizeListener;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        OnResizeListener onResizeListener = this.f8809a;
        if (onResizeListener != null) {
            onResizeListener.OnResize(i2, i4, i5, i6);
        }
    }

    public ResizeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
