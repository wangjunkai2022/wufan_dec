package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.core.widget.PopupWindowCompat;
/* loaded from: classes.dex */
class AppCompatPopupWindow extends PopupWindow {

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f1017b;

    /* renamed from: a  reason: collision with root package name */
    private boolean f1018a;

    static {
        f1017b = Build.VERSION.SDK_INT < 21;
    }

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet, i2, 0);
    }

    private void a(Context context, AttributeSet attributeSet, int i2, int i4) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.PopupWindow, i2, i4);
        int i5 = R.styleable.PopupWindow_overlapAnchor;
        if (obtainStyledAttributes.hasValue(i5)) {
            b(obtainStyledAttributes.getBoolean(i5, false));
        }
        setBackgroundDrawable(obtainStyledAttributes.getDrawable(R.styleable.PopupWindow_android_popupBackground));
        obtainStyledAttributes.recycle();
    }

    private void b(boolean z3) {
        if (f1017b) {
            this.f1018a = z3;
        } else {
            PopupWindowCompat.setOverlapAnchor(this, z3);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i2, int i4) {
        if (f1017b && this.f1018a) {
            i4 -= view.getHeight();
        }
        super.showAsDropDown(view, i2, i4);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i2, int i4, int i5, int i6) {
        if (f1017b && this.f1018a) {
            i4 -= view.getHeight();
        }
        super.update(view, i2, i4, i5, i6);
    }

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i4) {
        super(context, attributeSet, i2, i4);
        a(context, attributeSet, i2, i4);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i2, int i4, int i5) {
        if (f1017b && this.f1018a) {
            i4 -= view.getHeight();
        }
        super.showAsDropDown(view, i2, i4, i5);
    }
}
