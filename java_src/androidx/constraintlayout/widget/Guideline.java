package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes.dex */
public class Guideline extends View {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3636a;

    public Guideline(Context context) {
        super(context);
        this.f3636a = true;
        super.setVisibility(8);
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(0, 0);
    }

    public void setFilterRedundantCalls(boolean filter) {
        this.f3636a = filter;
    }

    public void setGuidelineBegin(int margin) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        if (this.f3636a && layoutParams.guideBegin == margin) {
            return;
        }
        layoutParams.guideBegin = margin;
        setLayoutParams(layoutParams);
    }

    public void setGuidelineEnd(int margin) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        if (this.f3636a && layoutParams.guideEnd == margin) {
            return;
        }
        layoutParams.guideEnd = margin;
        setLayoutParams(layoutParams);
    }

    public void setGuidelinePercent(float ratio) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        if (this.f3636a && layoutParams.guidePercent == ratio) {
            return;
        }
        layoutParams.guidePercent = ratio;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
    }

    public Guideline(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f3636a = true;
        super.setVisibility(8);
    }

    public Guideline(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3636a = true;
        super.setVisibility(8);
    }

    public Guideline(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr);
        this.f3636a = true;
        super.setVisibility(8);
    }
}
