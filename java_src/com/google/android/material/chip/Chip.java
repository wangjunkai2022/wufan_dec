package com.google.android.material.chip;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.BoolRes;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R;
import com.google.android.material.animation.h;
import com.google.android.material.chip.a;
import com.google.android.material.internal.g;
import com.google.android.material.internal.o;
import com.google.android.material.internal.w;
import com.google.android.material.resources.f;
import com.google.android.material.shape.i;
import com.google.android.material.shape.m;
import com.google.android.material.shape.q;
import java.util.List;
/* loaded from: classes2.dex */
public class Chip extends AppCompatCheckBox implements a.InterfaceC0103a, q, g<Chip> {
    private static final int A = 1;
    private static final String E = "http://schemas.android.com/apk/res/android";
    private static final int F = 48;
    private static final String G = "android.widget.Button";
    private static final String H = "android.widget.CompoundButton";
    private static final String I = "android.widget.RadioButton";
    private static final String J = "android.view.View";

    /* renamed from: x  reason: collision with root package name */
    private static final String f14389x = "Chip";

    /* renamed from: z  reason: collision with root package name */
    private static final int f14391z = 0;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private com.google.android.material.chip.a f14392e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private InsetDrawable f14393f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private RippleDrawable f14394g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private View.OnClickListener f14395h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private CompoundButton.OnCheckedChangeListener f14396i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private g.a<Chip> f14397j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f14398k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f14399l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f14400m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f14401n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f14402o;

    /* renamed from: p  reason: collision with root package name */
    private int f14403p;
    @Dimension(unit = 1)

    /* renamed from: q  reason: collision with root package name */
    private int f14404q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private CharSequence f14405r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    private final d f14406s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f14407t;

    /* renamed from: u  reason: collision with root package name */
    private final Rect f14408u;

    /* renamed from: v  reason: collision with root package name */
    private final RectF f14409v;

    /* renamed from: w  reason: collision with root package name */
    private final f f14410w;

    /* renamed from: y  reason: collision with root package name */
    private static final int f14390y = R.style.Widget_MaterialComponents_Chip_Action;
    private static final Rect B = new Rect();
    private static final int[] C = {16842913};
    private static final int[] D = {16842911};

    /* loaded from: classes2.dex */
    class a extends f {
        a() {
        }

        @Override // com.google.android.material.resources.f
        public void a(int i2) {
        }

        @Override // com.google.android.material.resources.f
        public void b(@NonNull Typeface typeface, boolean z3) {
            Chip chip = Chip.this;
            chip.setText(chip.f14392e.K3() ? Chip.this.f14392e.P1() : Chip.this.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    /* loaded from: classes2.dex */
    class b implements CompoundButton.OnCheckedChangeListener {
        b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (Chip.this.f14397j != null) {
                Chip.this.f14397j.a(Chip.this, z3);
            }
            if (Chip.this.f14396i != null) {
                Chip.this.f14396i.onCheckedChanged(compoundButton, z3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends ViewOutlineProvider {
        c() {
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, @NonNull Outline outline) {
            if (Chip.this.f14392e != null) {
                Chip.this.f14392e.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d extends ExploreByTouchHelper {
        d(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected int j(float f4, float f5) {
            return (Chip.this.o() && Chip.this.getCloseIconTouchBounds().contains(f4, f5)) ? 1 : 0;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void k(@NonNull List<Integer> list) {
            list.add(0);
            if (Chip.this.o() && Chip.this.y() && Chip.this.f14395h != null) {
                list.add(1);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected boolean q(int i2, int i4, Bundle bundle) {
            if (i4 == 16) {
                if (i2 == 0) {
                    return Chip.this.performClick();
                }
                if (i2 == 1) {
                    return Chip.this.z();
                }
                return false;
            }
            return false;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void t(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCheckable(Chip.this.s());
            accessibilityNodeInfoCompat.setClickable(Chip.this.isClickable());
            accessibilityNodeInfoCompat.setClassName(Chip.this.getAccessibilityClassName());
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                accessibilityNodeInfoCompat.setText(text);
            } else {
                accessibilityNodeInfoCompat.setContentDescription(text);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void u(int i2, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (i2 == 1) {
                CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
                if (closeIconContentDescription != null) {
                    accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
                } else {
                    CharSequence text = Chip.this.getText();
                    Context context = Chip.this.getContext();
                    int i4 = R.string.mtrl_chip_close_icon_content_description;
                    Object[] objArr = new Object[1];
                    objArr[0] = TextUtils.isEmpty(text) ? "" : text;
                    accessibilityNodeInfoCompat.setContentDescription(context.getString(i4, objArr).trim());
                }
                accessibilityNodeInfoCompat.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
                accessibilityNodeInfoCompat.setEnabled(Chip.this.isEnabled());
                return;
            }
            accessibilityNodeInfoCompat.setContentDescription("");
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.B);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void v(int i2, boolean z3) {
            if (i2 == 1) {
                Chip.this.f14401n = z3;
                Chip.this.refreshDrawableState();
            }
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    private void A() {
        if (this.f14393f != null) {
            this.f14393f = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            E();
        }
    }

    private void C(@Nullable com.google.android.material.chip.a aVar) {
        if (aVar != null) {
            aVar.k3(null);
        }
    }

    private void D() {
        if (o() && y() && this.f14395h != null) {
            ViewCompat.setAccessibilityDelegate(this, this.f14406s);
            this.f14407t = true;
            return;
        }
        ViewCompat.setAccessibilityDelegate(this, null);
        this.f14407t = false;
    }

    private void E() {
        if (com.google.android.material.ripple.b.f15517a) {
            F();
            return;
        }
        this.f14392e.J3(true);
        ViewCompat.setBackground(this, getBackgroundDrawable());
        G();
        n();
    }

    private void F() {
        this.f14394g = new RippleDrawable(com.google.android.material.ripple.b.d(this.f14392e.N1()), getBackgroundDrawable(), null);
        this.f14392e.J3(false);
        ViewCompat.setBackground(this, this.f14394g);
        G();
    }

    private void G() {
        com.google.android.material.chip.a aVar;
        if (TextUtils.isEmpty(getText()) || (aVar = this.f14392e) == null) {
            return;
        }
        int p12 = (int) (aVar.p1() + this.f14392e.R1() + this.f14392e.V0());
        int u12 = (int) (this.f14392e.u1() + this.f14392e.S1() + this.f14392e.R0());
        if (this.f14393f != null) {
            Rect rect = new Rect();
            this.f14393f.getPadding(rect);
            u12 += rect.left;
            p12 += rect.right;
        }
        ViewCompat.setPaddingRelative(this, u12, getPaddingTop(), p12, getPaddingBottom());
    }

    private void H() {
        TextPaint paint = getPaint();
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            paint.drawableState = aVar.getState();
        }
        com.google.android.material.resources.d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.n(getContext(), paint, this.f14410w);
        }
    }

    private void I(@Nullable AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        attributeSet.getAttributeValue(E, "background");
        if (attributeSet.getAttributeValue(E, "drawableLeft") == null) {
            if (attributeSet.getAttributeValue(E, "drawableStart") == null) {
                if (attributeSet.getAttributeValue(E, "drawableEnd") == null) {
                    if (attributeSet.getAttributeValue(E, "drawableRight") == null) {
                        if (attributeSet.getAttributeBooleanValue(E, "singleLine", true) && attributeSet.getAttributeIntValue(E, "lines", 1) == 1 && attributeSet.getAttributeIntValue(E, "minLines", 1) == 1 && attributeSet.getAttributeIntValue(E, "maxLines", 1) == 1) {
                            attributeSet.getAttributeIntValue(E, "gravity", 8388627);
                            return;
                        }
                        throw new UnsupportedOperationException("Chip does not support multi-line text");
                    }
                    throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
                }
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public RectF getCloseIconTouchBounds() {
        this.f14409v.setEmpty();
        if (o() && this.f14395h != null) {
            this.f14392e.F1(this.f14409v);
        }
        return this.f14409v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.f14408u.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.f14408u;
    }

    @Nullable
    private com.google.android.material.resources.d getTextAppearance() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.Q1();
        }
        return null;
    }

    private void k(@NonNull com.google.android.material.chip.a aVar) {
        aVar.k3(this);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [int, boolean] */
    @NonNull
    private int[] l() {
        ?? isEnabled = isEnabled();
        int i2 = isEnabled;
        if (this.f14401n) {
            i2 = isEnabled + 1;
        }
        int i4 = i2;
        if (this.f14400m) {
            i4 = i2 + 1;
        }
        int i5 = i4;
        if (this.f14399l) {
            i5 = i4 + 1;
        }
        int i6 = i5;
        if (isChecked()) {
            i6 = i5 + 1;
        }
        int[] iArr = new int[i6];
        int i7 = 0;
        if (isEnabled()) {
            iArr[0] = 16842910;
            i7 = 1;
        }
        if (this.f14401n) {
            iArr[i7] = 16842908;
            i7++;
        }
        if (this.f14400m) {
            iArr[i7] = 16843623;
            i7++;
        }
        if (this.f14399l) {
            iArr[i7] = 16842919;
            i7++;
        }
        if (isChecked()) {
            iArr[i7] = 16842913;
        }
        return iArr;
    }

    private void n() {
        if (getBackgroundDrawable() == this.f14393f && this.f14392e.getCallback() == null) {
            this.f14392e.setCallback(this.f14393f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o() {
        com.google.android.material.chip.a aVar = this.f14392e;
        return (aVar == null || aVar.y1() == null) ? false : true;
    }

    private void p(Context context, @Nullable AttributeSet attributeSet, int i2) {
        TypedArray j4 = o.j(context, attributeSet, R.styleable.Chip, i2, f14390y, new int[0]);
        this.f14402o = j4.getBoolean(R.styleable.Chip_ensureMinTouchTargetSize, false);
        this.f14404q = (int) Math.ceil(j4.getDimension(R.styleable.Chip_chipMinTouchTargetSize, (float) Math.ceil(w.e(getContext(), 48))));
        j4.recycle();
    }

    private void q() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new c());
        }
    }

    private void r(int i2, int i4, int i5, int i6) {
        this.f14393f = new InsetDrawable((Drawable) this.f14392e, i2, i4, i5, i6);
    }

    private void setCloseIconHovered(boolean z3) {
        if (this.f14400m != z3) {
            this.f14400m = z3;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z3) {
        if (this.f14399l != z3) {
            this.f14399l = z3;
            refreshDrawableState();
        }
    }

    public boolean B() {
        return this.f14402o;
    }

    @Override // com.google.android.material.chip.a.InterfaceC0103a
    public void a() {
        m(this.f14404q);
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        if (this.f14407t) {
            return this.f14406s.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f14407t) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (!this.f14406s.dispatchKeyEvent(keyEvent) || this.f14406s.getKeyboardFocusedVirtualViewId() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        com.google.android.material.chip.a aVar = this.f14392e;
        if ((aVar == null || !aVar.c2()) ? false : this.f14392e.f3(l())) {
            invalidate();
        }
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f14405r)) {
            return this.f14405r;
        }
        if (!s()) {
            return isClickable() ? G : J;
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).k()) ? I : H;
    }

    @Nullable
    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f14393f;
        return insetDrawable == null ? this.f14392e : insetDrawable;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.l1();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.m1();
        }
        return null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.n1();
        }
        return null;
    }

    public float getChipCornerRadius() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return Math.max(0.0f, aVar.o1());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f14392e;
    }

    public float getChipEndPadding() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.p1();
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getChipIcon() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.q1();
        }
        return null;
    }

    public float getChipIconSize() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.r1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.s1();
        }
        return null;
    }

    public float getChipMinHeight() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.t1();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.u1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.v1();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.w1();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Nullable
    public Drawable getCloseIcon() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.y1();
        }
        return null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.z1();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.A1();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.B1();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.C1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.E1();
        }
        return null;
    }

    @Override // android.widget.TextView
    @Nullable
    public TextUtils.TruncateAt getEllipsize() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.I1();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(@NonNull Rect rect) {
        if (this.f14407t && (this.f14406s.getKeyboardFocusedVirtualViewId() == 1 || this.f14406s.getAccessibilityFocusedVirtualViewId() == 1)) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Nullable
    public h getHideMotionSpec() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.J1();
        }
        return null;
    }

    public float getIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.K1();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.L1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.N1();
        }
        return null;
    }

    @Override // com.google.android.material.shape.q
    @NonNull
    public m getShapeAppearanceModel() {
        return this.f14392e.getShapeAppearanceModel();
    }

    @Nullable
    public h getShowMotionSpec() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.O1();
        }
        return null;
    }

    public float getTextEndPadding() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.R1();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            return aVar.S1();
        }
        return 0.0f;
    }

    public boolean m(@Dimension int i2) {
        this.f14404q = i2;
        if (!B()) {
            if (this.f14393f != null) {
                A();
            } else {
                E();
            }
            return false;
        }
        int max = Math.max(0, i2 - this.f14392e.getIntrinsicHeight());
        int max2 = Math.max(0, i2 - this.f14392e.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            if (this.f14393f != null) {
                A();
            } else {
                E();
            }
            return false;
        }
        int i4 = max2 > 0 ? max2 / 2 : 0;
        int i5 = max > 0 ? max / 2 : 0;
        if (this.f14393f != null) {
            Rect rect = new Rect();
            this.f14393f.getPadding(rect);
            if (rect.top == i5 && rect.bottom == i5 && rect.left == i4 && rect.right == i4) {
                E();
                return true;
            }
        }
        if (Build.VERSION.SDK_INT >= 16) {
            if (getMinHeight() != i2) {
                setMinHeight(i2);
            }
            if (getMinWidth() != i2) {
                setMinWidth(i2);
            }
        } else {
            setMinHeight(i2);
            setMinWidth(i2);
        }
        r(i4, i5, i4, i5);
        E();
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        i.f(this, this.f14392e);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 2);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, C);
        }
        if (s()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, D);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z3, int i2, Rect rect) {
        super.onFocusChanged(z3, i2, rect);
        if (this.f14407t) {
            this.f14406s.onFocusChanged(z3, i2, rect);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(s());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(chipGroup.b(this), 1, chipGroup.c() ? chipGroup.i(this) : -1, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @Nullable
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(@NonNull MotionEvent motionEvent, int i2) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        if (this.f14403p != i2) {
            this.f14403p = i2;
            G();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
        if (r0 != 3) goto L16;
     */
    @Override // android.widget.TextView, android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@androidx.annotation.NonNull android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L39
            if (r0 == r3) goto L2b
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L34
            goto L40
        L21:
            boolean r0 = r5.f14399l
            if (r0 == 0) goto L40
            if (r1 != 0) goto L3e
            r5.setCloseIconPressed(r2)
            goto L3e
        L2b:
            boolean r0 = r5.f14399l
            if (r0 == 0) goto L34
            r5.z()
            r0 = 1
            goto L35
        L34:
            r0 = 0
        L35:
            r5.setCloseIconPressed(r2)
            goto L41
        L39:
            if (r1 == 0) goto L40
            r5.setCloseIconPressed(r3)
        L3e:
            r0 = 1
            goto L41
        L40:
            r0 = 0
        L41:
            if (r0 != 0) goto L49
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L4a
        L49:
            r2 = 1
        L4a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean s() {
        com.google.android.material.chip.a aVar = this.f14392e;
        return aVar != null && aVar.W1();
    }

    public void setAccessibilityClassName(@Nullable CharSequence charSequence) {
        this.f14405r = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f14394g) {
            super.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f14394g) {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i2) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
    }

    public void setCheckable(boolean z3) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.l2(z3);
        }
    }

    public void setCheckableResource(@BoolRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.m2(i2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z3) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar == null) {
            this.f14398k = z3;
        } else if (aVar.W1()) {
            super.setChecked(z3);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.n2(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z3) {
        setCheckedIconVisible(z3);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i2) {
        setCheckedIconVisible(i2);
    }

    public void setCheckedIconResource(@DrawableRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.q2(i2);
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.r2(colorStateList);
        }
    }

    public void setCheckedIconTintResource(@ColorRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.s2(i2);
        }
    }

    public void setCheckedIconVisible(@BoolRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.t2(i2);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.v2(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(@ColorRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.w2(i2);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f4) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.x2(f4);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.y2(i2);
        }
    }

    public void setChipDrawable(@NonNull com.google.android.material.chip.a aVar) {
        com.google.android.material.chip.a aVar2 = this.f14392e;
        if (aVar2 != aVar) {
            C(aVar2);
            this.f14392e = aVar;
            aVar.v3(false);
            k(this.f14392e);
            m(this.f14404q);
        }
    }

    public void setChipEndPadding(float f4) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.z2(f4);
        }
    }

    public void setChipEndPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.A2(i2);
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.B2(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z3) {
        setChipIconVisible(z3);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i2) {
        setChipIconVisible(i2);
    }

    public void setChipIconResource(@DrawableRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.E2(i2);
        }
    }

    public void setChipIconSize(float f4) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.F2(f4);
        }
    }

    public void setChipIconSizeResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.G2(i2);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.H2(colorStateList);
        }
    }

    public void setChipIconTintResource(@ColorRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.I2(i2);
        }
    }

    public void setChipIconVisible(@BoolRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.J2(i2);
        }
    }

    public void setChipMinHeight(float f4) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.L2(f4);
        }
    }

    public void setChipMinHeightResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.M2(i2);
        }
    }

    public void setChipStartPadding(float f4) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.N2(f4);
        }
    }

    public void setChipStartPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.O2(i2);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.P2(colorStateList);
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.Q2(i2);
        }
    }

    public void setChipStrokeWidth(float f4) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.R2(f4);
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.S2(i2);
        }
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(@StringRes int i2) {
        setText(getResources().getString(i2));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.U2(drawable);
        }
        D();
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.V2(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z3) {
        setCloseIconVisible(z3);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i2) {
        setCloseIconVisible(i2);
    }

    public void setCloseIconEndPadding(float f4) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.Y2(f4);
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.Z2(i2);
        }
    }

    public void setCloseIconResource(@DrawableRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.a3(i2);
        }
        D();
    }

    public void setCloseIconSize(float f4) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.b3(f4);
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.c3(i2);
        }
    }

    public void setCloseIconStartPadding(float f4) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.d3(f4);
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.e3(i2);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.g3(colorStateList);
        }
    }

    public void setCloseIconTintResource(@ColorRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.h3(i2);
        }
    }

    public void setCloseIconVisible(@BoolRes int i2) {
        setCloseIconVisible(getResources().getBoolean(i2));
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i4, int i5, int i6) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i5 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i2, i4, i5, i6);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i2, int i4, int i5, int i6) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i5 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i2, i4, i5, i6);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f4) {
        super.setElevation(f4);
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.n0(f4);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f14392e == null) {
            return;
        }
        if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
            super.setEllipsize(truncateAt);
            com.google.android.material.chip.a aVar = this.f14392e;
            if (aVar != null) {
                aVar.l3(truncateAt);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
    }

    public void setEnsureMinTouchTargetSize(boolean z3) {
        this.f14402o = z3;
        m(this.f14404q);
    }

    @Override // android.widget.TextView
    public void setGravity(int i2) {
        if (i2 != 8388627) {
            return;
        }
        super.setGravity(i2);
    }

    public void setHideMotionSpec(@Nullable h hVar) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.m3(hVar);
        }
    }

    public void setHideMotionSpecResource(@AnimatorRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.n3(i2);
        }
    }

    public void setIconEndPadding(float f4) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.o3(f4);
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.p3(i2);
        }
    }

    public void setIconStartPadding(float f4) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.q3(f4);
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.r3(i2);
        }
    }

    @Override // com.google.android.material.internal.g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setInternalOnCheckedChangeListener(@Nullable g.a<Chip> aVar) {
        this.f14397j = aVar;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i2) {
        if (this.f14392e != null && Build.VERSION.SDK_INT >= 17) {
            super.setLayoutDirection(i2);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i2) {
        if (i2 <= 1) {
            super.setLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i2) {
        if (i2 <= 1) {
            super.setMaxLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxWidth(@Px int i2) {
        super.setMaxWidth(i2);
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.s3(i2);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i2) {
        if (i2 <= 1) {
            super.setMinLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f14396i = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f14395h = onClickListener;
        D();
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.t3(colorStateList);
        }
        if (this.f14392e.U1()) {
            return;
        }
        F();
    }

    public void setRippleColorResource(@ColorRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.u3(i2);
            if (this.f14392e.U1()) {
                return;
            }
            F();
        }
    }

    @Override // com.google.android.material.shape.q
    public void setShapeAppearanceModel(@NonNull m mVar) {
        this.f14392e.setShapeAppearanceModel(mVar);
    }

    public void setShowMotionSpec(@Nullable h hVar) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.w3(hVar);
        }
    }

    public void setShowMotionSpecResource(@AnimatorRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.x3(i2);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z3) {
        if (z3) {
            super.setSingleLine(z3);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(aVar.K3() ? null : charSequence, bufferType);
        com.google.android.material.chip.a aVar2 = this.f14392e;
        if (aVar2 != null) {
            aVar2.y3(charSequence);
        }
    }

    public void setTextAppearance(@Nullable com.google.android.material.resources.d dVar) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.z3(dVar);
        }
        H();
    }

    public void setTextAppearanceResource(@StyleRes int i2) {
        setTextAppearance(getContext(), i2);
    }

    public void setTextEndPadding(float f4) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.D3(f4);
        }
    }

    public void setTextEndPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.E3(i2);
        }
    }

    public void setTextStartPadding(float f4) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.H3(f4);
        }
    }

    public void setTextStartPaddingResource(@DimenRes int i2) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.I3(i2);
        }
    }

    @Deprecated
    public boolean t() {
        return u();
    }

    public boolean u() {
        com.google.android.material.chip.a aVar = this.f14392e;
        return aVar != null && aVar.Y1();
    }

    @Deprecated
    public boolean v() {
        return w();
    }

    public boolean w() {
        com.google.android.material.chip.a aVar = this.f14392e;
        return aVar != null && aVar.a2();
    }

    @Deprecated
    public boolean x() {
        return y();
    }

    public boolean y() {
        com.google.android.material.chip.a aVar = this.f14392e;
        return aVar != null && aVar.d2();
    }

    @CallSuper
    public boolean z() {
        boolean z3 = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f14395h;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z3 = true;
        }
        if (this.f14407t) {
            this.f14406s.sendEventForVirtualView(1, 1);
        }
        return z3;
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipStyle);
    }

    public void setCloseIconVisible(boolean z3) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.j3(z3);
        }
        D();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Chip(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r4 = com.google.android.material.chip.Chip.f14390y
            android.content.Context r8 = com.google.android.material.theme.overlay.a.c(r8, r9, r10, r4)
            r7.<init>(r8, r9, r10)
            android.graphics.Rect r8 = new android.graphics.Rect
            r8.<init>()
            r7.f14408u = r8
            android.graphics.RectF r8 = new android.graphics.RectF
            r8.<init>()
            r7.f14409v = r8
            com.google.android.material.chip.Chip$a r8 = new com.google.android.material.chip.Chip$a
            r8.<init>()
            r7.f14410w = r8
            android.content.Context r8 = r7.getContext()
            r7.I(r9)
            com.google.android.material.chip.a r6 = com.google.android.material.chip.a.a1(r8, r9, r10, r4)
            r7.p(r8, r9, r10)
            r7.setChipDrawable(r6)
            float r0 = androidx.core.view.ViewCompat.getElevation(r7)
            r6.n0(r0)
            int[] r2 = com.google.android.material.R.styleable.Chip
            r0 = 0
            int[] r5 = new int[r0]
            r0 = r8
            r1 = r9
            r3 = r10
            android.content.res.TypedArray r9 = com.google.android.material.internal.o.j(r0, r1, r2, r3, r4, r5)
            int r10 = android.os.Build.VERSION.SDK_INT
            r0 = 23
            if (r10 >= r0) goto L51
            int r10 = com.google.android.material.R.styleable.Chip_android_textColor
            android.content.res.ColorStateList r8 = com.google.android.material.resources.c.a(r8, r9, r10)
            r7.setTextColor(r8)
        L51:
            int r8 = com.google.android.material.R.styleable.Chip_shapeAppearance
            boolean r8 = r9.hasValue(r8)
            r9.recycle()
            com.google.android.material.chip.Chip$d r9 = new com.google.android.material.chip.Chip$d
            r9.<init>(r7)
            r7.f14406s = r9
            r7.D()
            if (r8 != 0) goto L69
            r7.q()
        L69:
            boolean r8 = r7.f14398k
            r7.setChecked(r8)
            java.lang.CharSequence r8 = r6.P1()
            r7.setText(r8)
            android.text.TextUtils$TruncateAt r8 = r6.I1()
            r7.setEllipsize(r8)
            r7.H()
            com.google.android.material.chip.a r8 = r7.f14392e
            boolean r8 = r8.K3()
            if (r8 != 0) goto L8e
            r8 = 1
            r7.setLines(r8)
            r7.setHorizontallyScrolling(r8)
        L8e:
            r8 = 8388627(0x800013, float:1.175497E-38)
            r7.setGravity(r8)
            r7.G()
            boolean r8 = r7.B()
            if (r8 == 0) goto La2
            int r8 = r7.f14404q
            r7.setMinHeight(r8)
        La2:
            int r8 = androidx.core.view.ViewCompat.getLayoutDirection(r7)
            r7.f14403p = r8
            com.google.android.material.chip.Chip$b r8 = new com.google.android.material.chip.Chip$b
            r8.<init>()
            super.setOnCheckedChangeListener(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void setCheckedIconVisible(boolean z3) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.u2(z3);
        }
    }

    public void setChipIconVisible(boolean z3) {
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.K2(z3);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.A3(i2);
        }
        H();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i2) {
        super.setTextAppearance(i2);
        com.google.android.material.chip.a aVar = this.f14392e;
        if (aVar != null) {
            aVar.A3(i2);
        }
        H();
    }
}
