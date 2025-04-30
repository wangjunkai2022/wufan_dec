package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Camera;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Transformation;
import java.lang.reflect.Field;
/* loaded from: classes3.dex */
public class AlignLeftGallery extends android.widget.Gallery {

    /* renamed from: i  reason: collision with root package name */
    private static final String f44899i = "AlignLeftGallery";

    /* renamed from: j  reason: collision with root package name */
    private static int f44900j;

    /* renamed from: k  reason: collision with root package name */
    private static int f44901k;

    /* renamed from: a  reason: collision with root package name */
    private Camera f44902a;

    /* renamed from: b  reason: collision with root package name */
    private int f44903b;

    /* renamed from: c  reason: collision with root package name */
    private int f44904c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f44905d;

    /* renamed from: e  reason: collision with root package name */
    private int f44906e;

    /* renamed from: f  reason: collision with root package name */
    private a f44907f;

    /* renamed from: g  reason: collision with root package name */
    private float f44908g;

    /* renamed from: h  reason: collision with root package name */
    private float f44909h;

    /* loaded from: classes3.dex */
    public interface a {
        void onItemClick(int i2);
    }

    public AlignLeftGallery(Context context) {
        super(context);
        this.f44902a = new Camera();
        setStaticTransformationsEnabled(true);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842966});
        this.f44904c = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.widget.Gallery, android.view.ViewGroup
    protected boolean getChildStaticTransformation(View view, Transformation transformation) {
        transformation.clear();
        transformation.setTransformationType(2);
        this.f44902a.save();
        Matrix matrix = transformation.getMatrix();
        if (this.f44905d) {
            f44900j = getChildAt(0).getWidth();
            StringBuilder sb = new StringBuilder();
            sb.append("firstChildWidth = ");
            sb.append(f44900j);
            f44901k = getChildAt(0).getPaddingLeft();
            this.f44905d = false;
        }
        int i2 = (((f44900j / 2) + f44901k) + this.f44904c) - (this.f44903b / 2);
        this.f44906e = i2;
        this.f44902a.translate(i2, 0.0f, 0.0f);
        this.f44902a.getMatrix(matrix);
        this.f44902a.restore();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f44906e);
        sb2.append("    offsetX");
        return true;
    }

    @Override // android.widget.Gallery, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        try {
            Field declaredField = AlignLeftGallery.class.getSuperclass().getDeclaredField("mDownTouchPosition");
            declaredField.setAccessible(true);
            int i2 = declaredField.getInt(this);
            StringBuilder sb = new StringBuilder();
            sb.append("mDownTouchPosition = ");
            sb.append(i2);
            a aVar = this.f44907f;
            if (aVar == null || i2 < 0) {
                return false;
            }
            aVar.onItemClick(i2);
            return false;
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
            return false;
        } catch (IllegalArgumentException e5) {
            e5.printStackTrace();
            return false;
        } catch (NoSuchFieldException e6) {
            e6.printStackTrace();
            return false;
        } catch (SecurityException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        StringBuilder sb = new StringBuilder();
        sb.append("onSizeChanged------- w = ");
        sb.append(i2);
        sb.append(" h = ");
        sb.append(i4);
        sb.append("oldw = ");
        sb.append(i5);
        sb.append("oldh = ");
        sb.append(i6);
        if (!this.f44905d) {
            this.f44903b = i2;
            getLayoutParams().width = this.f44903b;
            this.f44905d = true;
        }
        super.onSizeChanged(i2, i4, i5, i6);
    }

    @Override // android.widget.Gallery, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        motionEvent.offsetLocation(-this.f44906e, 0.0f);
        return super.onTouchEvent(motionEvent);
    }

    public void setOnItemClickListener(a aVar) {
        this.f44907f = aVar;
    }

    public AlignLeftGallery(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f44902a = new Camera();
        a(context, attributeSet);
        setStaticTransformationsEnabled(true);
    }

    public AlignLeftGallery(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f44902a = new Camera();
        a(context, attributeSet);
        setStaticTransformationsEnabled(true);
    }
}
