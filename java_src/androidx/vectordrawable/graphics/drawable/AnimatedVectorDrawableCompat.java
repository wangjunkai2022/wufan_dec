package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes2.dex */
public class AnimatedVectorDrawableCompat extends VectorDrawableCommon implements Animatable2Compat {

    /* renamed from: i  reason: collision with root package name */
    private static final String f7869i = "AnimatedVDCompat";

    /* renamed from: j  reason: collision with root package name */
    private static final String f7870j = "animated-vector";

    /* renamed from: k  reason: collision with root package name */
    private static final String f7871k = "target";

    /* renamed from: l  reason: collision with root package name */
    private static final boolean f7872l = false;

    /* renamed from: b  reason: collision with root package name */
    private AnimatedVectorDrawableCompatState f7873b;

    /* renamed from: c  reason: collision with root package name */
    private Context f7874c;

    /* renamed from: d  reason: collision with root package name */
    private android.animation.ArgbEvaluator f7875d;

    /* renamed from: e  reason: collision with root package name */
    AnimatedVectorDrawableDelegateState f7876e;

    /* renamed from: f  reason: collision with root package name */
    private Animator.AnimatorListener f7877f;

    /* renamed from: g  reason: collision with root package name */
    ArrayList<Animatable2Compat.AnimationCallback> f7878g;

    /* renamed from: h  reason: collision with root package name */
    final Drawable.Callback f7879h;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class AnimatedVectorDrawableCompatState extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        int f7882a;

        /* renamed from: b  reason: collision with root package name */
        VectorDrawableCompat f7883b;

        /* renamed from: c  reason: collision with root package name */
        AnimatorSet f7884c;

        /* renamed from: d  reason: collision with root package name */
        ArrayList<Animator> f7885d;

        /* renamed from: e  reason: collision with root package name */
        ArrayMap<Animator, String> f7886e;

        public AnimatedVectorDrawableCompatState(Context context, AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState, Drawable.Callback callback, Resources resources) {
            if (animatedVectorDrawableCompatState != null) {
                this.f7882a = animatedVectorDrawableCompatState.f7882a;
                VectorDrawableCompat vectorDrawableCompat = animatedVectorDrawableCompatState.f7883b;
                if (vectorDrawableCompat != null) {
                    Drawable.ConstantState constantState = vectorDrawableCompat.getConstantState();
                    if (resources != null) {
                        this.f7883b = (VectorDrawableCompat) constantState.newDrawable(resources);
                    } else {
                        this.f7883b = (VectorDrawableCompat) constantState.newDrawable();
                    }
                    VectorDrawableCompat vectorDrawableCompat2 = (VectorDrawableCompat) this.f7883b.mutate();
                    this.f7883b = vectorDrawableCompat2;
                    vectorDrawableCompat2.setCallback(callback);
                    this.f7883b.setBounds(animatedVectorDrawableCompatState.f7883b.getBounds());
                    this.f7883b.g(false);
                }
                ArrayList<Animator> arrayList = animatedVectorDrawableCompatState.f7885d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f7885d = new ArrayList<>(size);
                    this.f7886e = new ArrayMap<>(size);
                    for (int i2 = 0; i2 < size; i2++) {
                        Animator animator = animatedVectorDrawableCompatState.f7885d.get(i2);
                        Animator clone = animator.clone();
                        String str = animatedVectorDrawableCompatState.f7886e.get(animator);
                        clone.setTarget(this.f7883b.b(str));
                        this.f7885d.add(clone);
                        this.f7886e.put(clone, str);
                    }
                    setupAnimatorSet();
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f7882a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        public void setupAnimatorSet() {
            if (this.f7884c == null) {
                this.f7884c = new AnimatorSet();
            }
            this.f7884c.playTogether(this.f7885d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    AnimatedVectorDrawableCompat() {
        this(null, null, null);
    }

    @RequiresApi(23)
    private static void a(@NonNull AnimatedVectorDrawable animatedVectorDrawable, @NonNull Animatable2Compat.AnimationCallback animationCallback) {
        animatedVectorDrawable.registerAnimationCallback(animationCallback.a());
    }

    private void b() {
        Animator.AnimatorListener animatorListener = this.f7877f;
        if (animatorListener != null) {
            this.f7873b.f7884c.removeListener(animatorListener);
            this.f7877f = null;
        }
    }

    private void c(String str, Animator animator) {
        animator.setTarget(this.f7873b.f7883b.b(str));
        if (Build.VERSION.SDK_INT < 21) {
            d(animator);
        }
        AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState = this.f7873b;
        if (animatedVectorDrawableCompatState.f7885d == null) {
            animatedVectorDrawableCompatState.f7885d = new ArrayList<>();
            this.f7873b.f7886e = new ArrayMap<>();
        }
        this.f7873b.f7885d.add(animator);
        this.f7873b.f7886e.put(animator, str);
    }

    @Nullable
    public static AnimatedVectorDrawableCompat create(@NonNull Context context, @DrawableRes int i2) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context);
            Drawable drawable = ResourcesCompat.getDrawable(context.getResources(), i2, context.getTheme());
            animatedVectorDrawableCompat.f7902a = drawable;
            drawable.setCallback(animatedVectorDrawableCompat.f7879h);
            animatedVectorDrawableCompat.f7876e = new AnimatedVectorDrawableDelegateState(animatedVectorDrawableCompat.f7902a.getConstantState());
            return animatedVectorDrawableCompat;
        }
        try {
            XmlResourceParser xml = context.getResources().getXml(i2);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            while (true) {
                next = xml.next();
                if (next == 2 || next == 1) {
                    break;
                }
            }
            if (next == 2) {
                return createFromXmlInner(context, context.getResources(), xml, asAttributeSet, context.getTheme());
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException | XmlPullParserException unused) {
            return null;
        }
    }

    public static AnimatedVectorDrawableCompat createFromXmlInner(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context);
        animatedVectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, theme);
        return animatedVectorDrawableCompat;
    }

    private void d(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i2 = 0; i2 < childAnimations.size(); i2++) {
                d(childAnimations.get(i2));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f7875d == null) {
                    this.f7875d = new android.animation.ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f7875d);
            }
        }
    }

    @RequiresApi(23)
    private static boolean e(AnimatedVectorDrawable animatedVectorDrawable, Animatable2Compat.AnimationCallback animationCallback) {
        return animatedVectorDrawable.unregisterAnimationCallback(animationCallback.a());
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            DrawableCompat.applyTheme(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return DrawableCompat.canApplyTheme(drawable);
        }
        return false;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).clearAnimationCallbacks();
            return;
        }
        b();
        ArrayList<Animatable2Compat.AnimationCallback> arrayList = this.f7878g;
        if (arrayList == null) {
            return;
        }
        arrayList.clear();
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f7873b.f7883b.draw(canvas);
        if (this.f7873b.f7884c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return DrawableCompat.getAlpha(drawable);
        }
        return this.f7873b.f7883b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.f7873b.f7882a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return DrawableCompat.getColorFilter(drawable);
        }
        return this.f7873b.f7883b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f7902a == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new AnimatedVectorDrawableDelegateState(this.f7902a.getConstantState());
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return this.f7873b.f7883b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return this.f7873b.f7883b.getIntrinsicWidth();
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return this.f7873b.f7883b.getOpacity();
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            DrawableCompat.inflate(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (f7870j.equals(name)) {
                    TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.M);
                    int resourceId = obtainAttributes.getResourceId(0, 0);
                    if (resourceId != 0) {
                        VectorDrawableCompat create = VectorDrawableCompat.create(resources, resourceId, theme);
                        create.g(false);
                        create.setCallback(this.f7879h);
                        VectorDrawableCompat vectorDrawableCompat = this.f7873b.f7883b;
                        if (vectorDrawableCompat != null) {
                            vectorDrawableCompat.setCallback(null);
                        }
                        this.f7873b.f7883b = create;
                    }
                    obtainAttributes.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes2 = resources.obtainAttributes(attributeSet, AndroidResources.O);
                    String string = obtainAttributes2.getString(0);
                    int resourceId2 = obtainAttributes2.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f7874c;
                        if (context != null) {
                            c(string, AnimatorInflaterCompat.loadAnimator(context, resourceId2));
                        } else {
                            obtainAttributes2.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    obtainAttributes2.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f7873b.setupAnimatorSet();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return DrawableCompat.isAutoMirrored(drawable);
        }
        return this.f7873b.f7883b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return ((AnimatedVectorDrawable) drawable).isRunning();
        }
        return this.f7873b.f7884c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return this.f7873b.f7883b.isStateful();
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f7873b.f7883b.setBounds(rect);
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return drawable.setLevel(i2);
        }
        return this.f7873b.f7883b.setLevel(i2);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        return this.f7873b.f7883b.setState(iArr);
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            a((AnimatedVectorDrawable) drawable, animationCallback);
        } else if (animationCallback == null) {
        } else {
            if (this.f7878g == null) {
                this.f7878g = new ArrayList<>();
            }
            if (this.f7878g.contains(animationCallback)) {
                return;
            }
            this.f7878g.add(animationCallback);
            if (this.f7877f == null) {
                this.f7877f = new AnimatorListenerAdapter() { // from class: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ArrayList arrayList = new ArrayList(AnimatedVectorDrawableCompat.this.f7878g);
                        int size = arrayList.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            ((Animatable2Compat.AnimationCallback) arrayList.get(i2)).onAnimationEnd(AnimatedVectorDrawableCompat.this);
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        ArrayList arrayList = new ArrayList(AnimatedVectorDrawableCompat.this.f7878g);
                        int size = arrayList.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            ((Animatable2Compat.AnimationCallback) arrayList.get(i2)).onAnimationStart(AnimatedVectorDrawableCompat.this);
                        }
                    }
                };
            }
            this.f7873b.f7884c.addListener(this.f7877f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else {
            this.f7873b.f7883b.setAlpha(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z3) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            DrawableCompat.setAutoMirrored(drawable, z3);
        } else {
            this.f7873b.f7883b.setAutoMirrored(z3);
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i2) {
        super.setChangingConfigurations(i2);
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i2, PorterDuff.Mode mode) {
        super.setColorFilter(i2, mode);
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z3) {
        super.setFilterBitmap(z3);
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f4, float f5) {
        super.setHotspot(f4, f5);
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i2, int i4, int i5, int i6) {
        super.setHotspotBounds(i2, i4, i5, i6);
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(int i2) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            DrawableCompat.setTint(drawable, i2);
        } else {
            this.f7873b.f7883b.setTint(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
        } else {
            this.f7873b.f7883b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            DrawableCompat.setTintMode(drawable, mode);
        } else {
            this.f7873b.f7883b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z3, boolean z4) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return drawable.setVisible(z3, z4);
        }
        this.f7873b.f7883b.setVisible(z3, z4);
        return super.setVisible(z3, z4);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else if (this.f7873b.f7884c.isStarted()) {
        } else {
            this.f7873b.f7884c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f7873b.f7884c.end();
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            e((AnimatedVectorDrawable) drawable, animationCallback);
        }
        ArrayList<Animatable2Compat.AnimationCallback> arrayList = this.f7878g;
        if (arrayList == null || animationCallback == null) {
            return false;
        }
        boolean remove = arrayList.remove(animationCallback);
        if (this.f7878g.size() == 0) {
            b();
        }
        return remove;
    }

    private AnimatedVectorDrawableCompat(@Nullable Context context) {
        this(context, null, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f7873b.f7883b.setColorFilter(colorFilter);
        }
    }

    @RequiresApi(24)
    /* loaded from: classes2.dex */
    private static class AnimatedVectorDrawableDelegateState extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        private final Drawable.ConstantState f7887a;

        public AnimatedVectorDrawableDelegateState(Drawable.ConstantState constantState) {
            this.f7887a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f7887a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f7887a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            Drawable newDrawable = this.f7887a.newDrawable();
            animatedVectorDrawableCompat.f7902a = newDrawable;
            newDrawable.setCallback(animatedVectorDrawableCompat.f7879h);
            return animatedVectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            Drawable newDrawable = this.f7887a.newDrawable(resources);
            animatedVectorDrawableCompat.f7902a = newDrawable;
            newDrawable.setCallback(animatedVectorDrawableCompat.f7879h);
            return animatedVectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            Drawable newDrawable = this.f7887a.newDrawable(resources, theme);
            animatedVectorDrawableCompat.f7902a = newDrawable;
            newDrawable.setCallback(animatedVectorDrawableCompat.f7879h);
            return animatedVectorDrawableCompat;
        }
    }

    private AnimatedVectorDrawableCompat(@Nullable Context context, @Nullable AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState, @Nullable Resources resources) {
        this.f7875d = null;
        this.f7877f = null;
        this.f7878g = null;
        Drawable.Callback callback = new Drawable.Callback() { // from class: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.1
            @Override // android.graphics.drawable.Drawable.Callback
            public void invalidateDrawable(Drawable drawable) {
                AnimatedVectorDrawableCompat.this.invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void scheduleDrawable(Drawable drawable, Runnable runnable, long j4) {
                AnimatedVectorDrawableCompat.this.scheduleSelf(runnable, j4);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                AnimatedVectorDrawableCompat.this.unscheduleSelf(runnable);
            }
        };
        this.f7879h = callback;
        this.f7874c = context;
        if (animatedVectorDrawableCompatState != null) {
            this.f7873b = animatedVectorDrawableCompatState;
        } else {
            this.f7873b = new AnimatedVectorDrawableCompatState(context, animatedVectorDrawableCompatState, callback, resources);
        }
    }

    public static void clearAnimationCallbacks(Drawable drawable) {
        if (drawable instanceof Animatable) {
            if (Build.VERSION.SDK_INT >= 24) {
                ((AnimatedVectorDrawable) drawable).clearAnimationCallbacks();
            } else {
                ((AnimatedVectorDrawableCompat) drawable).clearAnimationCallbacks();
            }
        }
    }

    public static boolean unregisterAnimationCallback(Drawable drawable, Animatable2Compat.AnimationCallback animationCallback) {
        if (drawable == null || animationCallback == null || !(drawable instanceof Animatable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            return e((AnimatedVectorDrawable) drawable, animationCallback);
        }
        return ((AnimatedVectorDrawableCompat) drawable).unregisterAnimationCallback(animationCallback);
    }

    public static void registerAnimationCallback(Drawable drawable, Animatable2Compat.AnimationCallback animationCallback) {
        if (drawable == null || animationCallback == null || !(drawable instanceof Animatable)) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            a((AnimatedVectorDrawable) drawable, animationCallback);
        } else {
            ((AnimatedVectorDrawableCompat) drawable).registerAnimationCallback(animationCallback);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
