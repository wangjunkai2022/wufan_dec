package androidx.appcompat.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.text.AllCapsTransformationMethod;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton implements EmojiCompatConfigurationView {
    private static final int A0 = 3;
    private static final Property<SwitchCompat, Float> B0 = new Property<SwitchCompat, Float>(Float.class, "thumbPos") { // from class: androidx.appcompat.widget.SwitchCompat.1
        @Override // android.util.Property
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f1434z);
        }

        @Override // android.util.Property
        public void set(SwitchCompat switchCompat, Float f4) {
            switchCompat.setThumbPosition(f4.floatValue());
        }
    };
    private static final int[] C0 = {16842912};

    /* renamed from: t0  reason: collision with root package name */
    private static final int f1396t0 = 250;

    /* renamed from: u0  reason: collision with root package name */
    private static final int f1397u0 = 0;

    /* renamed from: v0  reason: collision with root package name */
    private static final int f1398v0 = 1;

    /* renamed from: w0  reason: collision with root package name */
    private static final int f1399w0 = 2;

    /* renamed from: x0  reason: collision with root package name */
    private static final String f1400x0 = "android.widget.Switch";

    /* renamed from: y0  reason: collision with root package name */
    private static final int f1401y0 = 1;

    /* renamed from: z0  reason: collision with root package name */
    private static final int f1402z0 = 2;
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private final TextPaint H;
    private ColorStateList I;
    private Layout J;
    private Layout K;

    /* renamed from: a  reason: collision with root package name */
    private Drawable f1403a;

    /* renamed from: b  reason: collision with root package name */
    private ColorStateList f1404b;

    /* renamed from: c  reason: collision with root package name */
    private PorterDuff.Mode f1405c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f1406d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f1407e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f1408f;

    /* renamed from: g  reason: collision with root package name */
    private ColorStateList f1409g;

    /* renamed from: h  reason: collision with root package name */
    private PorterDuff.Mode f1410h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f1411i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f1412j;

    /* renamed from: k  reason: collision with root package name */
    private int f1413k;

    /* renamed from: l  reason: collision with root package name */
    private int f1414l;

    /* renamed from: m  reason: collision with root package name */
    private int f1415m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f1416n;
    @Nullable

    /* renamed from: n0  reason: collision with root package name */
    private TransformationMethod f1417n0;

    /* renamed from: o  reason: collision with root package name */
    private CharSequence f1418o;

    /* renamed from: o0  reason: collision with root package name */
    ObjectAnimator f1419o0;

    /* renamed from: p  reason: collision with root package name */
    private CharSequence f1420p;

    /* renamed from: p0  reason: collision with root package name */
    private final AppCompatTextHelper f1421p0;

    /* renamed from: q  reason: collision with root package name */
    private CharSequence f1422q;
    @NonNull

    /* renamed from: q0  reason: collision with root package name */
    private AppCompatEmojiTextHelper f1423q0;

    /* renamed from: r  reason: collision with root package name */
    private CharSequence f1424r;
    @Nullable

    /* renamed from: r0  reason: collision with root package name */
    private EmojiCompatInitCallback f1425r0;

    /* renamed from: s  reason: collision with root package name */
    private boolean f1426s;

    /* renamed from: s0  reason: collision with root package name */
    private final Rect f1427s0;

    /* renamed from: t  reason: collision with root package name */
    private int f1428t;

    /* renamed from: u  reason: collision with root package name */
    private int f1429u;

    /* renamed from: v  reason: collision with root package name */
    private float f1430v;

    /* renamed from: w  reason: collision with root package name */
    private float f1431w;

    /* renamed from: x  reason: collision with root package name */
    private VelocityTracker f1432x;

    /* renamed from: y  reason: collision with root package name */
    private int f1433y;

    /* renamed from: z  reason: collision with root package name */
    float f1434z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class EmojiCompatInitCallback extends EmojiCompat.InitCallback {

        /* renamed from: a  reason: collision with root package name */
        private final Reference<SwitchCompat> f1435a;

        EmojiCompatInitCallback(SwitchCompat switchCompat) {
            this.f1435a = new WeakReference(switchCompat);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onFailed(@Nullable Throwable th) {
            SwitchCompat switchCompat = this.f1435a.get();
            if (switchCompat != null) {
                switchCompat.j();
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onInitialized() {
            SwitchCompat switchCompat = this.f1435a.get();
            if (switchCompat != null) {
                switchCompat.j();
            }
        }
    }

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<SwitchCompat> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f1436a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f1437b;

        /* renamed from: c  reason: collision with root package name */
        private int f1438c;

        /* renamed from: d  reason: collision with root package name */
        private int f1439d;

        /* renamed from: e  reason: collision with root package name */
        private int f1440e;

        /* renamed from: f  reason: collision with root package name */
        private int f1441f;

        /* renamed from: g  reason: collision with root package name */
        private int f1442g;

        /* renamed from: h  reason: collision with root package name */
        private int f1443h;

        /* renamed from: i  reason: collision with root package name */
        private int f1444i;

        /* renamed from: j  reason: collision with root package name */
        private int f1445j;

        /* renamed from: k  reason: collision with root package name */
        private int f1446k;

        /* renamed from: l  reason: collision with root package name */
        private int f1447l;

        /* renamed from: m  reason: collision with root package name */
        private int f1448m;

        /* renamed from: n  reason: collision with root package name */
        private int f1449n;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1437b = propertyMapper.mapObject("textOff", 16843045);
            this.f1438c = propertyMapper.mapObject("textOn", 16843044);
            this.f1439d = propertyMapper.mapObject("thumb", 16843074);
            this.f1440e = propertyMapper.mapBoolean("showText", R.attr.showText);
            this.f1441f = propertyMapper.mapBoolean("splitTrack", R.attr.splitTrack);
            this.f1442g = propertyMapper.mapInt("switchMinWidth", R.attr.switchMinWidth);
            this.f1443h = propertyMapper.mapInt("switchPadding", R.attr.switchPadding);
            this.f1444i = propertyMapper.mapInt("thumbTextPadding", R.attr.thumbTextPadding);
            this.f1445j = propertyMapper.mapObject("thumbTint", R.attr.thumbTint);
            this.f1446k = propertyMapper.mapObject("thumbTintMode", R.attr.thumbTintMode);
            this.f1447l = propertyMapper.mapObject("track", R.attr.track);
            this.f1448m = propertyMapper.mapObject("trackTint", R.attr.trackTint);
            this.f1449n = propertyMapper.mapObject("trackTintMode", R.attr.trackTintMode);
            this.f1436a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull SwitchCompat switchCompat, @NonNull PropertyReader propertyReader) {
            if (this.f1436a) {
                propertyReader.readObject(this.f1437b, switchCompat.getTextOff());
                propertyReader.readObject(this.f1438c, switchCompat.getTextOn());
                propertyReader.readObject(this.f1439d, switchCompat.getThumbDrawable());
                propertyReader.readBoolean(this.f1440e, switchCompat.getShowText());
                propertyReader.readBoolean(this.f1441f, switchCompat.getSplitTrack());
                propertyReader.readInt(this.f1442g, switchCompat.getSwitchMinWidth());
                propertyReader.readInt(this.f1443h, switchCompat.getSwitchPadding());
                propertyReader.readInt(this.f1444i, switchCompat.getThumbTextPadding());
                propertyReader.readObject(this.f1445j, switchCompat.getThumbTintList());
                propertyReader.readObject(this.f1446k, switchCompat.getThumbTintMode());
                propertyReader.readObject(this.f1447l, switchCompat.getTrackDrawable());
                propertyReader.readObject(this.f1448m, switchCompat.getTrackTintList());
                propertyReader.readObject(this.f1449n, switchCompat.getTrackTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    public SwitchCompat(@NonNull Context context) {
        this(context, null);
    }

    private void a(boolean z3) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, B0, z3 ? 1.0f : 0.0f);
        this.f1419o0 = ofFloat;
        ofFloat.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.f1419o0.setAutoCancel(true);
        }
        this.f1419o0.start();
    }

    private void b() {
        Drawable drawable = this.f1403a;
        if (drawable != null) {
            if (this.f1406d || this.f1407e) {
                Drawable mutate = DrawableCompat.wrap(drawable).mutate();
                this.f1403a = mutate;
                if (this.f1406d) {
                    DrawableCompat.setTintList(mutate, this.f1404b);
                }
                if (this.f1407e) {
                    DrawableCompat.setTintMode(this.f1403a, this.f1405c);
                }
                if (this.f1403a.isStateful()) {
                    this.f1403a.setState(getDrawableState());
                }
            }
        }
    }

    private void c() {
        Drawable drawable = this.f1408f;
        if (drawable != null) {
            if (this.f1411i || this.f1412j) {
                Drawable mutate = DrawableCompat.wrap(drawable).mutate();
                this.f1408f = mutate;
                if (this.f1411i) {
                    DrawableCompat.setTintList(mutate, this.f1409g);
                }
                if (this.f1412j) {
                    DrawableCompat.setTintMode(this.f1408f, this.f1410h);
                }
                if (this.f1408f.isStateful()) {
                    this.f1408f.setState(getDrawableState());
                }
            }
        }
    }

    private void d() {
        ObjectAnimator objectAnimator = this.f1419o0;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    private void e(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    private static float f(float f4, float f5, float f6) {
        return f4 < f5 ? f5 : f4 > f6 ? f6 : f4;
    }

    @Nullable
    private CharSequence g(@Nullable CharSequence charSequence) {
        TransformationMethod wrapTransformationMethod = getEmojiTextViewHelper().wrapTransformationMethod(this.f1417n0);
        return wrapTransformationMethod != null ? wrapTransformationMethod.getTransformation(charSequence, this) : charSequence;
    }

    @NonNull
    private AppCompatEmojiTextHelper getEmojiTextViewHelper() {
        if (this.f1423q0 == null) {
            this.f1423q0 = new AppCompatEmojiTextHelper(this);
        }
        return this.f1423q0;
    }

    private boolean getTargetCheckedState() {
        return this.f1434z > 0.5f;
    }

    private int getThumbOffset() {
        float f4;
        if (ViewUtils.isLayoutRtl(this)) {
            f4 = 1.0f - this.f1434z;
        } else {
            f4 = this.f1434z;
        }
        return (int) ((f4 * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Rect rect;
        Drawable drawable = this.f1408f;
        if (drawable != null) {
            Rect rect2 = this.f1427s0;
            drawable.getPadding(rect2);
            Drawable drawable2 = this.f1403a;
            if (drawable2 != null) {
                rect = DrawableUtils.getOpticalBounds(drawable2);
            } else {
                rect = DrawableUtils.INSETS_NONE;
            }
            return ((((this.A - this.C) - rect2.left) - rect2.right) - rect.left) - rect.right;
        }
        return 0;
    }

    private boolean h(float f4, float f5) {
        if (this.f1403a == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f1403a.getPadding(this.f1427s0);
        int i2 = this.E;
        int i4 = this.f1429u;
        int i5 = i2 - i4;
        int i6 = (this.D + thumbOffset) - i4;
        Rect rect = this.f1427s0;
        return f4 > ((float) i6) && f4 < ((float) ((((this.C + i6) + rect.left) + rect.right) + i4)) && f5 > ((float) i5) && f5 < ((float) (this.G + i4));
    }

    private Layout i(CharSequence charSequence) {
        TextPaint textPaint = this.H;
        return new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    private void k() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence charSequence = this.f1422q;
            if (charSequence == null) {
                charSequence = getResources().getString(R.string.abc_capital_off);
            }
            ViewCompat.setStateDescription(this, charSequence);
        }
    }

    private void l() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence charSequence = this.f1418o;
            if (charSequence == null) {
                charSequence = getResources().getString(R.string.abc_capital_on);
            }
            ViewCompat.setStateDescription(this, charSequence);
        }
    }

    private void m(int i2, int i4) {
        Typeface typeface;
        if (i2 == 1) {
            typeface = Typeface.SANS_SERIF;
        } else if (i2 != 2) {
            typeface = i2 != 3 ? null : Typeface.MONOSPACE;
        } else {
            typeface = Typeface.SERIF;
        }
        setSwitchTypeface(typeface, i4);
    }

    private void n() {
        if (this.f1425r0 == null && this.f1423q0.isEnabled() && EmojiCompat.isConfigured()) {
            EmojiCompat emojiCompat = EmojiCompat.get();
            int loadState = emojiCompat.getLoadState();
            if (loadState == 3 || loadState == 0) {
                EmojiCompatInitCallback emojiCompatInitCallback = new EmojiCompatInitCallback(this);
                this.f1425r0 = emojiCompatInitCallback;
                emojiCompat.registerInitCallback(emojiCompatInitCallback);
            }
        }
    }

    private void o(MotionEvent motionEvent) {
        this.f1428t = 0;
        boolean z3 = true;
        boolean z4 = motionEvent.getAction() == 1 && isEnabled();
        boolean isChecked = isChecked();
        if (z4) {
            this.f1432x.computeCurrentVelocity(1000);
            float xVelocity = this.f1432x.getXVelocity();
            if (Math.abs(xVelocity) > this.f1433y) {
                if (!ViewUtils.isLayoutRtl(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                    z3 = false;
                }
            } else {
                z3 = getTargetCheckedState();
            }
        } else {
            z3 = isChecked;
        }
        if (z3 != isChecked) {
            playSoundEffect(0);
        }
        setChecked(z3);
        e(motionEvent);
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f1422q = charSequence;
        this.f1424r = g(charSequence);
        this.K = null;
        if (this.f1426s) {
            n();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f1418o = charSequence;
        this.f1420p = g(charSequence);
        this.J = null;
        if (this.f1426s) {
            n();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Rect rect;
        int i2;
        int i4;
        Rect rect2 = this.f1427s0;
        int i5 = this.D;
        int i6 = this.E;
        int i7 = this.F;
        int i8 = this.G;
        int thumbOffset = getThumbOffset() + i5;
        Drawable drawable = this.f1403a;
        if (drawable != null) {
            rect = DrawableUtils.getOpticalBounds(drawable);
        } else {
            rect = DrawableUtils.INSETS_NONE;
        }
        Drawable drawable2 = this.f1408f;
        if (drawable2 != null) {
            drawable2.getPadding(rect2);
            int i9 = rect2.left;
            thumbOffset += i9;
            if (rect != null) {
                int i10 = rect.left;
                if (i10 > i9) {
                    i5 += i10 - i9;
                }
                int i11 = rect.top;
                int i12 = rect2.top;
                i2 = i11 > i12 ? (i11 - i12) + i6 : i6;
                int i13 = rect.right;
                int i14 = rect2.right;
                if (i13 > i14) {
                    i7 -= i13 - i14;
                }
                int i15 = rect.bottom;
                int i16 = rect2.bottom;
                if (i15 > i16) {
                    i4 = i8 - (i15 - i16);
                    this.f1408f.setBounds(i5, i2, i7, i4);
                }
            } else {
                i2 = i6;
            }
            i4 = i8;
            this.f1408f.setBounds(i5, i2, i7, i4);
        }
        Drawable drawable3 = this.f1403a;
        if (drawable3 != null) {
            drawable3.getPadding(rect2);
            int i17 = thumbOffset - rect2.left;
            int i18 = thumbOffset + this.C + rect2.right;
            this.f1403a.setBounds(i17, i6, i18, i8);
            Drawable background = getBackground();
            if (background != null) {
                DrawableCompat.setHotspotBounds(background, i17, i6, i18, i8);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f4, float f5) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f4, f5);
        }
        Drawable drawable = this.f1403a;
        if (drawable != null) {
            DrawableCompat.setHotspot(drawable, f4, f5);
        }
        Drawable drawable2 = this.f1408f;
        if (drawable2 != null) {
            DrawableCompat.setHotspot(drawable2, f4, f5);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1403a;
        boolean z3 = false;
        if (drawable != null && drawable.isStateful()) {
            z3 = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f1408f;
        if (drawable2 != null && drawable2.isStateful()) {
            z3 |= drawable2.setState(drawableState);
        }
        if (z3) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!ViewUtils.isLayoutRtl(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f1415m : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (ViewUtils.isLayoutRtl(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f1415m : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    @Nullable
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.f1426s;
    }

    public boolean getSplitTrack() {
        return this.f1416n;
    }

    public int getSwitchMinWidth() {
        return this.f1414l;
    }

    public int getSwitchPadding() {
        return this.f1415m;
    }

    public CharSequence getTextOff() {
        return this.f1422q;
    }

    public CharSequence getTextOn() {
        return this.f1418o;
    }

    public Drawable getThumbDrawable() {
        return this.f1403a;
    }

    public int getThumbTextPadding() {
        return this.f1413k;
    }

    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f1404b;
    }

    @Nullable
    public PorterDuff.Mode getThumbTintMode() {
        return this.f1405c;
    }

    public Drawable getTrackDrawable() {
        return this.f1408f;
    }

    @Nullable
    public ColorStateList getTrackTintList() {
        return this.f1409g;
    }

    @Nullable
    public PorterDuff.Mode getTrackTintMode() {
        return this.f1410h;
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().isEnabled();
    }

    void j() {
        setTextOnInternal(this.f1418o);
        setTextOffInternal(this.f1422q);
        requestLayout();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1403a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1408f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f1419o0;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f1419o0.end();
        this.f1419o0 = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, C0);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.f1427s0;
        Drawable drawable = this.f1408f;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.E;
        int i4 = this.G;
        int i5 = i2 + rect.top;
        int i6 = i4 - rect.bottom;
        Drawable drawable2 = this.f1403a;
        if (drawable != null) {
            if (this.f1416n && drawable2 != null) {
                Rect opticalBounds = DrawableUtils.getOpticalBounds(drawable2);
                drawable2.copyBounds(rect);
                rect.left += opticalBounds.left;
                rect.right -= opticalBounds.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            } else {
                drawable.draw(canvas);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.J : this.K;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.I;
            if (colorStateList != null) {
                this.H.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.H.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i5 + i6) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(f1400x0);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(f1400x0);
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f1418o : this.f1422q;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int i7;
        int width;
        int i8;
        int i9;
        int paddingTop;
        int i10;
        super.onLayout(z3, i2, i4, i5, i6);
        int i11 = 0;
        if (this.f1403a != null) {
            Rect rect = this.f1427s0;
            Drawable drawable = this.f1408f;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect opticalBounds = DrawableUtils.getOpticalBounds(this.f1403a);
            i7 = Math.max(0, opticalBounds.left - rect.left);
            i11 = Math.max(0, opticalBounds.right - rect.right);
        } else {
            i7 = 0;
        }
        if (ViewUtils.isLayoutRtl(this)) {
            i8 = getPaddingLeft() + i7;
            width = ((this.A + i8) - i7) - i11;
        } else {
            width = (getWidth() - getPaddingRight()) - i11;
            i8 = (width - this.A) + i7 + i11;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            i9 = this.B;
            paddingTop = (((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2) - (i9 / 2);
        } else if (gravity != 80) {
            paddingTop = getPaddingTop();
            i9 = this.B;
        } else {
            i10 = getHeight() - getPaddingBottom();
            paddingTop = i10 - this.B;
            this.D = i8;
            this.E = paddingTop;
            this.G = i10;
            this.F = width;
        }
        i10 = i9 + paddingTop;
        this.D = i8;
        this.E = paddingTop;
        this.G = i10;
        this.F = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i4) {
        int i5;
        int i6;
        if (this.f1426s) {
            if (this.J == null) {
                this.J = i(this.f1420p);
            }
            if (this.K == null) {
                this.K = i(this.f1424r);
            }
        }
        Rect rect = this.f1427s0;
        Drawable drawable = this.f1403a;
        int i7 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i5 = (this.f1403a.getIntrinsicWidth() - rect.left) - rect.right;
            i6 = this.f1403a.getIntrinsicHeight();
        } else {
            i5 = 0;
            i6 = 0;
        }
        this.C = Math.max(this.f1426s ? Math.max(this.J.getWidth(), this.K.getWidth()) + (this.f1413k * 2) : 0, i5);
        Drawable drawable2 = this.f1408f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i7 = this.f1408f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i8 = rect.left;
        int i9 = rect.right;
        Drawable drawable3 = this.f1403a;
        if (drawable3 != null) {
            Rect opticalBounds = DrawableUtils.getOpticalBounds(drawable3);
            i8 = Math.max(i8, opticalBounds.left);
            i9 = Math.max(i9, opticalBounds.right);
        }
        int max = Math.max(this.f1414l, (this.C * 2) + i8 + i9);
        int max2 = Math.max(i7, i6);
        this.A = max;
        this.B = max2;
        super.onMeasure(i2, i4);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f1418o : this.f1422q;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0012, code lost:
        if (r0 != 3) goto L8;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            android.view.VelocityTracker r0 = r6.f1432x
            r0.addMovement(r7)
            int r0 = r7.getActionMasked()
            r1 = 1
            if (r0 == 0) goto L9f
            r2 = 2
            if (r0 == r1) goto L8b
            if (r0 == r2) goto L16
            r3 = 3
            if (r0 == r3) goto L8b
            goto Lb9
        L16:
            int r0 = r6.f1428t
            if (r0 == r1) goto L57
            if (r0 == r2) goto L1e
            goto Lb9
        L1e:
            float r7 = r7.getX()
            int r0 = r6.getThumbScrollRange()
            float r2 = r6.f1430v
            float r2 = r7 - r2
            r3 = 1065353216(0x3f800000, float:1.0)
            r4 = 0
            if (r0 == 0) goto L32
            float r0 = (float) r0
            float r2 = r2 / r0
            goto L3d
        L32:
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L39
            r2 = 1065353216(0x3f800000, float:1.0)
            goto L3d
        L39:
            r0 = -1082130432(0xffffffffbf800000, float:-1.0)
            r2 = -1082130432(0xffffffffbf800000, float:-1.0)
        L3d:
            boolean r0 = androidx.appcompat.widget.ViewUtils.isLayoutRtl(r6)
            if (r0 == 0) goto L44
            float r2 = -r2
        L44:
            float r0 = r6.f1434z
            float r0 = r0 + r2
            float r0 = f(r0, r4, r3)
            float r2 = r6.f1434z
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 == 0) goto L56
            r6.f1430v = r7
            r6.setThumbPosition(r0)
        L56:
            return r1
        L57:
            float r0 = r7.getX()
            float r3 = r7.getY()
            float r4 = r6.f1430v
            float r4 = r0 - r4
            float r4 = java.lang.Math.abs(r4)
            int r5 = r6.f1429u
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 > 0) goto L7d
            float r4 = r6.f1431w
            float r4 = r3 - r4
            float r4 = java.lang.Math.abs(r4)
            int r5 = r6.f1429u
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto Lb9
        L7d:
            r6.f1428t = r2
            android.view.ViewParent r7 = r6.getParent()
            r7.requestDisallowInterceptTouchEvent(r1)
            r6.f1430v = r0
            r6.f1431w = r3
            return r1
        L8b:
            int r0 = r6.f1428t
            if (r0 != r2) goto L96
            r6.o(r7)
            super.onTouchEvent(r7)
            return r1
        L96:
            r0 = 0
            r6.f1428t = r0
            android.view.VelocityTracker r0 = r6.f1432x
            r0.clear()
            goto Lb9
        L9f:
            float r0 = r7.getX()
            float r2 = r7.getY()
            boolean r3 = r6.isEnabled()
            if (r3 == 0) goto Lb9
            boolean r3 = r6.h(r0, r2)
            if (r3 == 0) goto Lb9
            r6.f1428t = r1
            r6.f1430v = r0
            r6.f1431w = r2
        Lb9:
            boolean r7 = super.onTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z3) {
        super.setAllCaps(z3);
        getEmojiTextViewHelper().c(z3);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z3) {
        super.setChecked(z3);
        boolean isChecked = isChecked();
        if (isChecked) {
            l();
        } else {
            k();
        }
        if (getWindowToken() != null && ViewCompat.isLaidOut(this)) {
            a(isChecked);
            return;
        }
        d();
        setThumbPosition(isChecked ? 1.0f : 0.0f);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public void setEmojiCompatEnabled(boolean z3) {
        getEmojiTextViewHelper().d(z3);
        setTextOnInternal(this.f1418o);
        setTextOffInternal(this.f1422q);
        requestLayout();
    }

    @Override // android.widget.TextView
    public void setFilters(@NonNull InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setShowText(boolean z3) {
        if (this.f1426s != z3) {
            this.f1426s = z3;
            requestLayout();
            if (z3) {
                n();
            }
        }
    }

    public void setSplitTrack(boolean z3) {
        this.f1416n = z3;
        invalidate();
    }

    public void setSwitchMinWidth(int i2) {
        this.f1414l = i2;
        requestLayout();
    }

    public void setSwitchPadding(int i2) {
        this.f1415m = i2;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i2) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, i2, R.styleable.TextAppearance);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(R.styleable.TextAppearance_android_textColor);
        if (colorStateList != null) {
            this.I = colorStateList;
        } else {
            this.I = getTextColors();
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, 0);
        if (dimensionPixelSize != 0) {
            float f4 = dimensionPixelSize;
            if (f4 != this.H.getTextSize()) {
                this.H.setTextSize(f4);
                requestLayout();
            }
        }
        m(obtainStyledAttributes.getInt(R.styleable.TextAppearance_android_typeface, -1), obtainStyledAttributes.getInt(R.styleable.TextAppearance_android_textStyle, -1));
        if (obtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false)) {
            this.f1417n0 = new AllCapsTransformationMethod(getContext());
        } else {
            this.f1417n0 = null;
        }
        setTextOnInternal(this.f1418o);
        setTextOffInternal(this.f1422q);
        obtainStyledAttributes.recycle();
    }

    public void setSwitchTypeface(Typeface typeface, int i2) {
        Typeface create;
        if (i2 > 0) {
            if (typeface == null) {
                create = Typeface.defaultFromStyle(i2);
            } else {
                create = Typeface.create(typeface, i2);
            }
            setSwitchTypeface(create);
            int style = ((create != null ? create.getStyle() : 0) ^ (-1)) & i2;
            this.H.setFakeBoldText((style & 1) != 0);
            this.H.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
            return;
        }
        this.H.setFakeBoldText(false);
        this.H.setTextSkewX(0.0f);
        setSwitchTypeface(typeface);
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            return;
        }
        k();
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            l();
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1403a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1403a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    void setThumbPosition(float f4) {
        this.f1434z = f4;
        invalidate();
    }

    public void setThumbResource(int i2) {
        setThumbDrawable(AppCompatResources.getDrawable(getContext(), i2));
    }

    public void setThumbTextPadding(int i2) {
        this.f1413k = i2;
        requestLayout();
    }

    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f1404b = colorStateList;
        this.f1406d = true;
        b();
    }

    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1405c = mode;
        this.f1407e = true;
        b();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1408f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1408f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i2) {
        setTrackDrawable(AppCompatResources.getDrawable(getContext(), i2));
    }

    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.f1409g = colorStateList;
        this.f1411i = true;
        c();
    }

    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1410h = mode;
        this.f1412j = true;
        c();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1403a || drawable == this.f1408f;
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchStyle);
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1404b = null;
        this.f1405c = null;
        this.f1406d = false;
        this.f1407e = false;
        this.f1409g = null;
        this.f1410h = null;
        this.f1411i = false;
        this.f1412j = false;
        this.f1432x = VelocityTracker.obtain();
        this.f1427s0 = new Rect();
        ThemeUtils.checkAppCompatTheme(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.H = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = R.styleable.SwitchCompat;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i2, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.SwitchCompat_android_thumb);
        this.f1403a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(R.styleable.SwitchCompat_track);
        this.f1408f = drawable2;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        setTextOnInternal(obtainStyledAttributes.getText(R.styleable.SwitchCompat_android_textOn));
        setTextOffInternal(obtainStyledAttributes.getText(R.styleable.SwitchCompat_android_textOff));
        this.f1426s = obtainStyledAttributes.getBoolean(R.styleable.SwitchCompat_showText, true);
        this.f1413k = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SwitchCompat_thumbTextPadding, 0);
        this.f1414l = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SwitchCompat_switchMinWidth, 0);
        this.f1415m = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SwitchCompat_switchPadding, 0);
        this.f1416n = obtainStyledAttributes.getBoolean(R.styleable.SwitchCompat_splitTrack, false);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(R.styleable.SwitchCompat_thumbTint);
        if (colorStateList != null) {
            this.f1404b = colorStateList;
            this.f1406d = true;
        }
        PorterDuff.Mode parseTintMode = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(R.styleable.SwitchCompat_thumbTintMode, -1), null);
        if (this.f1405c != parseTintMode) {
            this.f1405c = parseTintMode;
            this.f1407e = true;
        }
        if (this.f1406d || this.f1407e) {
            b();
        }
        ColorStateList colorStateList2 = obtainStyledAttributes.getColorStateList(R.styleable.SwitchCompat_trackTint);
        if (colorStateList2 != null) {
            this.f1409g = colorStateList2;
            this.f1411i = true;
        }
        PorterDuff.Mode parseTintMode2 = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(R.styleable.SwitchCompat_trackTintMode, -1), null);
        if (this.f1410h != parseTintMode2) {
            this.f1410h = parseTintMode2;
            this.f1412j = true;
        }
        if (this.f1411i || this.f1412j) {
            c();
        }
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.SwitchCompat_switchTextAppearance, 0);
        if (resourceId != 0) {
            setSwitchTextAppearance(context, resourceId);
        }
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.f1421p0 = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i2);
        obtainStyledAttributes.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f1429u = viewConfiguration.getScaledTouchSlop();
        this.f1433y = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().b(attributeSet, i2);
        refreshDrawableState();
        setChecked(isChecked());
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.H.getTypeface() == null || this.H.getTypeface().equals(typeface)) && (this.H.getTypeface() != null || typeface == null)) {
            return;
        }
        this.H.setTypeface(typeface);
        requestLayout();
        invalidate();
    }
}
