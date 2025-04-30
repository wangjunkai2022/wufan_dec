package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.VirtualLayout;
import java.util.Arrays;
/* loaded from: classes.dex */
public class CircularFlow extends VirtualLayout {

    /* renamed from: v  reason: collision with root package name */
    private static final String f2644v = "CircularFlow";

    /* renamed from: w  reason: collision with root package name */
    private static int f2645w;

    /* renamed from: x  reason: collision with root package name */
    private static float f2646x;

    /* renamed from: l  reason: collision with root package name */
    ConstraintLayout f2647l;

    /* renamed from: m  reason: collision with root package name */
    int f2648m;

    /* renamed from: n  reason: collision with root package name */
    private float[] f2649n;

    /* renamed from: o  reason: collision with root package name */
    private int[] f2650o;

    /* renamed from: p  reason: collision with root package name */
    private int f2651p;

    /* renamed from: q  reason: collision with root package name */
    private int f2652q;

    /* renamed from: r  reason: collision with root package name */
    private String f2653r;

    /* renamed from: s  reason: collision with root package name */
    private String f2654s;

    /* renamed from: t  reason: collision with root package name */
    private Float f2655t;

    /* renamed from: u  reason: collision with root package name */
    private Integer f2656u;

    public CircularFlow(Context context) {
        super(context);
    }

    private void l(String angleString) {
        float[] fArr;
        if (angleString == null || angleString.length() == 0 || this.f3366c == null || (fArr = this.f2649n) == null) {
            return;
        }
        if (this.f2652q + 1 > fArr.length) {
            this.f2649n = Arrays.copyOf(fArr, fArr.length + 1);
        }
        this.f2649n[this.f2652q] = Integer.parseInt(angleString);
        this.f2652q++;
    }

    private void m(String radiusString) {
        int[] iArr;
        if (radiusString == null || radiusString.length() == 0 || this.f3366c == null || (iArr = this.f2650o) == null) {
            return;
        }
        if (this.f2651p + 1 > iArr.length) {
            this.f2650o = Arrays.copyOf(iArr, iArr.length + 1);
        }
        this.f2650o[this.f2651p] = (int) (Integer.parseInt(radiusString) * this.f3366c.getResources().getDisplayMetrics().density);
        this.f2651p++;
    }

    private void n() {
        this.f2647l = (ConstraintLayout) getParent();
        for (int i2 = 0; i2 < this.f3365b; i2++) {
            View viewById = this.f2647l.getViewById(this.f3364a[i2]);
            if (viewById != null) {
                int i4 = f2645w;
                float f4 = f2646x;
                int[] iArr = this.f2650o;
                if (iArr != null && i2 < iArr.length) {
                    i4 = iArr[i2];
                } else {
                    Integer num = this.f2656u;
                    if (num != null && num.intValue() != -1) {
                        this.f2651p++;
                        if (this.f2650o == null) {
                            this.f2650o = new int[1];
                        }
                        int[] radius = getRadius();
                        this.f2650o = radius;
                        radius[this.f2651p - 1] = i4;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Added radius to view with id: ");
                        sb.append(this.f3372i.get(Integer.valueOf(viewById.getId())));
                    }
                }
                float[] fArr = this.f2649n;
                if (fArr != null && i2 < fArr.length) {
                    f4 = fArr[i2];
                } else {
                    Float f5 = this.f2655t;
                    if (f5 != null && f5.floatValue() != -1.0f) {
                        this.f2652q++;
                        if (this.f2649n == null) {
                            this.f2649n = new float[1];
                        }
                        float[] angles = getAngles();
                        this.f2649n = angles;
                        angles[this.f2652q - 1] = f4;
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Added angle to view with id: ");
                        sb2.append(this.f3372i.get(Integer.valueOf(viewById.getId())));
                    }
                }
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) viewById.getLayoutParams();
                layoutParams.circleAngle = f4;
                layoutParams.circleConstraint = this.f2648m;
                layoutParams.circleRadius = i4;
                viewById.setLayoutParams(layoutParams);
            }
        }
        d();
    }

    private float[] o(float[] angles, int index) {
        return (angles == null || index < 0 || index >= this.f2652q) ? angles : removeElementFromArray(angles, index);
    }

    private int[] p(int[] radius, int index) {
        return (radius == null || index < 0 || index >= this.f2651p) ? radius : removeElementFromArray(radius, index);
    }

    public static int[] removeElementFromArray(int[] array, int index) {
        int[] iArr = new int[array.length - 1];
        int i2 = 0;
        for (int i4 = 0; i4 < array.length; i4++) {
            if (i4 != index) {
                iArr[i2] = array[i4];
                i2++;
            }
        }
        return iArr;
    }

    private void setAngles(String idList) {
        if (idList == null) {
            return;
        }
        int i2 = 0;
        this.f2652q = 0;
        while (true) {
            int indexOf = idList.indexOf(44, i2);
            if (indexOf == -1) {
                l(idList.substring(i2).trim());
                return;
            } else {
                l(idList.substring(i2, indexOf).trim());
                i2 = indexOf + 1;
            }
        }
    }

    private void setRadius(String idList) {
        if (idList == null) {
            return;
        }
        int i2 = 0;
        this.f2651p = 0;
        while (true) {
            int indexOf = idList.indexOf(44, i2);
            if (indexOf == -1) {
                m(idList.substring(i2).trim());
                return;
            } else {
                m(idList.substring(i2, indexOf).trim());
                i2 = indexOf + 1;
            }
        }
    }

    public void addViewToCircularFlow(View view, int radius, float angle) {
        if (containsId(view.getId())) {
            return;
        }
        addView(view);
        this.f2652q++;
        float[] angles = getAngles();
        this.f2649n = angles;
        angles[this.f2652q - 1] = angle;
        this.f2651p++;
        int[] radius2 = getRadius();
        this.f2650o = radius2;
        radius2[this.f2651p - 1] = (int) (radius * this.f3366c.getResources().getDisplayMetrics().density);
        n();
    }

    public float[] getAngles() {
        return Arrays.copyOf(this.f2649n, this.f2652q);
    }

    public int[] getRadius() {
        return Arrays.copyOf(this.f2650o, this.f2651p);
    }

    public boolean isUpdatable(View view) {
        return containsId(view.getId()) && indexFromId(view.getId()) != -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    public void k(AttributeSet attrs) {
        super.k(attrs);
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintLayout_Layout_circularflow_viewCenter) {
                    this.f2648m = obtainStyledAttributes.getResourceId(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_circularflow_angles) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f2653r = string;
                    setAngles(string);
                } else if (index == R.styleable.ConstraintLayout_Layout_circularflow_radiusInDP) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.f2654s = string2;
                    setRadius(string2);
                } else if (index == R.styleable.ConstraintLayout_Layout_circularflow_defaultAngle) {
                    Float valueOf = Float.valueOf(obtainStyledAttributes.getFloat(index, f2646x));
                    this.f2655t = valueOf;
                    setDefaultAngle(valueOf.floatValue());
                } else if (index == R.styleable.ConstraintLayout_Layout_circularflow_defaultRadius) {
                    Integer valueOf2 = Integer.valueOf(obtainStyledAttributes.getDimensionPixelSize(index, f2645w));
                    this.f2656u = valueOf2;
                    setDefaultRadius(valueOf2.intValue());
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f2653r;
        if (str != null) {
            this.f2649n = new float[1];
            setAngles(str);
        }
        String str2 = this.f2654s;
        if (str2 != null) {
            this.f2650o = new int[1];
            setRadius(str2);
        }
        Float f4 = this.f2655t;
        if (f4 != null) {
            setDefaultAngle(f4.floatValue());
        }
        Integer num = this.f2656u;
        if (num != null) {
            setDefaultRadius(num.intValue());
        }
        n();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public int removeView(View view) {
        int removeView = super.removeView(view);
        if (removeView == -1) {
            return removeView;
        }
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(this.f2647l);
        constraintSet.clear(view.getId(), 8);
        constraintSet.applyTo(this.f2647l);
        float[] fArr = this.f2649n;
        if (removeView < fArr.length) {
            this.f2649n = o(fArr, removeView);
            this.f2652q--;
        }
        int[] iArr = this.f2650o;
        if (removeView < iArr.length) {
            this.f2650o = p(iArr, removeView);
            this.f2651p--;
        }
        n();
        return removeView;
    }

    public void setDefaultAngle(float angle) {
        f2646x = angle;
    }

    public void setDefaultRadius(int radius) {
        f2645w = radius;
    }

    public void updateAngle(View view, float angle) {
        if (!isUpdatable(view)) {
            StringBuilder sb = new StringBuilder();
            sb.append("It was not possible to update angle to view with id: ");
            sb.append(view.getId());
            return;
        }
        int indexFromId = indexFromId(view.getId());
        if (indexFromId > this.f2649n.length) {
            return;
        }
        float[] angles = getAngles();
        this.f2649n = angles;
        angles[indexFromId] = angle;
        n();
    }

    public void updateRadius(View view, int radius) {
        if (!isUpdatable(view)) {
            StringBuilder sb = new StringBuilder();
            sb.append("It was not possible to update radius to view with id: ");
            sb.append(view.getId());
            return;
        }
        int indexFromId = indexFromId(view.getId());
        if (indexFromId > this.f2650o.length) {
            return;
        }
        int[] radius2 = getRadius();
        this.f2650o = radius2;
        radius2[indexFromId] = (int) (radius * this.f3366c.getResources().getDisplayMetrics().density);
        n();
    }

    public void updateReference(View view, int radius, float angle) {
        if (!isUpdatable(view)) {
            StringBuilder sb = new StringBuilder();
            sb.append("It was not possible to update radius and angle to view with id: ");
            sb.append(view.getId());
            return;
        }
        int indexFromId = indexFromId(view.getId());
        if (getAngles().length > indexFromId) {
            float[] angles = getAngles();
            this.f2649n = angles;
            angles[indexFromId] = angle;
        }
        if (getRadius().length > indexFromId) {
            int[] radius2 = getRadius();
            this.f2650o = radius2;
            radius2[indexFromId] = (int) (radius * this.f3366c.getResources().getDisplayMetrics().density);
        }
        n();
    }

    public CircularFlow(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public CircularFlow(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public static float[] removeElementFromArray(float[] array, int index) {
        float[] fArr = new float[array.length - 1];
        int i2 = 0;
        for (int i4 = 0; i4 < array.length; i4++) {
            if (i4 != index) {
                fArr[i2] = array[i4];
                i2++;
            }
        }
        return fArr;
    }
}
