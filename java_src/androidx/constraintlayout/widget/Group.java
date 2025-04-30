package androidx.constraintlayout.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes.dex */
public class Group extends ConstraintHelper {
    public Group(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void f(ConstraintLayout container) {
        e(container);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void k(AttributeSet attrs) {
        super.k(attrs);
        this.f3368e = false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        d();
    }

    @Override // android.view.View
    public void setElevation(float elevation) {
        super.setElevation(elevation);
        d();
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        d();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void updatePostLayout(ConstraintLayout container) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.f3421v.setWidth(0);
        layoutParams.f3421v.setHeight(0);
    }

    public Group(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public Group(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
