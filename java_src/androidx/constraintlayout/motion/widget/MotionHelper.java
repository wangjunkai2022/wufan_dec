package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
/* loaded from: classes.dex */
public class MotionHelper extends ConstraintHelper implements MotionHelperInterface {

    /* renamed from: j  reason: collision with root package name */
    private boolean f2969j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f2970k;

    /* renamed from: l  reason: collision with root package name */
    private float f2971l;

    /* renamed from: m  reason: collision with root package name */
    protected View[] f2972m;

    public MotionHelper(Context context) {
        super(context);
        this.f2969j = false;
        this.f2970k = false;
    }

    @Override // androidx.constraintlayout.motion.widget.Animatable
    public float getProgress() {
        return this.f2971l;
    }

    public boolean isDecorator() {
        return false;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelperInterface
    public boolean isUseOnHide() {
        return this.f2970k;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelperInterface
    public boolean isUsedOnShow() {
        return this.f2969j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void k(AttributeSet attrs) {
        super.k(attrs);
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.MotionHelper);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.MotionHelper_onShow) {
                    this.f2969j = obtainStyledAttributes.getBoolean(index, this.f2969j);
                } else if (index == R.styleable.MotionHelper_onHide) {
                    this.f2970k = obtainStyledAttributes.getBoolean(index, this.f2970k);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelperInterface
    public void onFinishedMotionScene(MotionLayout motionLayout) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelperInterface
    public void onPostDraw(Canvas canvas) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelperInterface
    public void onPreDraw(Canvas canvas) {
    }

    public void onPreSetup(MotionLayout motionLayout, HashMap<View, MotionController> controllerMap) {
    }

    public void onTransitionChange(MotionLayout motionLayout, int startId, int endId, float progress) {
    }

    public void onTransitionCompleted(MotionLayout motionLayout, int currentId) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.TransitionListener
    public void onTransitionStarted(MotionLayout motionLayout, int startId, int endId) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.TransitionListener
    public void onTransitionTrigger(MotionLayout motionLayout, int triggerId, boolean positive, float progress) {
    }

    @Override // androidx.constraintlayout.motion.widget.Animatable
    public void setProgress(float progress) {
        this.f2971l = progress;
        int i2 = 0;
        if (this.f3365b > 0) {
            this.f2972m = j((ConstraintLayout) getParent());
            while (i2 < this.f3365b) {
                setProgress(this.f2972m[i2], progress);
                i2++;
            }
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int childCount = viewGroup.getChildCount();
        while (i2 < childCount) {
            View childAt = viewGroup.getChildAt(i2);
            if (!(childAt instanceof MotionHelper)) {
                setProgress(childAt, progress);
            }
            i2++;
        }
    }

    public void setProgress(View view, float progress) {
    }

    public MotionHelper(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f2969j = false;
        this.f2970k = false;
        k(attrs);
    }

    public MotionHelper(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f2969j = false;
        this.f2970k = false;
        k(attrs);
    }
}
