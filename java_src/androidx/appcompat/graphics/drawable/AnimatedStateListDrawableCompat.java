package androidx.appcompat.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.graphics.drawable.DrawableContainer;
import androidx.appcompat.graphics.drawable.StateListDrawable;
import androidx.appcompat.resources.Compatibility;
import androidx.appcompat.resources.R;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import com.join.mgps.activity.ClassifyAndRankActivity_;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@SuppressLint({"RestrictedAPI"})
/* loaded from: classes.dex */
public class AnimatedStateListDrawableCompat extends StateListDrawable implements TintAwareDrawable {
    private static final String A = "item";
    private static final String B = ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable";
    private static final String C = ": <transition> tag requires 'fromId' & 'toId' attributes";
    private static final String D = ": <item> tag requires a 'drawable' attribute or child tag defining a drawable";

    /* renamed from: y  reason: collision with root package name */
    private static final String f368y = AnimatedStateListDrawableCompat.class.getSimpleName();

    /* renamed from: z  reason: collision with root package name */
    private static final String f369z = "transition";

    /* renamed from: t  reason: collision with root package name */
    private AnimatedStateListState f370t;

    /* renamed from: u  reason: collision with root package name */
    private Transition f371u;

    /* renamed from: v  reason: collision with root package name */
    private int f372v;

    /* renamed from: w  reason: collision with root package name */
    private int f373w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f374x;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AnimatableTransition extends Transition {

        /* renamed from: a  reason: collision with root package name */
        private final Animatable f375a;

        AnimatableTransition(Animatable animatable) {
            super();
            this.f375a = animatable;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void start() {
            this.f375a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void stop() {
            this.f375a.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class AnimatedStateListState extends StateListDrawable.StateListState {
        private static final long M = 4294967296L;
        private static final long N = 8589934592L;
        LongSparseArray<Long> K;
        SparseArrayCompat<Integer> L;

        AnimatedStateListState(@Nullable AnimatedStateListState animatedStateListState, @NonNull AnimatedStateListDrawableCompat animatedStateListDrawableCompat, @Nullable Resources resources) {
            super(animatedStateListState, animatedStateListDrawableCompat, resources);
            if (animatedStateListState != null) {
                this.K = animatedStateListState.K;
                this.L = animatedStateListState.L;
                return;
            }
            this.K = new LongSparseArray<>();
            this.L = new SparseArrayCompat<>();
        }

        private static long o(int i2, int i4) {
            return i4 | (i2 << 32);
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawable.StateListState, androidx.appcompat.graphics.drawable.DrawableContainer.DrawableContainerState
        void g() {
            this.K = this.K.m0clone();
            this.L = this.L.m1clone();
        }

        int m(@NonNull int[] iArr, @NonNull Drawable drawable, int i2) {
            int k4 = super.k(iArr, drawable);
            this.L.put(k4, Integer.valueOf(i2));
            return k4;
        }

        int n(int i2, int i4, @NonNull Drawable drawable, boolean z3) {
            int addChild = super.addChild(drawable);
            long o3 = o(i2, i4);
            long j4 = z3 ? 8589934592L : 0L;
            long j5 = addChild;
            this.K.append(o3, Long.valueOf(j5 | j4));
            if (z3) {
                this.K.append(o(i4, i2), Long.valueOf(4294967296L | j5 | j4));
            }
            return addChild;
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawable.StateListState, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new AnimatedStateListDrawableCompat(this, null);
        }

        int p(int i2) {
            if (i2 < 0) {
                return 0;
            }
            return this.L.get(i2, 0).intValue();
        }

        int q(@NonNull int[] iArr) {
            int l4 = super.l(iArr);
            return l4 >= 0 ? l4 : super.l(StateSet.WILD_CARD);
        }

        int r(int i2, int i4) {
            return (int) this.K.get(o(i2, i4), -1L).longValue();
        }

        boolean s(int i2, int i4) {
            return (this.K.get(o(i2, i4), -1L).longValue() & 4294967296L) != 0;
        }

        boolean t(int i2, int i4) {
            return (this.K.get(o(i2, i4), -1L).longValue() & 8589934592L) != 0;
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawable.StateListState, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new AnimatedStateListDrawableCompat(this, resources);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AnimatedVectorDrawableTransition extends Transition {

        /* renamed from: a  reason: collision with root package name */
        private final AnimatedVectorDrawableCompat f376a;

        AnimatedVectorDrawableTransition(AnimatedVectorDrawableCompat animatedVectorDrawableCompat) {
            super();
            this.f376a = animatedVectorDrawableCompat;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void start() {
            this.f376a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void stop() {
            this.f376a.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AnimationDrawableTransition extends Transition {

        /* renamed from: a  reason: collision with root package name */
        private final ObjectAnimator f377a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f378b;

        AnimationDrawableTransition(AnimationDrawable animationDrawable, boolean z3, boolean z4) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i2 = z3 ? numberOfFrames - 1 : 0;
            int i4 = z3 ? 0 : numberOfFrames - 1;
            FrameInterpolator frameInterpolator = new FrameInterpolator(animationDrawable, z3);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, ClassifyAndRankActivity_.f28569m, i2, i4);
            if (Build.VERSION.SDK_INT >= 18) {
                Compatibility.Api18Impl.setAutoCancel(ofInt, true);
            }
            ofInt.setDuration(frameInterpolator.a());
            ofInt.setInterpolator(frameInterpolator);
            this.f378b = z4;
            this.f377a = ofInt;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public boolean canReverse() {
            return this.f378b;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void reverse() {
            this.f377a.reverse();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void start() {
            this.f377a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public void stop() {
            this.f377a.cancel();
        }
    }

    /* loaded from: classes.dex */
    private static class FrameInterpolator implements TimeInterpolator {

        /* renamed from: a  reason: collision with root package name */
        private int[] f379a;

        /* renamed from: b  reason: collision with root package name */
        private int f380b;

        /* renamed from: c  reason: collision with root package name */
        private int f381c;

        FrameInterpolator(AnimationDrawable animationDrawable, boolean z3) {
            b(animationDrawable, z3);
        }

        int a() {
            return this.f381c;
        }

        int b(AnimationDrawable animationDrawable, boolean z3) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f380b = numberOfFrames;
            int[] iArr = this.f379a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f379a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f379a;
            int i2 = 0;
            for (int i4 = 0; i4 < numberOfFrames; i4++) {
                int duration = animationDrawable.getDuration(z3 ? (numberOfFrames - i4) - 1 : i4);
                iArr2[i4] = duration;
                i2 += duration;
            }
            this.f381c = i2;
            return i2;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f4) {
            int i2 = (int) ((f4 * this.f381c) + 0.5f);
            int i4 = this.f380b;
            int[] iArr = this.f379a;
            int i5 = 0;
            while (i5 < i4 && i2 >= iArr[i5]) {
                i2 -= iArr[i5];
                i5++;
            }
            return (i5 / i4) + (i5 < i4 ? i2 / this.f381c : 0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class Transition {
        private Transition() {
        }

        public boolean canReverse() {
            return false;
        }

        public void reverse() {
        }

        public abstract void start();

        public abstract void stop();
    }

    public AnimatedStateListDrawableCompat() {
        this(null, null);
    }

    @Nullable
    public static AnimatedStateListDrawableCompat create(@NonNull Context context, @DrawableRes int i2, @Nullable Resources.Theme theme) {
        int next;
        try {
            Resources resources = context.getResources();
            XmlResourceParser xml = resources.getXml(i2);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            while (true) {
                next = xml.next();
                if (next == 2 || next == 1) {
                    break;
                }
            }
            if (next == 2) {
                return createFromXmlInner(context, resources, xml, asAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException | XmlPullParserException unused) {
            return null;
        }
    }

    public static AnimatedStateListDrawableCompat createFromXmlInner(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            AnimatedStateListDrawableCompat animatedStateListDrawableCompat = new AnimatedStateListDrawableCompat();
            animatedStateListDrawableCompat.inflate(context, resources, xmlPullParser, attributeSet, theme);
            return animatedStateListDrawableCompat;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    private void s(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth) {
                if (xmlPullParser.getName().equals(A)) {
                    w(context, resources, xmlPullParser, attributeSet, theme);
                } else if (xmlPullParser.getName().equals(f369z)) {
                    x(context, resources, xmlPullParser, attributeSet, theme);
                }
            }
        }
    }

    private void t(TypedArray typedArray) {
        AnimatedStateListState animatedStateListState = this.f370t;
        if (Build.VERSION.SDK_INT >= 21) {
            animatedStateListState.f402d |= Compatibility.Api21Impl.getChangingConfigurations(typedArray);
        }
        animatedStateListState.setVariablePadding(typedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_variablePadding, animatedStateListState.f407i));
        animatedStateListState.setConstantSize(typedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_constantSize, animatedStateListState.f410l));
        animatedStateListState.setEnterFadeDuration(typedArray.getInt(R.styleable.AnimatedStateListDrawableCompat_android_enterFadeDuration, animatedStateListState.A));
        animatedStateListState.setExitFadeDuration(typedArray.getInt(R.styleable.AnimatedStateListDrawableCompat_android_exitFadeDuration, animatedStateListState.B));
        setDither(typedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_dither, animatedStateListState.f422x));
    }

    private void v() {
        onStateChange(getState());
    }

    private int w(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimatedStateListDrawableItem);
        int resourceId = obtainAttributes.getResourceId(R.styleable.AnimatedStateListDrawableItem_android_id, 0);
        int resourceId2 = obtainAttributes.getResourceId(R.styleable.AnimatedStateListDrawableItem_android_drawable, -1);
        Drawable drawable = resourceId2 > 0 ? ResourceManagerInternal.get().getDrawable(context, resourceId2) : null;
        obtainAttributes.recycle();
        int[] m4 = m(attributeSet);
        if (drawable == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next == 2) {
                if (xmlPullParser.getName().equals("vector")) {
                    drawable = VectorDrawableCompat.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
                } else if (Build.VERSION.SDK_INT >= 21) {
                    drawable = Compatibility.Api21Impl.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
                } else {
                    drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                }
            } else {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + D);
            }
        }
        if (drawable != null) {
            return this.f370t.m(m4, drawable, resourceId);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + D);
    }

    private int x(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimatedStateListDrawableTransition);
        int resourceId = obtainAttributes.getResourceId(R.styleable.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = obtainAttributes.getResourceId(R.styleable.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = obtainAttributes.getResourceId(R.styleable.AnimatedStateListDrawableTransition_android_drawable, -1);
        Drawable drawable = resourceId3 > 0 ? ResourceManagerInternal.get().getDrawable(context, resourceId3) : null;
        boolean z3 = obtainAttributes.getBoolean(R.styleable.AnimatedStateListDrawableTransition_android_reversible, false);
        obtainAttributes.recycle();
        if (drawable == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next == 2) {
                if (xmlPullParser.getName().equals("animated-vector")) {
                    drawable = AnimatedVectorDrawableCompat.createFromXmlInner(context, resources, xmlPullParser, attributeSet, theme);
                } else if (Build.VERSION.SDK_INT >= 21) {
                    drawable = Compatibility.Api21Impl.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
                } else {
                    drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                }
            } else {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + B);
            }
        }
        if (drawable == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + B);
        } else if (resourceId != -1 && resourceId2 != -1) {
            return this.f370t.n(resourceId, resourceId2, drawable, z3);
        } else {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + C);
        }
    }

    private boolean y(int i2) {
        int d4;
        int r3;
        Transition animatableTransition;
        Transition transition = this.f371u;
        if (transition != null) {
            if (i2 == this.f372v) {
                return true;
            }
            if (i2 == this.f373w && transition.canReverse()) {
                transition.reverse();
                this.f372v = this.f373w;
                this.f373w = i2;
                return true;
            }
            d4 = this.f372v;
            transition.stop();
        } else {
            d4 = d();
        }
        this.f371u = null;
        this.f373w = -1;
        this.f372v = -1;
        AnimatedStateListState animatedStateListState = this.f370t;
        int p3 = animatedStateListState.p(d4);
        int p4 = animatedStateListState.p(i2);
        if (p4 == 0 || p3 == 0 || (r3 = animatedStateListState.r(p3, p4)) < 0) {
            return false;
        }
        boolean t3 = animatedStateListState.t(p3, p4);
        h(r3);
        Drawable current = getCurrent();
        if (current instanceof AnimationDrawable) {
            animatableTransition = new AnimationDrawableTransition((AnimationDrawable) current, animatedStateListState.s(p3, p4), t3);
        } else if (current instanceof AnimatedVectorDrawableCompat) {
            animatableTransition = new AnimatedVectorDrawableTransition((AnimatedVectorDrawableCompat) current);
        } else {
            if (current instanceof Animatable) {
                animatableTransition = new AnimatableTransition((Animatable) current);
            }
            return false;
        }
        animatableTransition.start();
        this.f371u = animatableTransition;
        this.f373w = d4;
        this.f372v = i2;
        return true;
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable
    public /* bridge */ /* synthetic */ void addState(int[] iArr, Drawable drawable) {
        super.addState(iArr, drawable);
    }

    public <T extends Drawable & Animatable> void addTransition(int i2, int i4, @NonNull T t3, boolean z3) {
        if (t3 != null) {
            this.f370t.n(i2, i4, t3, z3);
            return;
        }
        throw new IllegalArgumentException("Transition drawable must not be null");
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public /* bridge */ /* synthetic */ void applyTheme(@NonNull Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer
    void b() {
        super.b();
        this.f374x = false;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public /* bridge */ /* synthetic */ boolean canApplyTheme() {
        return super.canApplyTheme();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getChangingConfigurations() {
        return super.getChangingConfigurations();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @NonNull
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getHotspotBounds(@NonNull Rect rect) {
        super.getHotspotBounds(rect);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicHeight() {
        return super.getIntrinsicHeight();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicWidth() {
        return super.getIntrinsicWidth();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public /* bridge */ /* synthetic */ void getOutline(@NonNull Outline outline) {
        super.getOutline(outline);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(@NonNull Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer
    void i(@NonNull DrawableContainer.DrawableContainerState drawableContainerState) {
        super.i(drawableContainerState);
        if (drawableContainerState instanceof AnimatedStateListState) {
            this.f370t = (AnimatedStateListState) drawableContainerState;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable
    public void inflate(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.AnimatedStateListDrawableCompat);
        setVisible(obtainAttributes.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_visible, true), true);
        t(obtainAttributes);
        k(resources);
        obtainAttributes.recycle();
        s(context, resources, xmlPullParser, attributeSet, theme);
        v();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void invalidateDrawable(@NonNull Drawable drawable) {
        super.invalidateDrawable(drawable);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean isAutoMirrored() {
        return super.isAutoMirrored();
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        Transition transition = this.f371u;
        if (transition != null) {
            transition.stop();
            this.f371u = null;
            h(this.f372v);
            this.f372v = -1;
            this.f373w = -1;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f374x && super.mutate() == this) {
            this.f370t.g();
            this.f374x = true;
        }
        return this;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean onLayoutDirectionChanged(int i2) {
        return super.onLayoutDirectionChanged(i2);
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int q3 = this.f370t.q(iArr);
        boolean z3 = q3 != d() && (y(q3) || h(q3));
        Drawable current = getCurrent();
        return current != null ? z3 | current.setState(iArr) : z3;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j4) {
        super.scheduleDrawable(drawable, runnable, j4);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i2) {
        super.setAlpha(i2);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAutoMirrored(boolean z3) {
        super.setAutoMirrored(z3);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setDither(boolean z3) {
        super.setDither(z3);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer
    public /* bridge */ /* synthetic */ void setEnterFadeDuration(int i2) {
        super.setEnterFadeDuration(i2);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer
    public /* bridge */ /* synthetic */ void setExitFadeDuration(int i2) {
        super.setExitFadeDuration(i2);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f4, float f5) {
        super.setHotspot(f4, f5);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i2, int i4, int i5, int i6) {
        super.setHotspotBounds(i2, i4, i5, i6);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public /* bridge */ /* synthetic */ void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public /* bridge */ /* synthetic */ void setTintMode(@NonNull PorterDuff.Mode mode) {
        super.setTintMode(mode);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z3, boolean z4) {
        boolean visible = super.setVisible(z3, z4);
        Transition transition = this.f371u;
        if (transition != null && (visible || z4)) {
            if (z3) {
                transition.start();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.graphics.drawable.StateListDrawable
    /* renamed from: u */
    public AnimatedStateListState l() {
        return new AnimatedStateListState(this.f370t, this, null);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        super.unscheduleDrawable(drawable, runnable);
    }

    AnimatedStateListDrawableCompat(@Nullable AnimatedStateListState animatedStateListState, @Nullable Resources resources) {
        super(null);
        this.f372v = -1;
        this.f373w = -1;
        i(new AnimatedStateListState(animatedStateListState, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    public void addState(@NonNull int[] iArr, @NonNull Drawable drawable, int i2) {
        if (drawable != null) {
            this.f370t.m(iArr, drawable, i2);
            onStateChange(getState());
            return;
        }
        throw new IllegalArgumentException("Drawable must not be null");
    }
}
