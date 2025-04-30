package androidx.vectordrawable.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import androidx.core.graphics.drawable.DrawableCompat;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes2.dex */
public class VectorDrawableCompat extends VectorDrawableCommon {

    /* renamed from: k  reason: collision with root package name */
    static final String f7903k = "VectorDrawableCompat";

    /* renamed from: l  reason: collision with root package name */
    static final PorterDuff.Mode f7904l = PorterDuff.Mode.SRC_IN;

    /* renamed from: m  reason: collision with root package name */
    private static final String f7905m = "clip-path";

    /* renamed from: n  reason: collision with root package name */
    private static final String f7906n = "group";

    /* renamed from: o  reason: collision with root package name */
    private static final String f7907o = "path";

    /* renamed from: p  reason: collision with root package name */
    private static final String f7908p = "vector";

    /* renamed from: q  reason: collision with root package name */
    private static final int f7909q = 0;

    /* renamed from: r  reason: collision with root package name */
    private static final int f7910r = 1;

    /* renamed from: s  reason: collision with root package name */
    private static final int f7911s = 2;

    /* renamed from: t  reason: collision with root package name */
    private static final int f7912t = 0;

    /* renamed from: u  reason: collision with root package name */
    private static final int f7913u = 1;

    /* renamed from: v  reason: collision with root package name */
    private static final int f7914v = 2;

    /* renamed from: w  reason: collision with root package name */
    private static final int f7915w = 2048;

    /* renamed from: x  reason: collision with root package name */
    private static final boolean f7916x = false;

    /* renamed from: b  reason: collision with root package name */
    private VectorDrawableCompatState f7917b;

    /* renamed from: c  reason: collision with root package name */
    private PorterDuffColorFilter f7918c;

    /* renamed from: d  reason: collision with root package name */
    private ColorFilter f7919d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f7920e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f7921f;

    /* renamed from: g  reason: collision with root package name */
    private Drawable.ConstantState f7922g;

    /* renamed from: h  reason: collision with root package name */
    private final float[] f7923h;

    /* renamed from: i  reason: collision with root package name */
    private final Matrix f7924i;

    /* renamed from: j  reason: collision with root package name */
    private final Rect f7925j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class VClipPath extends VPath {
        VClipPath() {
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f7953b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f7952a = PathParser.createNodesFromPathData(string2);
            }
            this.f7954c = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
                TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.I);
                a(obtainAttributes, xmlPullParser);
                obtainAttributes.recycle();
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VPath
        public boolean isClipPath() {
            return true;
        }

        VClipPath(VClipPath vClipPath) {
            super(vClipPath);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class VObject {
        private VObject() {
        }

        public boolean isStateful() {
            return false;
        }

        public boolean onStateChanged(int[] iArr) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class VectorDrawableCompatState extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        int f7973a;

        /* renamed from: b  reason: collision with root package name */
        VPathRenderer f7974b;

        /* renamed from: c  reason: collision with root package name */
        ColorStateList f7975c;

        /* renamed from: d  reason: collision with root package name */
        PorterDuff.Mode f7976d;

        /* renamed from: e  reason: collision with root package name */
        boolean f7977e;

        /* renamed from: f  reason: collision with root package name */
        Bitmap f7978f;

        /* renamed from: g  reason: collision with root package name */
        int[] f7979g;

        /* renamed from: h  reason: collision with root package name */
        ColorStateList f7980h;

        /* renamed from: i  reason: collision with root package name */
        PorterDuff.Mode f7981i;

        /* renamed from: j  reason: collision with root package name */
        int f7982j;

        /* renamed from: k  reason: collision with root package name */
        boolean f7983k;

        /* renamed from: l  reason: collision with root package name */
        boolean f7984l;

        /* renamed from: m  reason: collision with root package name */
        Paint f7985m;

        public VectorDrawableCompatState(VectorDrawableCompatState vectorDrawableCompatState) {
            this.f7975c = null;
            this.f7976d = VectorDrawableCompat.f7904l;
            if (vectorDrawableCompatState != null) {
                this.f7973a = vectorDrawableCompatState.f7973a;
                VPathRenderer vPathRenderer = new VPathRenderer(vectorDrawableCompatState.f7974b);
                this.f7974b = vPathRenderer;
                if (vectorDrawableCompatState.f7974b.f7961e != null) {
                    vPathRenderer.f7961e = new Paint(vectorDrawableCompatState.f7974b.f7961e);
                }
                if (vectorDrawableCompatState.f7974b.f7960d != null) {
                    this.f7974b.f7960d = new Paint(vectorDrawableCompatState.f7974b.f7960d);
                }
                this.f7975c = vectorDrawableCompatState.f7975c;
                this.f7976d = vectorDrawableCompatState.f7976d;
                this.f7977e = vectorDrawableCompatState.f7977e;
            }
        }

        public boolean canReuseBitmap(int i2, int i4) {
            return i2 == this.f7978f.getWidth() && i4 == this.f7978f.getHeight();
        }

        public boolean canReuseCache() {
            return !this.f7984l && this.f7980h == this.f7975c && this.f7981i == this.f7976d && this.f7983k == this.f7977e && this.f7982j == this.f7974b.getRootAlpha();
        }

        public void createCachedBitmapIfNeeded(int i2, int i4) {
            if (this.f7978f == null || !canReuseBitmap(i2, i4)) {
                this.f7978f = Bitmap.createBitmap(i2, i4, Bitmap.Config.ARGB_8888);
                this.f7984l = true;
            }
        }

        public void drawCachedBitmapWithRootAlpha(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f7978f, (Rect) null, rect, getPaint(colorFilter));
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f7973a;
        }

        public Paint getPaint(ColorFilter colorFilter) {
            if (hasTranslucentRoot() || colorFilter != null) {
                if (this.f7985m == null) {
                    Paint paint = new Paint();
                    this.f7985m = paint;
                    paint.setFilterBitmap(true);
                }
                this.f7985m.setAlpha(this.f7974b.getRootAlpha());
                this.f7985m.setColorFilter(colorFilter);
                return this.f7985m;
            }
            return null;
        }

        public boolean hasTranslucentRoot() {
            return this.f7974b.getRootAlpha() < 255;
        }

        public boolean isStateful() {
            return this.f7974b.isStateful();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new VectorDrawableCompat(this);
        }

        public boolean onStateChanged(int[] iArr) {
            boolean onStateChanged = this.f7974b.onStateChanged(iArr);
            this.f7984l |= onStateChanged;
            return onStateChanged;
        }

        public void updateCacheStates() {
            this.f7980h = this.f7975c;
            this.f7981i = this.f7976d;
            this.f7982j = this.f7974b.getRootAlpha();
            this.f7983k = this.f7977e;
            this.f7984l = false;
        }

        public void updateCachedBitmap(int i2, int i4) {
            this.f7978f.eraseColor(0);
            this.f7974b.draw(new Canvas(this.f7978f), i2, i4, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new VectorDrawableCompat(this);
        }

        public VectorDrawableCompatState() {
            this.f7975c = null;
            this.f7976d = VectorDrawableCompat.f7904l;
            this.f7974b = new VPathRenderer();
        }
    }

    VectorDrawableCompat() {
        this.f7921f = true;
        this.f7923h = new float[9];
        this.f7924i = new Matrix();
        this.f7925j = new Rect();
        this.f7917b = new VectorDrawableCompatState();
    }

    static int a(int i2, float f4) {
        return (i2 & 16777215) | (((int) (Color.alpha(i2) * f4)) << 24);
    }

    private void c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableCompatState vectorDrawableCompatState = this.f7917b;
        VPathRenderer vPathRenderer = vectorDrawableCompatState.f7974b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(vPathRenderer.f7964h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z3 = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                VGroup vGroup = (VGroup) arrayDeque.peek();
                if (f7907o.equals(name)) {
                    VFullPath vFullPath = new VFullPath();
                    vFullPath.inflate(resources, attributeSet, theme, xmlPullParser);
                    vGroup.f7939b.add(vFullPath);
                    if (vFullPath.getPathName() != null) {
                        vPathRenderer.f7972p.put(vFullPath.getPathName(), vFullPath);
                    }
                    z3 = false;
                    vectorDrawableCompatState.f7973a = vFullPath.f7955d | vectorDrawableCompatState.f7973a;
                } else if (f7905m.equals(name)) {
                    VClipPath vClipPath = new VClipPath();
                    vClipPath.inflate(resources, attributeSet, theme, xmlPullParser);
                    vGroup.f7939b.add(vClipPath);
                    if (vClipPath.getPathName() != null) {
                        vPathRenderer.f7972p.put(vClipPath.getPathName(), vClipPath);
                    }
                    vectorDrawableCompatState.f7973a = vClipPath.f7955d | vectorDrawableCompatState.f7973a;
                } else if (f7906n.equals(name)) {
                    VGroup vGroup2 = new VGroup();
                    vGroup2.inflate(resources, attributeSet, theme, xmlPullParser);
                    vGroup.f7939b.add(vGroup2);
                    arrayDeque.push(vGroup2);
                    if (vGroup2.getGroupName() != null) {
                        vPathRenderer.f7972p.put(vGroup2.getGroupName(), vGroup2);
                    }
                    vectorDrawableCompatState.f7973a = vGroup2.f7948k | vectorDrawableCompatState.f7973a;
                }
            } else if (eventType == 3 && f7906n.equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z3) {
            throw new XmlPullParserException("no path defined");
        }
    }

    @Nullable
    public static VectorDrawableCompat create(@NonNull Resources resources, @DrawableRes int i2, @Nullable Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f7902a = ResourcesCompat.getDrawable(resources, i2, theme);
            vectorDrawableCompat.f7922g = new VectorDrawableDelegateState(vectorDrawableCompat.f7902a.getConstantState());
            return vectorDrawableCompat;
        }
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
                return createFromXmlInner(resources, (XmlPullParser) xml, asAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException | XmlPullParserException unused) {
            return null;
        }
    }

    public static VectorDrawableCompat createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
        vectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, theme);
        return vectorDrawableCompat;
    }

    private boolean d() {
        return Build.VERSION.SDK_INT >= 17 && isAutoMirrored() && DrawableCompat.getLayoutDirection(this) == 1;
    }

    private static PorterDuff.Mode e(int i2, PorterDuff.Mode mode) {
        if (i2 != 3) {
            if (i2 != 5) {
                if (i2 != 9) {
                    switch (i2) {
                        case 14:
                            return PorterDuff.Mode.MULTIPLY;
                        case 15:
                            return PorterDuff.Mode.SCREEN;
                        case 16:
                            return PorterDuff.Mode.ADD;
                        default:
                            return mode;
                    }
                }
                return PorterDuff.Mode.SRC_ATOP;
            }
            return PorterDuff.Mode.SRC_IN;
        }
        return PorterDuff.Mode.SRC_OVER;
    }

    private void f(VGroup vGroup, int i2) {
        String str = "";
        for (int i4 = 0; i4 < i2; i4++) {
            str = str + "    ";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("current group is :");
        sb.append(vGroup.getGroupName());
        sb.append(" rotation is ");
        sb.append(vGroup.f7940c);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("matrix is :");
        sb2.append(vGroup.getLocalMatrix().toString());
        for (int i5 = 0; i5 < vGroup.f7939b.size(); i5++) {
            VObject vObject = vGroup.f7939b.get(i5);
            if (vObject instanceof VGroup) {
                f((VGroup) vObject, i2 + 1);
            } else {
                ((VPath) vObject).printVPath(i2 + 1);
            }
        }
    }

    private void h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        VectorDrawableCompatState vectorDrawableCompatState = this.f7917b;
        VPathRenderer vPathRenderer = vectorDrawableCompatState.f7974b;
        vectorDrawableCompatState.f7976d = e(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList namedColorStateList = TypedArrayUtils.getNamedColorStateList(typedArray, xmlPullParser, theme, "tint", 1);
        if (namedColorStateList != null) {
            vectorDrawableCompatState.f7975c = namedColorStateList;
        }
        vectorDrawableCompatState.f7977e = TypedArrayUtils.getNamedBoolean(typedArray, xmlPullParser, "autoMirrored", 5, vectorDrawableCompatState.f7977e);
        vPathRenderer.f7967k = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "viewportWidth", 7, vPathRenderer.f7967k);
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "viewportHeight", 8, vPathRenderer.f7968l);
        vPathRenderer.f7968l = namedFloat;
        if (vPathRenderer.f7967k <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        } else if (namedFloat > 0.0f) {
            vPathRenderer.f7965i = typedArray.getDimension(3, vPathRenderer.f7965i);
            float dimension = typedArray.getDimension(2, vPathRenderer.f7966j);
            vPathRenderer.f7966j = dimension;
            if (vPathRenderer.f7965i <= 0.0f) {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
            } else if (dimension > 0.0f) {
                vPathRenderer.setAlpha(TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "alpha", 4, vPathRenderer.getAlpha()));
                String string = typedArray.getString(0);
                if (string != null) {
                    vPathRenderer.f7970n = string;
                    vPathRenderer.f7972p.put(string, vPathRenderer);
                }
            } else {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
            }
        } else {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object b(String str) {
        return this.f7917b.f7974b.f7972p.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            DrawableCompat.canApplyTheme(drawable);
            return false;
        }
        return false;
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
        copyBounds(this.f7925j);
        if (this.f7925j.width() <= 0 || this.f7925j.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f7919d;
        if (colorFilter == null) {
            colorFilter = this.f7918c;
        }
        canvas.getMatrix(this.f7924i);
        this.f7924i.getValues(this.f7923h);
        float abs = Math.abs(this.f7923h[0]);
        float abs2 = Math.abs(this.f7923h[4]);
        float abs3 = Math.abs(this.f7923h[1]);
        float abs4 = Math.abs(this.f7923h[3]);
        if (abs3 != 0.0f || abs4 != 0.0f) {
            abs = 1.0f;
            abs2 = 1.0f;
        }
        int min = Math.min(2048, (int) (this.f7925j.width() * abs));
        int min2 = Math.min(2048, (int) (this.f7925j.height() * abs2));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        Rect rect = this.f7925j;
        canvas.translate(rect.left, rect.top);
        if (d()) {
            canvas.translate(this.f7925j.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.f7925j.offsetTo(0, 0);
        this.f7917b.createCachedBitmapIfNeeded(min, min2);
        if (!this.f7921f) {
            this.f7917b.updateCachedBitmap(min, min2);
        } else if (!this.f7917b.canReuseCache()) {
            this.f7917b.updateCachedBitmap(min, min2);
            this.f7917b.updateCacheStates();
        }
        this.f7917b.drawCachedBitmapWithRootAlpha(canvas, colorFilter, this.f7925j);
        canvas.restoreToCount(save);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(boolean z3) {
        this.f7921f = z3;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return DrawableCompat.getAlpha(drawable);
        }
        return this.f7917b.f7974b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.f7917b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return DrawableCompat.getColorFilter(drawable);
        }
        return this.f7919d;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f7902a != null && Build.VERSION.SDK_INT >= 24) {
            return new VectorDrawableDelegateState(this.f7902a.getConstantState());
        }
        this.f7917b.f7973a = getChangingConfigurations();
        return this.f7917b;
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
        return (int) this.f7917b.f7974b.f7966j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return (int) this.f7917b.f7974b.f7965i;
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
        return -3;
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public float getPixelSize() {
        VPathRenderer vPathRenderer;
        VectorDrawableCompatState vectorDrawableCompatState = this.f7917b;
        if (vectorDrawableCompatState == null || (vPathRenderer = vectorDrawableCompatState.f7974b) == null) {
            return 1.0f;
        }
        float f4 = vPathRenderer.f7965i;
        if (f4 != 0.0f) {
            float f5 = vPathRenderer.f7966j;
            if (f5 != 0.0f) {
                float f6 = vPathRenderer.f7968l;
                if (f6 != 0.0f) {
                    float f7 = vPathRenderer.f7967k;
                    if (f7 == 0.0f) {
                        return 1.0f;
                    }
                    return Math.min(f7 / f4, f6 / f5);
                }
                return 1.0f;
            }
            return 1.0f;
        }
        return 1.0f;
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    PorterDuffColorFilter i(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return DrawableCompat.isAutoMirrored(drawable);
        }
        return this.f7917b.f7977e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        VectorDrawableCompatState vectorDrawableCompatState;
        ColorStateList colorStateList;
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return super.isStateful() || ((vectorDrawableCompatState = this.f7917b) != null && (vectorDrawableCompatState.isStateful() || ((colorStateList = this.f7917b.f7975c) != null && colorStateList.isStateful())));
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
            return this;
        }
        if (!this.f7920e && super.mutate() == this) {
            this.f7917b = new VectorDrawableCompatState(this.f7917b);
            this.f7920e = true;
        }
        return this;
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z3 = false;
        VectorDrawableCompatState vectorDrawableCompatState = this.f7917b;
        ColorStateList colorStateList = vectorDrawableCompatState.f7975c;
        if (colorStateList != null && (mode = vectorDrawableCompatState.f7976d) != null) {
            this.f7918c = i(this.f7918c, colorStateList, mode);
            invalidateSelf();
            z3 = true;
        }
        if (vectorDrawableCompatState.isStateful() && vectorDrawableCompatState.onStateChanged(iArr)) {
            invalidateSelf();
            return true;
        }
        return z3;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j4) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j4);
        } else {
            super.scheduleSelf(runnable, j4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else if (this.f7917b.f7974b.getRootAlpha() != i2) {
            this.f7917b.f7974b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z3) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            DrawableCompat.setAutoMirrored(drawable, z3);
        } else {
            this.f7917b.f7977e = z3;
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
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f7917b;
        if (vectorDrawableCompatState.f7975c != colorStateList) {
            vectorDrawableCompatState.f7975c = colorStateList;
            this.f7918c = i(this.f7918c, colorStateList, vectorDrawableCompatState.f7976d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            DrawableCompat.setTintMode(drawable, mode);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f7917b;
        if (vectorDrawableCompatState.f7976d != mode) {
            vectorDrawableCompatState.f7976d = mode;
            this.f7918c = i(this.f7918c, vectorDrawableCompatState.f7975c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z3, boolean z4) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            return drawable.setVisible(z3, z4);
        }
        return super.setVisible(z3, z4);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(24)
    /* loaded from: classes2.dex */
    public static class VectorDrawableDelegateState extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        private final Drawable.ConstantState f7986a;

        public VectorDrawableDelegateState(Drawable.ConstantState constantState) {
            this.f7986a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f7986a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f7986a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f7902a = (VectorDrawable) this.f7986a.newDrawable();
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f7902a = (VectorDrawable) this.f7986a.newDrawable(resources);
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f7902a = (VectorDrawable) this.f7986a.newDrawable(resources, theme);
            return vectorDrawableCompat;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        this.f7919d = colorFilter;
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class VPath extends VObject {

        /* renamed from: e  reason: collision with root package name */
        protected static final int f7951e = 0;

        /* renamed from: a  reason: collision with root package name */
        protected PathParser.PathDataNode[] f7952a;

        /* renamed from: b  reason: collision with root package name */
        String f7953b;

        /* renamed from: c  reason: collision with root package name */
        int f7954c;

        /* renamed from: d  reason: collision with root package name */
        int f7955d;

        public VPath() {
            super();
            this.f7952a = null;
            this.f7954c = 0;
        }

        public void applyTheme(Resources.Theme theme) {
        }

        public boolean canApplyTheme() {
            return false;
        }

        public PathParser.PathDataNode[] getPathData() {
            return this.f7952a;
        }

        public String getPathName() {
            return this.f7953b;
        }

        public boolean isClipPath() {
            return false;
        }

        public String nodesToString(PathParser.PathDataNode[] pathDataNodeArr) {
            float[] fArr;
            String str = " ";
            for (int i2 = 0; i2 < pathDataNodeArr.length; i2++) {
                str = str + pathDataNodeArr[i2].mType + ":";
                for (int i4 = 0; i4 < pathDataNodeArr[i2].mParams.length; i4++) {
                    str = str + fArr[i4] + ",";
                }
            }
            return str;
        }

        public void printVPath(int i2) {
            String str = "";
            for (int i4 = 0; i4 < i2; i4++) {
                str = str + "    ";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("current path is :");
            sb.append(this.f7953b);
            sb.append(" pathData is ");
            sb.append(nodesToString(this.f7952a));
        }

        public void setPathData(PathParser.PathDataNode[] pathDataNodeArr) {
            if (!PathParser.canMorph(this.f7952a, pathDataNodeArr)) {
                this.f7952a = PathParser.deepCopyNodes(pathDataNodeArr);
            } else {
                PathParser.updateNodes(this.f7952a, pathDataNodeArr);
            }
        }

        public void toPath(Path path) {
            path.reset();
            PathParser.PathDataNode[] pathDataNodeArr = this.f7952a;
            if (pathDataNodeArr != null) {
                PathParser.PathDataNode.nodesToPath(pathDataNodeArr, path);
            }
        }

        public VPath(VPath vPath) {
            super();
            this.f7952a = null;
            this.f7954c = 0;
            this.f7953b = vPath.f7953b;
            this.f7955d = vPath.f7955d;
            this.f7952a = PathParser.deepCopyNodes(vPath.f7952a);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f7902a;
        if (drawable != null) {
            DrawableCompat.inflate(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f7917b;
        vectorDrawableCompatState.f7974b = new VPathRenderer();
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.f7841a);
        h(obtainAttributes, xmlPullParser, theme);
        obtainAttributes.recycle();
        vectorDrawableCompatState.f7973a = getChangingConfigurations();
        vectorDrawableCompatState.f7984l = true;
        c(resources, xmlPullParser, attributeSet, theme);
        this.f7918c = i(this.f7918c, vectorDrawableCompatState.f7975c, vectorDrawableCompatState.f7976d);
    }

    VectorDrawableCompat(@NonNull VectorDrawableCompatState vectorDrawableCompatState) {
        this.f7921f = true;
        this.f7923h = new float[9];
        this.f7924i = new Matrix();
        this.f7925j = new Rect();
        this.f7917b = vectorDrawableCompatState;
        this.f7918c = i(this.f7918c, vectorDrawableCompatState.f7975c, vectorDrawableCompatState.f7976d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class VFullPath extends VPath {

        /* renamed from: f  reason: collision with root package name */
        private int[] f7926f;

        /* renamed from: g  reason: collision with root package name */
        ComplexColorCompat f7927g;

        /* renamed from: h  reason: collision with root package name */
        float f7928h;

        /* renamed from: i  reason: collision with root package name */
        ComplexColorCompat f7929i;

        /* renamed from: j  reason: collision with root package name */
        float f7930j;

        /* renamed from: k  reason: collision with root package name */
        float f7931k;

        /* renamed from: l  reason: collision with root package name */
        float f7932l;

        /* renamed from: m  reason: collision with root package name */
        float f7933m;

        /* renamed from: n  reason: collision with root package name */
        float f7934n;

        /* renamed from: o  reason: collision with root package name */
        Paint.Cap f7935o;

        /* renamed from: p  reason: collision with root package name */
        Paint.Join f7936p;

        /* renamed from: q  reason: collision with root package name */
        float f7937q;

        VFullPath() {
            this.f7928h = 0.0f;
            this.f7930j = 1.0f;
            this.f7931k = 1.0f;
            this.f7932l = 0.0f;
            this.f7933m = 1.0f;
            this.f7934n = 0.0f;
            this.f7935o = Paint.Cap.BUTT;
            this.f7936p = Paint.Join.MITER;
            this.f7937q = 4.0f;
        }

        private Paint.Cap a(int i2, Paint.Cap cap) {
            if (i2 != 0) {
                if (i2 != 1) {
                    return i2 != 2 ? cap : Paint.Cap.SQUARE;
                }
                return Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }

        private Paint.Join b(int i2, Paint.Join join) {
            if (i2 != 0) {
                if (i2 != 1) {
                    return i2 != 2 ? join : Paint.Join.BEVEL;
                }
                return Paint.Join.ROUND;
            }
            return Paint.Join.MITER;
        }

        private void c(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f7926f = null;
            if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f7953b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f7952a = PathParser.createNodesFromPathData(string2);
                }
                this.f7929i = TypedArrayUtils.getNamedComplexColor(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.f7931k = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "fillAlpha", 12, this.f7931k);
                this.f7935o = a(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f7935o);
                this.f7936p = b(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f7936p);
                this.f7937q = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f7937q);
                this.f7927g = TypedArrayUtils.getNamedComplexColor(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.f7930j = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeAlpha", 11, this.f7930j);
                this.f7928h = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeWidth", 4, this.f7928h);
                this.f7933m = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathEnd", 6, this.f7933m);
                this.f7934n = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathOffset", 7, this.f7934n);
                this.f7932l = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathStart", 5, this.f7932l);
                this.f7954c = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "fillType", 13, this.f7954c);
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VPath
        public void applyTheme(Resources.Theme theme) {
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VPath
        public boolean canApplyTheme() {
            return this.f7926f != null;
        }

        float getFillAlpha() {
            return this.f7931k;
        }

        @ColorInt
        int getFillColor() {
            return this.f7929i.getColor();
        }

        float getStrokeAlpha() {
            return this.f7930j;
        }

        @ColorInt
        int getStrokeColor() {
            return this.f7927g.getColor();
        }

        float getStrokeWidth() {
            return this.f7928h;
        }

        float getTrimPathEnd() {
            return this.f7933m;
        }

        float getTrimPathOffset() {
            return this.f7934n;
        }

        float getTrimPathStart() {
            return this.f7932l;
        }

        public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.f7860t);
            c(obtainAttributes, xmlPullParser, theme);
            obtainAttributes.recycle();
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public boolean isStateful() {
            return this.f7929i.isStateful() || this.f7927g.isStateful();
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public boolean onStateChanged(int[] iArr) {
            return this.f7927g.onStateChanged(iArr) | this.f7929i.onStateChanged(iArr);
        }

        void setFillAlpha(float f4) {
            this.f7931k = f4;
        }

        void setFillColor(int i2) {
            this.f7929i.setColor(i2);
        }

        void setStrokeAlpha(float f4) {
            this.f7930j = f4;
        }

        void setStrokeColor(int i2) {
            this.f7927g.setColor(i2);
        }

        void setStrokeWidth(float f4) {
            this.f7928h = f4;
        }

        void setTrimPathEnd(float f4) {
            this.f7933m = f4;
        }

        void setTrimPathOffset(float f4) {
            this.f7934n = f4;
        }

        void setTrimPathStart(float f4) {
            this.f7932l = f4;
        }

        VFullPath(VFullPath vFullPath) {
            super(vFullPath);
            this.f7928h = 0.0f;
            this.f7930j = 1.0f;
            this.f7931k = 1.0f;
            this.f7932l = 0.0f;
            this.f7933m = 1.0f;
            this.f7934n = 0.0f;
            this.f7935o = Paint.Cap.BUTT;
            this.f7936p = Paint.Join.MITER;
            this.f7937q = 4.0f;
            this.f7926f = vFullPath.f7926f;
            this.f7927g = vFullPath.f7927g;
            this.f7928h = vFullPath.f7928h;
            this.f7930j = vFullPath.f7930j;
            this.f7929i = vFullPath.f7929i;
            this.f7954c = vFullPath.f7954c;
            this.f7931k = vFullPath.f7931k;
            this.f7932l = vFullPath.f7932l;
            this.f7933m = vFullPath.f7933m;
            this.f7934n = vFullPath.f7934n;
            this.f7935o = vFullPath.f7935o;
            this.f7936p = vFullPath.f7936p;
            this.f7937q = vFullPath.f7937q;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class VPathRenderer {

        /* renamed from: q  reason: collision with root package name */
        private static final Matrix f7956q = new Matrix();

        /* renamed from: a  reason: collision with root package name */
        private final Path f7957a;

        /* renamed from: b  reason: collision with root package name */
        private final Path f7958b;

        /* renamed from: c  reason: collision with root package name */
        private final Matrix f7959c;

        /* renamed from: d  reason: collision with root package name */
        Paint f7960d;

        /* renamed from: e  reason: collision with root package name */
        Paint f7961e;

        /* renamed from: f  reason: collision with root package name */
        private PathMeasure f7962f;

        /* renamed from: g  reason: collision with root package name */
        private int f7963g;

        /* renamed from: h  reason: collision with root package name */
        final VGroup f7964h;

        /* renamed from: i  reason: collision with root package name */
        float f7965i;

        /* renamed from: j  reason: collision with root package name */
        float f7966j;

        /* renamed from: k  reason: collision with root package name */
        float f7967k;

        /* renamed from: l  reason: collision with root package name */
        float f7968l;

        /* renamed from: m  reason: collision with root package name */
        int f7969m;

        /* renamed from: n  reason: collision with root package name */
        String f7970n;

        /* renamed from: o  reason: collision with root package name */
        Boolean f7971o;

        /* renamed from: p  reason: collision with root package name */
        final ArrayMap<String, Object> f7972p;

        public VPathRenderer() {
            this.f7959c = new Matrix();
            this.f7965i = 0.0f;
            this.f7966j = 0.0f;
            this.f7967k = 0.0f;
            this.f7968l = 0.0f;
            this.f7969m = 255;
            this.f7970n = null;
            this.f7971o = null;
            this.f7972p = new ArrayMap<>();
            this.f7964h = new VGroup();
            this.f7957a = new Path();
            this.f7958b = new Path();
        }

        private static float a(float f4, float f5, float f6, float f7) {
            return (f4 * f7) - (f5 * f6);
        }

        private void b(VGroup vGroup, Matrix matrix, Canvas canvas, int i2, int i4, ColorFilter colorFilter) {
            vGroup.f7938a.set(matrix);
            vGroup.f7938a.preConcat(vGroup.f7947j);
            canvas.save();
            for (int i5 = 0; i5 < vGroup.f7939b.size(); i5++) {
                VObject vObject = vGroup.f7939b.get(i5);
                if (vObject instanceof VGroup) {
                    b((VGroup) vObject, vGroup.f7938a, canvas, i2, i4, colorFilter);
                } else if (vObject instanceof VPath) {
                    c(vGroup, (VPath) vObject, canvas, i2, i4, colorFilter);
                }
            }
            canvas.restore();
        }

        private void c(VGroup vGroup, VPath vPath, Canvas canvas, int i2, int i4, ColorFilter colorFilter) {
            float f4 = i2 / this.f7967k;
            float f5 = i4 / this.f7968l;
            float min = Math.min(f4, f5);
            Matrix matrix = vGroup.f7938a;
            this.f7959c.set(matrix);
            this.f7959c.postScale(f4, f5);
            float d4 = d(matrix);
            if (d4 == 0.0f) {
                return;
            }
            vPath.toPath(this.f7957a);
            Path path = this.f7957a;
            this.f7958b.reset();
            if (vPath.isClipPath()) {
                this.f7958b.setFillType(vPath.f7954c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.f7958b.addPath(path, this.f7959c);
                canvas.clipPath(this.f7958b);
                return;
            }
            VFullPath vFullPath = (VFullPath) vPath;
            float f6 = vFullPath.f7932l;
            if (f6 != 0.0f || vFullPath.f7933m != 1.0f) {
                float f7 = vFullPath.f7934n;
                float f8 = (f6 + f7) % 1.0f;
                float f9 = (vFullPath.f7933m + f7) % 1.0f;
                if (this.f7962f == null) {
                    this.f7962f = new PathMeasure();
                }
                this.f7962f.setPath(this.f7957a, false);
                float length = this.f7962f.getLength();
                float f10 = f8 * length;
                float f11 = f9 * length;
                path.reset();
                if (f10 > f11) {
                    this.f7962f.getSegment(f10, length, path, true);
                    this.f7962f.getSegment(0.0f, f11, path, true);
                } else {
                    this.f7962f.getSegment(f10, f11, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.f7958b.addPath(path, this.f7959c);
            if (vFullPath.f7929i.willDraw()) {
                ComplexColorCompat complexColorCompat = vFullPath.f7929i;
                if (this.f7961e == null) {
                    Paint paint = new Paint(1);
                    this.f7961e = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                Paint paint2 = this.f7961e;
                if (complexColorCompat.isGradient()) {
                    Shader shader = complexColorCompat.getShader();
                    shader.setLocalMatrix(this.f7959c);
                    paint2.setShader(shader);
                    paint2.setAlpha(Math.round(vFullPath.f7931k * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(VectorDrawableCompat.a(complexColorCompat.getColor(), vFullPath.f7931k));
                }
                paint2.setColorFilter(colorFilter);
                this.f7958b.setFillType(vFullPath.f7954c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f7958b, paint2);
            }
            if (vFullPath.f7927g.willDraw()) {
                ComplexColorCompat complexColorCompat2 = vFullPath.f7927g;
                if (this.f7960d == null) {
                    Paint paint3 = new Paint(1);
                    this.f7960d = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                }
                Paint paint4 = this.f7960d;
                Paint.Join join = vFullPath.f7936p;
                if (join != null) {
                    paint4.setStrokeJoin(join);
                }
                Paint.Cap cap = vFullPath.f7935o;
                if (cap != null) {
                    paint4.setStrokeCap(cap);
                }
                paint4.setStrokeMiter(vFullPath.f7937q);
                if (complexColorCompat2.isGradient()) {
                    Shader shader2 = complexColorCompat2.getShader();
                    shader2.setLocalMatrix(this.f7959c);
                    paint4.setShader(shader2);
                    paint4.setAlpha(Math.round(vFullPath.f7930j * 255.0f));
                } else {
                    paint4.setShader(null);
                    paint4.setAlpha(255);
                    paint4.setColor(VectorDrawableCompat.a(complexColorCompat2.getColor(), vFullPath.f7930j));
                }
                paint4.setColorFilter(colorFilter);
                paint4.setStrokeWidth(vFullPath.f7928h * min * d4);
                canvas.drawPath(this.f7958b, paint4);
            }
        }

        private float d(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float a4 = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max((float) Math.hypot(fArr[0], fArr[1]), (float) Math.hypot(fArr[2], fArr[3]));
            if (max > 0.0f) {
                return Math.abs(a4) / max;
            }
            return 0.0f;
        }

        public void draw(Canvas canvas, int i2, int i4, ColorFilter colorFilter) {
            b(this.f7964h, f7956q, canvas, i2, i4, colorFilter);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f7969m;
        }

        public boolean isStateful() {
            if (this.f7971o == null) {
                this.f7971o = Boolean.valueOf(this.f7964h.isStateful());
            }
            return this.f7971o.booleanValue();
        }

        public boolean onStateChanged(int[] iArr) {
            return this.f7964h.onStateChanged(iArr);
        }

        public void setAlpha(float f4) {
            setRootAlpha((int) (f4 * 255.0f));
        }

        public void setRootAlpha(int i2) {
            this.f7969m = i2;
        }

        public VPathRenderer(VPathRenderer vPathRenderer) {
            this.f7959c = new Matrix();
            this.f7965i = 0.0f;
            this.f7966j = 0.0f;
            this.f7967k = 0.0f;
            this.f7968l = 0.0f;
            this.f7969m = 255;
            this.f7970n = null;
            this.f7971o = null;
            ArrayMap<String, Object> arrayMap = new ArrayMap<>();
            this.f7972p = arrayMap;
            this.f7964h = new VGroup(vPathRenderer.f7964h, arrayMap);
            this.f7957a = new Path(vPathRenderer.f7957a);
            this.f7958b = new Path(vPathRenderer.f7958b);
            this.f7965i = vPathRenderer.f7965i;
            this.f7966j = vPathRenderer.f7966j;
            this.f7967k = vPathRenderer.f7967k;
            this.f7968l = vPathRenderer.f7968l;
            this.f7963g = vPathRenderer.f7963g;
            this.f7969m = vPathRenderer.f7969m;
            this.f7970n = vPathRenderer.f7970n;
            String str = vPathRenderer.f7970n;
            if (str != null) {
                arrayMap.put(str, this);
            }
            this.f7971o = vPathRenderer.f7971o;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class VGroup extends VObject {

        /* renamed from: a  reason: collision with root package name */
        final Matrix f7938a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayList<VObject> f7939b;

        /* renamed from: c  reason: collision with root package name */
        float f7940c;

        /* renamed from: d  reason: collision with root package name */
        private float f7941d;

        /* renamed from: e  reason: collision with root package name */
        private float f7942e;

        /* renamed from: f  reason: collision with root package name */
        private float f7943f;

        /* renamed from: g  reason: collision with root package name */
        private float f7944g;

        /* renamed from: h  reason: collision with root package name */
        private float f7945h;

        /* renamed from: i  reason: collision with root package name */
        private float f7946i;

        /* renamed from: j  reason: collision with root package name */
        final Matrix f7947j;

        /* renamed from: k  reason: collision with root package name */
        int f7948k;

        /* renamed from: l  reason: collision with root package name */
        private int[] f7949l;

        /* renamed from: m  reason: collision with root package name */
        private String f7950m;

        public VGroup(VGroup vGroup, ArrayMap<String, Object> arrayMap) {
            super();
            VPath vClipPath;
            this.f7938a = new Matrix();
            this.f7939b = new ArrayList<>();
            this.f7940c = 0.0f;
            this.f7941d = 0.0f;
            this.f7942e = 0.0f;
            this.f7943f = 1.0f;
            this.f7944g = 1.0f;
            this.f7945h = 0.0f;
            this.f7946i = 0.0f;
            Matrix matrix = new Matrix();
            this.f7947j = matrix;
            this.f7950m = null;
            this.f7940c = vGroup.f7940c;
            this.f7941d = vGroup.f7941d;
            this.f7942e = vGroup.f7942e;
            this.f7943f = vGroup.f7943f;
            this.f7944g = vGroup.f7944g;
            this.f7945h = vGroup.f7945h;
            this.f7946i = vGroup.f7946i;
            this.f7949l = vGroup.f7949l;
            String str = vGroup.f7950m;
            this.f7950m = str;
            this.f7948k = vGroup.f7948k;
            if (str != null) {
                arrayMap.put(str, this);
            }
            matrix.set(vGroup.f7947j);
            ArrayList<VObject> arrayList = vGroup.f7939b;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                VObject vObject = arrayList.get(i2);
                if (vObject instanceof VGroup) {
                    this.f7939b.add(new VGroup((VGroup) vObject, arrayMap));
                } else {
                    if (vObject instanceof VFullPath) {
                        vClipPath = new VFullPath((VFullPath) vObject);
                    } else if (vObject instanceof VClipPath) {
                        vClipPath = new VClipPath((VClipPath) vObject);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.f7939b.add(vClipPath);
                    String str2 = vClipPath.f7953b;
                    if (str2 != null) {
                        arrayMap.put(str2, vClipPath);
                    }
                }
            }
        }

        private void a() {
            this.f7947j.reset();
            this.f7947j.postTranslate(-this.f7941d, -this.f7942e);
            this.f7947j.postScale(this.f7943f, this.f7944g);
            this.f7947j.postRotate(this.f7940c, 0.0f, 0.0f);
            this.f7947j.postTranslate(this.f7945h + this.f7941d, this.f7946i + this.f7942e);
        }

        private void b(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f7949l = null;
            this.f7940c = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, Key.ROTATION, 5, this.f7940c);
            this.f7941d = typedArray.getFloat(1, this.f7941d);
            this.f7942e = typedArray.getFloat(2, this.f7942e);
            this.f7943f = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "scaleX", 3, this.f7943f);
            this.f7944g = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "scaleY", 4, this.f7944g);
            this.f7945h = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "translateX", 6, this.f7945h);
            this.f7946i = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "translateY", 7, this.f7946i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f7950m = string;
            }
            a();
        }

        public String getGroupName() {
            return this.f7950m;
        }

        public Matrix getLocalMatrix() {
            return this.f7947j;
        }

        public float getPivotX() {
            return this.f7941d;
        }

        public float getPivotY() {
            return this.f7942e;
        }

        public float getRotation() {
            return this.f7940c;
        }

        public float getScaleX() {
            return this.f7943f;
        }

        public float getScaleY() {
            return this.f7944g;
        }

        public float getTranslateX() {
            return this.f7945h;
        }

        public float getTranslateY() {
            return this.f7946i;
        }

        public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.f7851k);
            b(obtainAttributes, xmlPullParser);
            obtainAttributes.recycle();
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public boolean isStateful() {
            for (int i2 = 0; i2 < this.f7939b.size(); i2++) {
                if (this.f7939b.get(i2).isStateful()) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        public boolean onStateChanged(int[] iArr) {
            boolean z3 = false;
            for (int i2 = 0; i2 < this.f7939b.size(); i2++) {
                z3 |= this.f7939b.get(i2).onStateChanged(iArr);
            }
            return z3;
        }

        public void setPivotX(float f4) {
            if (f4 != this.f7941d) {
                this.f7941d = f4;
                a();
            }
        }

        public void setPivotY(float f4) {
            if (f4 != this.f7942e) {
                this.f7942e = f4;
                a();
            }
        }

        public void setRotation(float f4) {
            if (f4 != this.f7940c) {
                this.f7940c = f4;
                a();
            }
        }

        public void setScaleX(float f4) {
            if (f4 != this.f7943f) {
                this.f7943f = f4;
                a();
            }
        }

        public void setScaleY(float f4) {
            if (f4 != this.f7944g) {
                this.f7944g = f4;
                a();
            }
        }

        public void setTranslateX(float f4) {
            if (f4 != this.f7945h) {
                this.f7945h = f4;
                a();
            }
        }

        public void setTranslateY(float f4) {
            if (f4 != this.f7946i) {
                this.f7946i = f4;
                a();
            }
        }

        public VGroup() {
            super();
            this.f7938a = new Matrix();
            this.f7939b = new ArrayList<>();
            this.f7940c = 0.0f;
            this.f7941d = 0.0f;
            this.f7942e = 0.0f;
            this.f7943f = 1.0f;
            this.f7944g = 1.0f;
            this.f7945h = 0.0f;
            this.f7946i = 0.0f;
            this.f7947j = new Matrix();
            this.f7950m = null;
        }
    }
}
