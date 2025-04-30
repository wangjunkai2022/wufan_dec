package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.SharedValues;
/* loaded from: classes.dex */
public class ReactiveGuide extends View implements SharedValues.SharedValuesListener {

    /* renamed from: a  reason: collision with root package name */
    private int f3640a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3641b;

    /* renamed from: c  reason: collision with root package name */
    private int f3642c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3643d;

    public ReactiveGuide(Context context) {
        super(context);
        this.f3640a = -1;
        this.f3641b = false;
        this.f3642c = 0;
        this.f3643d = true;
        super.setVisibility(8);
        b(null);
    }

    private void a(int newValue, int id, MotionLayout motionLayout, int currentState) {
        ConstraintSet constraintSet = motionLayout.getConstraintSet(currentState);
        constraintSet.setGuidelineEnd(id, newValue);
        motionLayout.updateState(currentState, constraintSet);
    }

    private void b(AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_ReactiveGuide);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_valueId) {
                    this.f3640a = obtainStyledAttributes.getResourceId(index, this.f3640a);
                } else if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_animateChange) {
                    this.f3641b = obtainStyledAttributes.getBoolean(index, this.f3641b);
                } else if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_applyToConstraintSet) {
                    this.f3642c = obtainStyledAttributes.getResourceId(index, this.f3642c);
                } else if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_applyToAllConstraintSets) {
                    this.f3643d = obtainStyledAttributes.getBoolean(index, this.f3643d);
                }
            }
            obtainStyledAttributes.recycle();
        }
        if (this.f3640a != -1) {
            ConstraintLayout.getSharedValues().addListener(this.f3640a, this);
        }
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public int getApplyToConstraintSetId() {
        return this.f3642c;
    }

    public int getAttributeId() {
        return this.f3640a;
    }

    public boolean isAnimatingChange() {
        return this.f3641b;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(0, 0);
    }

    @Override // androidx.constraintlayout.widget.SharedValues.SharedValuesListener
    public void onNewValue(int key, int newValue, int oldValue) {
        setGuidelineBegin(newValue);
        int id = getId();
        if (id > 0 && (getParent() instanceof MotionLayout)) {
            MotionLayout motionLayout = (MotionLayout) getParent();
            int currentState = motionLayout.getCurrentState();
            int i2 = this.f3642c;
            if (i2 != 0) {
                currentState = i2;
            }
            int i4 = 0;
            if (this.f3641b) {
                if (this.f3643d) {
                    int[] constraintSetIds = motionLayout.getConstraintSetIds();
                    while (i4 < constraintSetIds.length) {
                        int i5 = constraintSetIds[i4];
                        if (i5 != currentState) {
                            a(newValue, id, motionLayout, i5);
                        }
                        i4++;
                    }
                }
                ConstraintSet cloneConstraintSet = motionLayout.cloneConstraintSet(currentState);
                cloneConstraintSet.setGuidelineEnd(id, newValue);
                motionLayout.updateStateAnimate(currentState, cloneConstraintSet, 1000);
            } else if (this.f3643d) {
                int[] constraintSetIds2 = motionLayout.getConstraintSetIds();
                while (i4 < constraintSetIds2.length) {
                    a(newValue, id, motionLayout, constraintSetIds2[i4]);
                    i4++;
                }
            } else {
                a(newValue, id, motionLayout, currentState);
            }
        }
    }

    public void setAnimateChange(boolean animate) {
        this.f3641b = animate;
    }

    public void setApplyToConstraintSetId(int id) {
        this.f3642c = id;
    }

    public void setAttributeId(int id) {
        SharedValues sharedValues = ConstraintLayout.getSharedValues();
        int i2 = this.f3640a;
        if (i2 != -1) {
            sharedValues.removeListener(i2, this);
        }
        this.f3640a = id;
        if (id != -1) {
            sharedValues.addListener(id, this);
        }
    }

    public void setGuidelineBegin(int margin) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guideBegin = margin;
        setLayoutParams(layoutParams);
    }

    public void setGuidelineEnd(int margin) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guideEnd = margin;
        setLayoutParams(layoutParams);
    }

    public void setGuidelinePercent(float ratio) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guidePercent = ratio;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
    }

    public ReactiveGuide(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f3640a = -1;
        this.f3641b = false;
        this.f3642c = 0;
        this.f3643d = true;
        super.setVisibility(8);
        b(attrs);
    }

    public ReactiveGuide(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3640a = -1;
        this.f3641b = false;
        this.f3642c = 0;
        this.f3643d = true;
        super.setVisibility(8);
        b(attrs);
    }

    public ReactiveGuide(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr);
        this.f3640a = -1;
        this.f3641b = false;
        this.f3642c = 0;
        this.f3643d = true;
        super.setVisibility(8);
        b(attrs);
    }
}
