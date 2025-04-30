package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.appcompat.resources.Compatibility;
import androidx.appcompat.resources.R;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.collection.SparseArrayCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class ResourceManagerInternal {

    /* renamed from: h  reason: collision with root package name */
    private static final String f1274h = "ResourceManagerInternal";

    /* renamed from: i  reason: collision with root package name */
    private static final boolean f1275i = false;

    /* renamed from: k  reason: collision with root package name */
    private static final String f1277k = "appcompat_skip_skip";

    /* renamed from: l  reason: collision with root package name */
    private static final String f1278l = "android.graphics.drawable.VectorDrawable";

    /* renamed from: m  reason: collision with root package name */
    private static ResourceManagerInternal f1279m;

    /* renamed from: a  reason: collision with root package name */
    private WeakHashMap<Context, SparseArrayCompat<ColorStateList>> f1281a;

    /* renamed from: b  reason: collision with root package name */
    private SimpleArrayMap<String, InflateDelegate> f1282b;

    /* renamed from: c  reason: collision with root package name */
    private SparseArrayCompat<String> f1283c;

    /* renamed from: d  reason: collision with root package name */
    private final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> f1284d = new WeakHashMap<>(0);

    /* renamed from: e  reason: collision with root package name */
    private TypedValue f1285e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f1286f;

    /* renamed from: g  reason: collision with root package name */
    private ResourceManagerHooks f1287g;

    /* renamed from: j  reason: collision with root package name */
    private static final PorterDuff.Mode f1276j = PorterDuff.Mode.SRC_IN;

    /* renamed from: n  reason: collision with root package name */
    private static final ColorFilterLruCache f1280n = new ColorFilterLruCache(6);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class AsldcInflateDelegate implements InflateDelegate {
        AsldcInflateDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedStateListDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AvdcInflateDelegate implements InflateDelegate {
        AvdcInflateDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedVectorDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
        public ColorFilterLruCache(int i2) {
            super(i2);
        }

        private static int e(int i2, PorterDuff.Mode mode) {
            return ((i2 + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter f(int i2, PorterDuff.Mode mode) {
            return get(Integer.valueOf(e(i2, mode)));
        }

        PorterDuffColorFilter g(int i2, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(e(i2, mode)), porterDuffColorFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class DrawableDelegate implements InflateDelegate {
        DrawableDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) DrawableDelegate.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    if (Build.VERSION.SDK_INT >= 21) {
                        Compatibility.Api21Impl.inflate(drawable, context.getResources(), xmlPullParser, attributeSet, theme);
                    } else {
                        drawable.inflate(context.getResources(), xmlPullParser, attributeSet);
                    }
                    return drawable;
                } catch (Exception unused) {
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface InflateDelegate {
        Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public interface ResourceManagerHooks {
        @Nullable
        Drawable createDrawableFor(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, @DrawableRes int i2);

        @Nullable
        ColorStateList getTintListForDrawableRes(@NonNull Context context, @DrawableRes int i2);

        @Nullable
        PorterDuff.Mode getTintModeForDrawableRes(int i2);

        boolean tintDrawable(@NonNull Context context, @DrawableRes int i2, @NonNull Drawable drawable);

        boolean tintDrawableUsingColorFilter(@NonNull Context context, @DrawableRes int i2, @NonNull Drawable drawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class VdcInflateDelegate implements InflateDelegate {
        VdcInflateDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return VectorDrawableCompat.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    private void a(@NonNull String str, @NonNull InflateDelegate inflateDelegate) {
        if (this.f1282b == null) {
            this.f1282b = new SimpleArrayMap<>();
        }
        this.f1282b.put(str, inflateDelegate);
    }

    private synchronized boolean b(@NonNull Context context, long j4, @NonNull Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.f1284d.get(context);
            if (longSparseArray == null) {
                longSparseArray = new LongSparseArray<>();
                this.f1284d.put(context, longSparseArray);
            }
            longSparseArray.put(j4, new WeakReference<>(constantState));
            return true;
        }
        return false;
    }

    private void c(@NonNull Context context, @DrawableRes int i2, @NonNull ColorStateList colorStateList) {
        if (this.f1281a == null) {
            this.f1281a = new WeakHashMap<>();
        }
        SparseArrayCompat<ColorStateList> sparseArrayCompat = this.f1281a.get(context);
        if (sparseArrayCompat == null) {
            sparseArrayCompat = new SparseArrayCompat<>();
            this.f1281a.put(context, sparseArrayCompat);
        }
        sparseArrayCompat.append(i2, colorStateList);
    }

    private void d(@NonNull Context context) {
        if (this.f1286f) {
            return;
        }
        this.f1286f = true;
        Drawable drawable = getDrawable(context, R.drawable.abc_vector_test);
        if (drawable == null || !n(drawable)) {
            this.f1286f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private static long e(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    private Drawable f(@NonNull Context context, @DrawableRes int i2) {
        if (this.f1285e == null) {
            this.f1285e = new TypedValue();
        }
        TypedValue typedValue = this.f1285e;
        context.getResources().getValue(i2, typedValue, true);
        long e4 = e(typedValue);
        Drawable h4 = h(context, e4);
        if (h4 != null) {
            return h4;
        }
        ResourceManagerHooks resourceManagerHooks = this.f1287g;
        Drawable createDrawableFor = resourceManagerHooks == null ? null : resourceManagerHooks.createDrawableFor(this, context, i2);
        if (createDrawableFor != null) {
            createDrawableFor.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, e4, createDrawableFor);
        }
        return createDrawableFor;
    }

    private static PorterDuffColorFilter g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized ResourceManagerInternal get() {
        ResourceManagerInternal resourceManagerInternal;
        synchronized (ResourceManagerInternal.class) {
            if (f1279m == null) {
                ResourceManagerInternal resourceManagerInternal2 = new ResourceManagerInternal();
                f1279m = resourceManagerInternal2;
                m(resourceManagerInternal2);
            }
            resourceManagerInternal = f1279m;
        }
        return resourceManagerInternal;
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter f4;
        synchronized (ResourceManagerInternal.class) {
            ColorFilterLruCache colorFilterLruCache = f1280n;
            f4 = colorFilterLruCache.f(i2, mode);
            if (f4 == null) {
                f4 = new PorterDuffColorFilter(i2, mode);
                colorFilterLruCache.g(i2, mode, f4);
            }
        }
        return f4;
    }

    private synchronized Drawable h(@NonNull Context context, long j4) {
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.f1284d.get(context);
        if (longSparseArray == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> weakReference = longSparseArray.get(j4);
        if (weakReference != null) {
            Drawable.ConstantState constantState = weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            longSparseArray.remove(j4);
        }
        return null;
    }

    private ColorStateList k(@NonNull Context context, @DrawableRes int i2) {
        SparseArrayCompat<ColorStateList> sparseArrayCompat;
        WeakHashMap<Context, SparseArrayCompat<ColorStateList>> weakHashMap = this.f1281a;
        if (weakHashMap == null || (sparseArrayCompat = weakHashMap.get(context)) == null) {
            return null;
        }
        return sparseArrayCompat.get(i2);
    }

    private static void m(@NonNull ResourceManagerInternal resourceManagerInternal) {
        if (Build.VERSION.SDK_INT < 24) {
            resourceManagerInternal.a("vector", new VdcInflateDelegate());
            resourceManagerInternal.a("animated-vector", new AvdcInflateDelegate());
            resourceManagerInternal.a("animated-selector", new AsldcInflateDelegate());
            resourceManagerInternal.a("drawable", new DrawableDelegate());
        }
    }

    private static boolean n(@NonNull Drawable drawable) {
        return (drawable instanceof VectorDrawableCompat) || f1278l.equals(drawable.getClass().getName());
    }

    private Drawable o(@NonNull Context context, @DrawableRes int i2) {
        int next;
        SimpleArrayMap<String, InflateDelegate> simpleArrayMap = this.f1282b;
        if (simpleArrayMap == null || simpleArrayMap.isEmpty()) {
            return null;
        }
        SparseArrayCompat<String> sparseArrayCompat = this.f1283c;
        if (sparseArrayCompat != null) {
            String str = sparseArrayCompat.get(i2);
            if (f1277k.equals(str) || (str != null && this.f1282b.get(str) == null)) {
                return null;
            }
        } else {
            this.f1283c = new SparseArrayCompat<>();
        }
        if (this.f1285e == null) {
            this.f1285e = new TypedValue();
        }
        TypedValue typedValue = this.f1285e;
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        long e4 = e(typedValue);
        Drawable h4 = h(context, e4);
        if (h4 != null) {
            return h4;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i2);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                while (true) {
                    next = xml.next();
                    if (next == 2 || next == 1) {
                        break;
                    }
                }
                if (next == 2) {
                    String name = xml.getName();
                    this.f1283c.append(i2, name);
                    InflateDelegate inflateDelegate = this.f1282b.get(name);
                    if (inflateDelegate != null) {
                        h4 = inflateDelegate.createFromXmlInner(context, xml, asAttributeSet, context.getTheme());
                    }
                    if (h4 != null) {
                        h4.setChangingConfigurations(typedValue.changingConfigurations);
                        b(context, e4, h4);
                    }
                } else {
                    throw new XmlPullParserException("No start tag found");
                }
            } catch (Exception unused) {
            }
        }
        if (h4 == null) {
            this.f1283c.append(i2, f1277k);
        }
        return h4;
    }

    private Drawable q(@NonNull Context context, @DrawableRes int i2, boolean z3, @NonNull Drawable drawable) {
        ColorStateList j4 = j(context, i2);
        if (j4 != null) {
            if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable wrap = DrawableCompat.wrap(drawable);
            DrawableCompat.setTintList(wrap, j4);
            PorterDuff.Mode l4 = l(i2);
            if (l4 != null) {
                DrawableCompat.setTintMode(wrap, l4);
                return wrap;
            }
            return wrap;
        }
        ResourceManagerHooks resourceManagerHooks = this.f1287g;
        if ((resourceManagerHooks == null || !resourceManagerHooks.tintDrawable(context, i2, drawable)) && !s(context, i2, drawable) && z3) {
            return null;
        }
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void r(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        if (!DrawableUtils.canSafelyMutateDrawable(drawable) || drawable.mutate() == drawable) {
            boolean z3 = tintInfo.mHasTintList;
            if (!z3 && !tintInfo.mHasTintMode) {
                drawable.clearColorFilter();
            } else {
                drawable.setColorFilter(g(z3 ? tintInfo.mTintList : null, tintInfo.mHasTintMode ? tintInfo.mTintMode : f1276j, iArr));
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    public synchronized Drawable getDrawable(@NonNull Context context, @DrawableRes int i2) {
        return i(context, i2, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable i(@NonNull Context context, @DrawableRes int i2, boolean z3) {
        Drawable o3;
        d(context);
        o3 = o(context, i2);
        if (o3 == null) {
            o3 = f(context, i2);
        }
        if (o3 == null) {
            o3 = ContextCompat.getDrawable(context, i2);
        }
        if (o3 != null) {
            o3 = q(context, i2, z3, o3);
        }
        if (o3 != null) {
            DrawableUtils.a(o3);
        }
        return o3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ColorStateList j(@NonNull Context context, @DrawableRes int i2) {
        ColorStateList k4;
        k4 = k(context, i2);
        if (k4 == null) {
            ResourceManagerHooks resourceManagerHooks = this.f1287g;
            k4 = resourceManagerHooks == null ? null : resourceManagerHooks.getTintListForDrawableRes(context, i2);
            if (k4 != null) {
                c(context, i2, k4);
            }
        }
        return k4;
    }

    PorterDuff.Mode l(int i2) {
        ResourceManagerHooks resourceManagerHooks = this.f1287g;
        if (resourceManagerHooks == null) {
            return null;
        }
        return resourceManagerHooks.getTintModeForDrawableRes(i2);
    }

    public synchronized void onConfigurationChanged(@NonNull Context context) {
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.f1284d.get(context);
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable p(@NonNull Context context, @NonNull VectorEnabledTintResources vectorEnabledTintResources, @DrawableRes int i2) {
        Drawable o3 = o(context, i2);
        if (o3 == null) {
            o3 = vectorEnabledTintResources.a(i2);
        }
        if (o3 != null) {
            return q(context, i2, false, o3);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean s(@NonNull Context context, @DrawableRes int i2, @NonNull Drawable drawable) {
        ResourceManagerHooks resourceManagerHooks = this.f1287g;
        return resourceManagerHooks != null && resourceManagerHooks.tintDrawableUsingColorFilter(context, i2, drawable);
    }

    public synchronized void setHooks(ResourceManagerHooks resourceManagerHooks) {
        this.f1287g = resourceManagerHooks;
    }
}
