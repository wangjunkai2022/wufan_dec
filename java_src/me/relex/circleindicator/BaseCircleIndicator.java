package me.relex.circleindicator;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
/* loaded from: classes5.dex */
class BaseCircleIndicator extends LinearLayout {

    /* renamed from: l  reason: collision with root package name */
    private static final int f72591l = 5;

    /* renamed from: a  reason: collision with root package name */
    protected int f72592a;

    /* renamed from: b  reason: collision with root package name */
    protected int f72593b;

    /* renamed from: c  reason: collision with root package name */
    protected int f72594c;

    /* renamed from: d  reason: collision with root package name */
    protected int f72595d;

    /* renamed from: e  reason: collision with root package name */
    protected int f72596e;

    /* renamed from: f  reason: collision with root package name */
    protected Animator f72597f;

    /* renamed from: g  reason: collision with root package name */
    protected Animator f72598g;

    /* renamed from: h  reason: collision with root package name */
    protected Animator f72599h;

    /* renamed from: i  reason: collision with root package name */
    protected Animator f72600i;

    /* renamed from: j  reason: collision with root package name */
    protected int f72601j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private a f72602k;

    /* loaded from: classes5.dex */
    public interface a {
        void a(View view, int i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public class b implements Interpolator {
        protected b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f4) {
            return Math.abs(1.0f - f4);
        }
    }

    public BaseCircleIndicator(Context context) {
        super(context);
        this.f72592a = -1;
        this.f72593b = -1;
        this.f72594c = -1;
        this.f72601j = -1;
        g(context, null);
    }

    private me.relex.circleindicator.b f(Context context, AttributeSet attributeSet) {
        me.relex.circleindicator.b bVar = new me.relex.circleindicator.b();
        if (attributeSet == null) {
            return bVar;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BaseCircleIndicator);
        bVar.f72621a = obtainStyledAttributes.getDimensionPixelSize(R.styleable.BaseCircleIndicator_ci_width, -1);
        bVar.f72622b = obtainStyledAttributes.getDimensionPixelSize(R.styleable.BaseCircleIndicator_ci_height, -1);
        bVar.f72623c = obtainStyledAttributes.getDimensionPixelSize(R.styleable.BaseCircleIndicator_ci_margin, -1);
        bVar.f72624d = obtainStyledAttributes.getResourceId(R.styleable.BaseCircleIndicator_ci_animator, R.animator.scale_with_alpha);
        bVar.f72625e = obtainStyledAttributes.getResourceId(R.styleable.BaseCircleIndicator_ci_animator_reverse, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.BaseCircleIndicator_ci_drawable, R.drawable.white_radius);
        bVar.f72626f = resourceId;
        bVar.f72627g = obtainStyledAttributes.getResourceId(R.styleable.BaseCircleIndicator_ci_drawable_unselected, resourceId);
        bVar.f72628h = obtainStyledAttributes.getInt(R.styleable.BaseCircleIndicator_ci_orientation, -1);
        bVar.f72629i = obtainStyledAttributes.getInt(R.styleable.BaseCircleIndicator_ci_gravity, -1);
        obtainStyledAttributes.recycle();
        return bVar;
    }

    private void g(Context context, AttributeSet attributeSet) {
        h(f(context, attributeSet));
    }

    protected void a(int i2) {
        View view = new View(getContext());
        LinearLayout.LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.width = this.f72593b;
        generateDefaultLayoutParams.height = this.f72594c;
        if (i2 == 0) {
            int i4 = this.f72592a;
            generateDefaultLayoutParams.leftMargin = i4;
            generateDefaultLayoutParams.rightMargin = i4;
        } else {
            int i5 = this.f72592a;
            generateDefaultLayoutParams.topMargin = i5;
            generateDefaultLayoutParams.bottomMargin = i5;
        }
        addView(view, generateDefaultLayoutParams);
    }

    public void b(int i2) {
        View childAt;
        if (this.f72601j == i2) {
            return;
        }
        if (this.f72598g.isRunning()) {
            this.f72598g.end();
            this.f72598g.cancel();
        }
        if (this.f72597f.isRunning()) {
            this.f72597f.end();
            this.f72597f.cancel();
        }
        int i4 = this.f72601j;
        if (i4 >= 0 && (childAt = getChildAt(i4)) != null) {
            childAt.setBackgroundResource(this.f72596e);
            this.f72598g.setTarget(childAt);
            this.f72598g.start();
        }
        View childAt2 = getChildAt(i2);
        if (childAt2 != null) {
            childAt2.setBackgroundResource(this.f72595d);
            this.f72597f.setTarget(childAt2);
            this.f72597f.start();
        }
        this.f72601j = i2;
    }

    protected Animator c(me.relex.circleindicator.b bVar) {
        if (bVar.f72625e == 0) {
            Animator loadAnimator = AnimatorInflater.loadAnimator(getContext(), bVar.f72624d);
            loadAnimator.setInterpolator(new b());
            return loadAnimator;
        }
        return AnimatorInflater.loadAnimator(getContext(), bVar.f72625e);
    }

    protected Animator d(me.relex.circleindicator.b bVar) {
        return AnimatorInflater.loadAnimator(getContext(), bVar.f72624d);
    }

    public void e(int i2, int i4) {
        if (this.f72599h.isRunning()) {
            this.f72599h.end();
            this.f72599h.cancel();
        }
        if (this.f72600i.isRunning()) {
            this.f72600i.end();
            this.f72600i.cancel();
        }
        int childCount = getChildCount();
        if (i2 < childCount) {
            removeViews(i2, childCount - i2);
        } else if (i2 > childCount) {
            int i5 = i2 - childCount;
            int orientation = getOrientation();
            for (int i6 = 0; i6 < i5; i6++) {
                a(orientation);
            }
        }
        for (int i7 = 0; i7 < i2; i7++) {
            View childAt = getChildAt(i7);
            if (i4 == i7) {
                childAt.setBackgroundResource(this.f72595d);
                this.f72599h.setTarget(childAt);
                this.f72599h.start();
                this.f72599h.end();
            } else {
                childAt.setBackgroundResource(this.f72596e);
                this.f72600i.setTarget(childAt);
                this.f72600i.start();
                this.f72600i.end();
            }
            a aVar = this.f72602k;
            if (aVar != null) {
                aVar.a(childAt, i7);
            }
        }
        this.f72601j = i4;
    }

    public void h(me.relex.circleindicator.b bVar) {
        int applyDimension = (int) (TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics()) + 0.5f);
        int i2 = bVar.f72621a;
        if (i2 < 0) {
            i2 = applyDimension;
        }
        this.f72593b = i2;
        int i4 = bVar.f72622b;
        if (i4 < 0) {
            i4 = applyDimension;
        }
        this.f72594c = i4;
        int i5 = bVar.f72623c;
        if (i5 >= 0) {
            applyDimension = i5;
        }
        this.f72592a = applyDimension;
        this.f72597f = d(bVar);
        Animator d4 = d(bVar);
        this.f72599h = d4;
        d4.setDuration(0L);
        this.f72598g = c(bVar);
        Animator c4 = c(bVar);
        this.f72600i = c4;
        c4.setDuration(0L);
        int i6 = bVar.f72626f;
        this.f72595d = i6 == 0 ? R.drawable.white_radius : i6;
        int i7 = bVar.f72627g;
        if (i7 != 0) {
            i6 = i7;
        }
        this.f72596e = i6;
        setOrientation(bVar.f72628h != 1 ? 0 : 1);
        int i8 = bVar.f72629i;
        if (i8 < 0) {
            i8 = 17;
        }
        setGravity(i8);
    }

    public void setIndicatorCreatedListener(@Nullable a aVar) {
        this.f72602k = aVar;
    }

    public BaseCircleIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f72592a = -1;
        this.f72593b = -1;
        this.f72594c = -1;
        this.f72601j = -1;
        g(context, attributeSet);
    }

    public BaseCircleIndicator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f72592a = -1;
        this.f72593b = -1;
        this.f72594c = -1;
        this.f72601j = -1;
        g(context, attributeSet);
    }

    @TargetApi(21)
    public BaseCircleIndicator(Context context, AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        this.f72592a = -1;
        this.f72593b = -1;
        this.f72594c = -1;
        this.f72601j = -1;
        g(context, attributeSet);
    }
}
