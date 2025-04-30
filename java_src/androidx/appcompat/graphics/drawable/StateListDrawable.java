package androidx.appcompat.graphics.drawable;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.DrawableContainer;
import androidx.appcompat.resources.Compatibility;
import androidx.appcompat.resources.R;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.content.res.TypedArrayUtils;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"RestrictedAPI"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class StateListDrawable extends DrawableContainer {

    /* renamed from: r  reason: collision with root package name */
    private static final String f439r = "StateListDrawable";

    /* renamed from: s  reason: collision with root package name */
    private static final boolean f440s = false;

    /* renamed from: p  reason: collision with root package name */
    private StateListState f441p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f442q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class StateListState extends DrawableContainer.DrawableContainerState {
        int[][] J;

        /* JADX INFO: Access modifiers changed from: package-private */
        public StateListState(StateListState stateListState, StateListDrawable stateListDrawable, Resources resources) {
            super(stateListState, stateListDrawable, resources);
            if (stateListState != null) {
                this.J = stateListState.J;
            } else {
                this.J = new int[e()];
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableContainer.DrawableContainerState
        void g() {
            int[][] iArr = this.J;
            int[][] iArr2 = new int[iArr.length];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr3 = this.J;
                iArr2[length] = iArr3[length] != null ? (int[]) iArr3[length].clone() : null;
            }
            this.J = iArr2;
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableContainer.DrawableContainerState
        public void growArray(int i2, int i4) {
            super.growArray(i2, i4);
            int[][] iArr = new int[i4];
            System.arraycopy(this.J, 0, iArr, 0, i2);
            this.J = iArr;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int k(int[] iArr, Drawable drawable) {
            int addChild = addChild(drawable);
            this.J[addChild] = iArr;
            return addChild;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int l(int[] iArr) {
            int[][] iArr2 = this.J;
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new StateListDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new StateListDrawable(this, resources);
        }
    }

    StateListDrawable() {
        this(null, null);
    }

    private void s(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        StateListState stateListState = this.f441p;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next2 == 3) {
                return;
            }
            if (next2 == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.StateListDrawableItem);
                int resourceId = obtainAttributes.getResourceId(R.styleable.StateListDrawableItem_android_drawable, -1);
                Drawable drawable = resourceId > 0 ? ResourceManagerInternal.get().getDrawable(context, resourceId) : null;
                obtainAttributes.recycle();
                int[] m4 = m(attributeSet);
                if (drawable == null) {
                    do {
                        next = xmlPullParser.next();
                    } while (next == 4);
                    if (next == 2) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            drawable = Compatibility.Api21Impl.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
                        } else {
                            drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                        }
                    } else {
                        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                }
                stateListState.k(m4, drawable);
            }
        }
    }

    private void t(TypedArray typedArray) {
        StateListState stateListState = this.f441p;
        if (Build.VERSION.SDK_INT >= 21) {
            stateListState.f402d |= Compatibility.Api21Impl.getChangingConfigurations(typedArray);
        }
        stateListState.f407i = typedArray.getBoolean(R.styleable.StateListDrawable_android_variablePadding, stateListState.f407i);
        stateListState.f410l = typedArray.getBoolean(R.styleable.StateListDrawable_android_constantSize, stateListState.f410l);
        stateListState.A = typedArray.getInt(R.styleable.StateListDrawable_android_enterFadeDuration, stateListState.A);
        stateListState.B = typedArray.getInt(R.styleable.StateListDrawable_android_exitFadeDuration, stateListState.B);
        stateListState.f422x = typedArray.getBoolean(R.styleable.StateListDrawable_android_dither, stateListState.f422x);
    }

    public void addState(int[] iArr, Drawable drawable) {
        if (drawable != null) {
            this.f441p.k(iArr, drawable);
            onStateChange(getState());
        }
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainer
    public void b() {
        super.b();
        this.f442q = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainer
    public void i(@NonNull DrawableContainer.DrawableContainerState drawableContainerState) {
        super.i(drawableContainerState);
        if (drawableContainerState instanceof StateListState) {
            this.f441p = (StateListState) drawableContainerState;
        }
    }

    public void inflate(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.StateListDrawable);
        setVisible(obtainAttributes.getBoolean(R.styleable.StateListDrawable_android_visible, true), true);
        t(obtainAttributes);
        k(resources);
        obtainAttributes.recycle();
        s(context, resources, xmlPullParser, attributeSet, theme);
        onStateChange(getState());
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainer
    /* renamed from: l */
    public StateListState c() {
        return new StateListState(this.f441p, this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] m(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i2 = 0;
        for (int i4 = 0; i4 < attributeCount; i4++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i4);
            if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                int i5 = i2 + 1;
                if (!attributeSet.getAttributeBooleanValue(i4, false)) {
                    attributeNameResource = -attributeNameResource;
                }
                iArr[i2] = attributeNameResource;
                i2 = i5;
            }
        }
        return StateSet.trimStateSet(iArr, i2);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f442q && super.mutate() == this) {
            this.f441p.g();
            this.f442q = true;
        }
        return this;
    }

    int n() {
        return this.f441p.getChildCount();
    }

    Drawable o(int i2) {
        return this.f441p.getChild(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int l4 = this.f441p.l(iArr);
        if (l4 < 0) {
            l4 = this.f441p.l(StateSet.WILD_CARD);
        }
        return h(l4) || onStateChange;
    }

    int p(int[] iArr) {
        return this.f441p.l(iArr);
    }

    StateListState q() {
        return this.f441p;
    }

    int[] r(int i2) {
        return this.f441p.J[i2];
    }

    StateListDrawable(StateListState stateListState, Resources resources) {
        i(new StateListState(stateListState, this, resources));
        onStateChange(getState());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateListDrawable(@Nullable StateListState stateListState) {
        if (stateListState != null) {
            i(stateListState);
        }
    }
}
