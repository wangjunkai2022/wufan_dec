package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import java.util.Arrays;
import java.util.HashMap;
import m.a;
/* loaded from: classes.dex */
public abstract class ConstraintHelper extends View {

    /* renamed from: a  reason: collision with root package name */
    protected int[] f3364a;

    /* renamed from: b  reason: collision with root package name */
    protected int f3365b;

    /* renamed from: c  reason: collision with root package name */
    protected Context f3366c;

    /* renamed from: d  reason: collision with root package name */
    protected Helper f3367d;

    /* renamed from: e  reason: collision with root package name */
    protected boolean f3368e;

    /* renamed from: f  reason: collision with root package name */
    protected String f3369f;

    /* renamed from: g  reason: collision with root package name */
    protected String f3370g;

    /* renamed from: h  reason: collision with root package name */
    private View[] f3371h;

    /* renamed from: i  reason: collision with root package name */
    protected HashMap<Integer, String> f3372i;

    public ConstraintHelper(Context context) {
        super(context);
        this.f3364a = new int[32];
        this.f3368e = false;
        this.f3371h = null;
        this.f3372i = new HashMap<>();
        this.f3366c = context;
        k(null);
    }

    private void a(String idString) {
        if (idString == null || idString.length() == 0 || this.f3366c == null) {
            return;
        }
        String trim = idString.trim();
        if (getParent() instanceof ConstraintLayout) {
            ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
        }
        int i2 = i(trim);
        if (i2 != 0) {
            this.f3372i.put(Integer.valueOf(i2), trim);
            b(i2);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Could not find id of \"");
        sb.append(trim);
        sb.append(a.f72569g);
    }

    private void b(int id) {
        if (id == getId()) {
            return;
        }
        int i2 = this.f3365b + 1;
        int[] iArr = this.f3364a;
        if (i2 > iArr.length) {
            this.f3364a = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f3364a;
        int i4 = this.f3365b;
        iArr2[i4] = id;
        this.f3365b = i4 + 1;
    }

    private void c(String tagString) {
        if (tagString == null || tagString.length() == 0 || this.f3366c == null) {
            return;
        }
        String trim = tagString.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraintLayout.getChildAt(i2);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.LayoutParams) && trim.equals(((ConstraintLayout.LayoutParams) layoutParams).constraintTag)) {
                if (childAt.getId() == -1) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("to use ConstraintTag view ");
                    sb.append(childAt.getClass().getSimpleName());
                    sb.append(" must have an ID");
                } else {
                    b(childAt.getId());
                }
            }
        }
    }

    private int[] g(View view, String referenceIdString) {
        String[] split = referenceIdString.split(",");
        view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        for (String str : split) {
            int i4 = i(str.trim());
            if (i4 != 0) {
                iArr[i2] = i4;
                i2++;
            }
        }
        return i2 != split.length ? Arrays.copyOf(iArr, i2) : iArr;
    }

    private int h(ConstraintLayout container, String idString) {
        Resources resources;
        if (idString == null || container == null || (resources = this.f3366c.getResources()) == null) {
            return 0;
        }
        int childCount = container.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = container.getChildAt(i2);
            if (childAt.getId() != -1) {
                String str = null;
                try {
                    str = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                }
                if (idString.equals(str)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    private int i(String referenceId) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i2 = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object designInformation = constraintLayout.getDesignInformation(0, referenceId);
            if (designInformation instanceof Integer) {
                i2 = ((Integer) designInformation).intValue();
            }
        }
        if (i2 == 0 && constraintLayout != null) {
            i2 = h(constraintLayout, referenceId);
        }
        if (i2 == 0) {
            try {
                i2 = R.id.class.getField(referenceId).getInt(null);
            } catch (Exception unused) {
            }
        }
        return i2 == 0 ? this.f3366c.getResources().getIdentifier(referenceId, "id", this.f3366c.getPackageName()) : i2;
    }

    public void addView(View view) {
        if (view == this || view.getId() == -1 || view.getParent() == null) {
            return;
        }
        this.f3369f = null;
        b(view.getId());
        requestLayout();
    }

    public boolean containsId(final int id) {
        for (int i2 : this.f3364a) {
            if (i2 == id) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        e((ConstraintLayout) parent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(ConstraintLayout container) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i2 = 0; i2 < this.f3365b; i2++) {
            View viewById = container.getViewById(this.f3364a[i2]);
            if (viewById != null) {
                viewById.setVisibility(visibility);
                if (elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                    viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f(ConstraintLayout container) {
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f3364a, this.f3365b);
    }

    public int indexFromId(final int id) {
        int i2 = -1;
        for (int i4 : this.f3364a) {
            i2++;
            if (i4 == id) {
                return i2;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View[] j(ConstraintLayout layout) {
        View[] viewArr = this.f3371h;
        if (viewArr == null || viewArr.length != this.f3365b) {
            this.f3371h = new View[this.f3365b];
        }
        for (int i2 = 0; i2 < this.f3365b; i2++) {
            this.f3371h[i2] = layout.getViewById(this.f3364a[i2]);
        }
        return this.f3371h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k(AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f3369f = string;
                    setIds(string);
                } else if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.f3370g = string2;
                    setReferenceTags(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void loadParameters(ConstraintSet.Constraint constraint, HelperWidget child, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> mapIdToWidget) {
        ConstraintSet.Layout layout = constraint.layout;
        int[] iArr = layout.mReferenceIds;
        if (iArr != null) {
            setReferencedIds(iArr);
        } else {
            String str = layout.mReferenceIdString;
            if (str != null) {
                if (str.length() > 0) {
                    ConstraintSet.Layout layout2 = constraint.layout;
                    layout2.mReferenceIds = g(this, layout2.mReferenceIdString);
                } else {
                    constraint.layout.mReferenceIds = null;
                }
            }
        }
        if (child == null) {
            return;
        }
        child.removeAllIds();
        if (constraint.layout.mReferenceIds == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            int[] iArr2 = constraint.layout.mReferenceIds;
            if (i2 >= iArr2.length) {
                return;
            }
            ConstraintWidget constraintWidget = mapIdToWidget.get(iArr2[i2]);
            if (constraintWidget != null) {
                child.add(constraintWidget);
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f3369f;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f3370g;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.f3368e) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public int removeView(View view) {
        int i2;
        int id = view.getId();
        int i4 = -1;
        if (id == -1) {
            return -1;
        }
        this.f3369f = null;
        int i5 = 0;
        while (true) {
            if (i5 >= this.f3365b) {
                break;
            } else if (this.f3364a[i5] == id) {
                int i6 = i5;
                while (true) {
                    i2 = this.f3365b;
                    if (i6 >= i2 - 1) {
                        break;
                    }
                    int[] iArr = this.f3364a;
                    int i7 = i6 + 1;
                    iArr[i6] = iArr[i7];
                    i6 = i7;
                }
                this.f3364a[i2 - 1] = 0;
                this.f3365b = i2 - 1;
                i4 = i5;
            } else {
                i5++;
            }
        }
        requestLayout();
        return i4;
    }

    public void resolveRtl(ConstraintWidget widget, boolean isRtl) {
    }

    protected void setIds(String idList) {
        this.f3369f = idList;
        if (idList == null) {
            return;
        }
        int i2 = 0;
        this.f3365b = 0;
        while (true) {
            int indexOf = idList.indexOf(44, i2);
            if (indexOf == -1) {
                a(idList.substring(i2));
                return;
            } else {
                a(idList.substring(i2, indexOf));
                i2 = indexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String tagList) {
        this.f3370g = tagList;
        if (tagList == null) {
            return;
        }
        int i2 = 0;
        this.f3365b = 0;
        while (true) {
            int indexOf = tagList.indexOf(44, i2);
            if (indexOf == -1) {
                c(tagList.substring(i2));
                return;
            } else {
                c(tagList.substring(i2, indexOf));
                i2 = indexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] ids) {
        this.f3369f = null;
        this.f3365b = 0;
        for (int i2 : ids) {
            b(i2);
        }
    }

    @Override // android.view.View
    public void setTag(int key, Object tag) {
        super.setTag(key, tag);
        if (tag == null && this.f3369f == null) {
            b(key);
        }
    }

    public void updatePostConstraints(ConstraintLayout container) {
    }

    public void updatePostLayout(ConstraintLayout container) {
    }

    public void updatePostMeasure(ConstraintLayout container) {
    }

    public void updatePreDraw(ConstraintLayout container) {
    }

    public void updatePreLayout(ConstraintLayout container) {
        String str;
        int h4;
        if (isInEditMode()) {
            setIds(this.f3369f);
        }
        Helper helper = this.f3367d;
        if (helper == null) {
            return;
        }
        helper.removeAllIds();
        for (int i2 = 0; i2 < this.f3365b; i2++) {
            int i4 = this.f3364a[i2];
            View viewById = container.getViewById(i4);
            if (viewById == null && (h4 = h(container, (str = this.f3372i.get(Integer.valueOf(i4))))) != 0) {
                this.f3364a[i2] = h4;
                this.f3372i.put(Integer.valueOf(h4), str);
                viewById = container.getViewById(h4);
            }
            if (viewById != null) {
                this.f3367d.add(container.getViewWidget(viewById));
            }
        }
        this.f3367d.updateConstraints(container.f3376c);
    }

    public void validateParams() {
        if (this.f3367d == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).f3421v = (ConstraintWidget) this.f3367d;
        }
    }

    public ConstraintHelper(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f3364a = new int[32];
        this.f3368e = false;
        this.f3371h = null;
        this.f3372i = new HashMap<>();
        this.f3366c = context;
        k(attrs);
    }

    public ConstraintHelper(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3364a = new int[32];
        this.f3368e = false;
        this.f3371h = null;
        this.f3372i = new HashMap<>();
        this.f3366c = context;
        k(attrs);
    }

    public void updatePreLayout(ConstraintWidgetContainer container, Helper helper, SparseArray<ConstraintWidget> map) {
        helper.removeAllIds();
        for (int i2 = 0; i2 < this.f3365b; i2++) {
            helper.add(map.get(this.f3364a[i2]));
        }
    }
}
