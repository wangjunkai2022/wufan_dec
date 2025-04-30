package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.PluralsRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.annotation.XmlRes;
import com.google.android.material.R;
import com.google.android.material.internal.o;
import com.google.android.material.resources.c;
import com.google.android.material.resources.d;
import java.util.Locale;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class BadgeState {

    /* renamed from: f  reason: collision with root package name */
    private static final int f14052f = 4;

    /* renamed from: g  reason: collision with root package name */
    private static final String f14053g = "badge";

    /* renamed from: a  reason: collision with root package name */
    private final State f14054a;

    /* renamed from: b  reason: collision with root package name */
    private final State f14055b;

    /* renamed from: c  reason: collision with root package name */
    final float f14056c;

    /* renamed from: d  reason: collision with root package name */
    final float f14057d;

    /* renamed from: e  reason: collision with root package name */
    final float f14058e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BadgeState(Context context, @XmlRes int i2, @AttrRes int i4, @StyleRes int i5, @Nullable State state) {
        CharSequence charSequence;
        int i6;
        int i7;
        int i8;
        int intValue;
        int intValue2;
        int intValue3;
        int intValue4;
        int intValue5;
        int intValue6;
        Locale locale;
        State state2 = new State();
        this.f14055b = state2;
        state = state == null ? new State() : state;
        if (i2 != 0) {
            state.f14061a = i2;
        }
        TypedArray b4 = b(context, state.f14061a, i4, i5);
        Resources resources = context.getResources();
        this.f14056c = b4.getDimensionPixelSize(R.styleable.Badge_badgeRadius, resources.getDimensionPixelSize(R.dimen.mtrl_badge_radius));
        this.f14058e = b4.getDimensionPixelSize(R.styleable.Badge_badgeWidePadding, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding));
        this.f14057d = b4.getDimensionPixelSize(R.styleable.Badge_badgeWithTextRadius, resources.getDimensionPixelSize(R.dimen.mtrl_badge_with_text_radius));
        state2.f14064d = state.f14064d == -2 ? 255 : state.f14064d;
        if (state.f14068h != null) {
            charSequence = state.f14068h;
        } else {
            charSequence = context.getString(R.string.mtrl_badge_numberless_content_description);
        }
        state2.f14068h = charSequence;
        if (state.f14069i != 0) {
            i6 = state.f14069i;
        } else {
            i6 = R.plurals.mtrl_badge_content_description;
        }
        state2.f14069i = i6;
        if (state.f14070j != 0) {
            i7 = state.f14070j;
        } else {
            i7 = R.string.mtrl_exceed_max_badge_number_content_description;
        }
        state2.f14070j = i7;
        state2.f14072l = Boolean.valueOf(state.f14072l == null || state.f14072l.booleanValue());
        if (state.f14066f != -2) {
            i8 = state.f14066f;
        } else {
            i8 = b4.getInt(R.styleable.Badge_maxCharacterCount, 4);
        }
        state2.f14066f = i8;
        if (state.f14065e != -2) {
            state2.f14065e = state.f14065e;
        } else {
            int i9 = R.styleable.Badge_number;
            if (b4.hasValue(i9)) {
                state2.f14065e = b4.getInt(i9, 0);
            } else {
                state2.f14065e = -1;
            }
        }
        if (state.f14062b != null) {
            intValue = state.f14062b.intValue();
        } else {
            intValue = v(context, b4, R.styleable.Badge_backgroundColor);
        }
        state2.f14062b = Integer.valueOf(intValue);
        if (state.f14063c != null) {
            state2.f14063c = state.f14063c;
        } else {
            int i10 = R.styleable.Badge_badgeTextColor;
            if (b4.hasValue(i10)) {
                state2.f14063c = Integer.valueOf(v(context, b4, i10));
            } else {
                state2.f14063c = Integer.valueOf(new d(context, R.style.TextAppearance_MaterialComponents_Badge).i().getDefaultColor());
            }
        }
        if (state.f14071k != null) {
            intValue2 = state.f14071k.intValue();
        } else {
            intValue2 = b4.getInt(R.styleable.Badge_badgeGravity, 8388661);
        }
        state2.f14071k = Integer.valueOf(intValue2);
        if (state.f14073m != null) {
            intValue3 = state.f14073m.intValue();
        } else {
            intValue3 = b4.getDimensionPixelOffset(R.styleable.Badge_horizontalOffset, 0);
        }
        state2.f14073m = Integer.valueOf(intValue3);
        if (state.f14073m != null) {
            intValue4 = state.f14074n.intValue();
        } else {
            intValue4 = b4.getDimensionPixelOffset(R.styleable.Badge_verticalOffset, 0);
        }
        state2.f14074n = Integer.valueOf(intValue4);
        if (state.f14075o != null) {
            intValue5 = state.f14075o.intValue();
        } else {
            intValue5 = b4.getDimensionPixelOffset(R.styleable.Badge_horizontalOffsetWithText, state2.f14073m.intValue());
        }
        state2.f14075o = Integer.valueOf(intValue5);
        if (state.f14076p != null) {
            intValue6 = state.f14076p.intValue();
        } else {
            intValue6 = b4.getDimensionPixelOffset(R.styleable.Badge_verticalOffsetWithText, state2.f14074n.intValue());
        }
        state2.f14076p = Integer.valueOf(intValue6);
        state2.f14077q = Integer.valueOf(state.f14077q == null ? 0 : state.f14077q.intValue());
        state2.f14078r = Integer.valueOf(state.f14078r != null ? state.f14078r.intValue() : 0);
        b4.recycle();
        if (state.f14067g != null) {
            state2.f14067g = state.f14067g;
        } else {
            if (Build.VERSION.SDK_INT >= 24) {
                locale = Locale.getDefault(Locale.Category.FORMAT);
            } else {
                locale = Locale.getDefault();
            }
            state2.f14067g = locale;
        }
        this.f14054a = state;
    }

    private TypedArray b(Context context, @XmlRes int i2, @AttrRes int i4, @StyleRes int i5) {
        AttributeSet attributeSet;
        int i6;
        if (i2 != 0) {
            AttributeSet a4 = a1.a.a(context, i2, f14053g);
            i6 = a4.getStyleAttribute();
            attributeSet = a4;
        } else {
            attributeSet = null;
            i6 = 0;
        }
        return o.j(context, attributeSet, R.styleable.Badge, i4, i6 == 0 ? i5 : i6, new int[0]);
    }

    private static int v(Context context, @NonNull TypedArray typedArray, @StyleableRes int i2) {
        return c.a(context, typedArray, i2).getDefaultColor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A(int i2) {
        this.f14054a.f14071k = Integer.valueOf(i2);
        this.f14055b.f14071k = Integer.valueOf(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void B(@ColorInt int i2) {
        this.f14054a.f14063c = Integer.valueOf(i2);
        this.f14055b.f14063c = Integer.valueOf(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C(@StringRes int i2) {
        this.f14054a.f14070j = i2;
        this.f14055b.f14070j = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D(CharSequence charSequence) {
        this.f14054a.f14068h = charSequence;
        this.f14055b.f14068h = charSequence;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E(@PluralsRes int i2) {
        this.f14054a.f14069i = i2;
        this.f14055b.f14069i = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void F(@Dimension(unit = 1) int i2) {
        this.f14054a.f14075o = Integer.valueOf(i2);
        this.f14055b.f14075o = Integer.valueOf(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void G(@Dimension(unit = 1) int i2) {
        this.f14054a.f14073m = Integer.valueOf(i2);
        this.f14055b.f14073m = Integer.valueOf(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void H(int i2) {
        this.f14054a.f14066f = i2;
        this.f14055b.f14066f = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void I(int i2) {
        this.f14054a.f14065e = i2;
        this.f14055b.f14065e = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void J(Locale locale) {
        this.f14054a.f14067g = locale;
        this.f14055b.f14067g = locale;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void K(@Dimension(unit = 1) int i2) {
        this.f14054a.f14076p = Integer.valueOf(i2);
        this.f14055b.f14076p = Integer.valueOf(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void L(@Dimension(unit = 1) int i2) {
        this.f14054a.f14074n = Integer.valueOf(i2);
        this.f14055b.f14074n = Integer.valueOf(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void M(boolean z3) {
        this.f14054a.f14072l = Boolean.valueOf(z3);
        this.f14055b.f14072l = Boolean.valueOf(z3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        I(-1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension(unit = 1)
    public int c() {
        return this.f14055b.f14077q.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension(unit = 1)
    public int d() {
        return this.f14055b.f14078r.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f14055b.f14064d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    public int f() {
        return this.f14055b.f14062b.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return this.f14055b.f14071k.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    public int h() {
        return this.f14055b.f14063c.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @StringRes
    public int i() {
        return this.f14055b.f14070j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence j() {
        return this.f14055b.f14068h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @PluralsRes
    public int k() {
        return this.f14055b.f14069i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension(unit = 1)
    public int l() {
        return this.f14055b.f14075o.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension(unit = 1)
    public int m() {
        return this.f14055b.f14073m.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int n() {
        return this.f14055b.f14066f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int o() {
        return this.f14055b.f14065e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Locale p() {
        return this.f14055b.f14067g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public State q() {
        return this.f14054a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension(unit = 1)
    public int r() {
        return this.f14055b.f14076p.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Dimension(unit = 1)
    public int s() {
        return this.f14055b.f14074n.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean t() {
        return this.f14055b.f14065e != -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean u() {
        return this.f14055b.f14072l.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(@Dimension(unit = 1) int i2) {
        this.f14054a.f14077q = Integer.valueOf(i2);
        this.f14055b.f14077q = Integer.valueOf(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(@Dimension(unit = 1) int i2) {
        this.f14054a.f14078r = Integer.valueOf(i2);
        this.f14055b.f14078r = Integer.valueOf(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(int i2) {
        this.f14054a.f14064d = i2;
        this.f14055b.f14064d = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z(@ColorInt int i2) {
        this.f14054a.f14062b = Integer.valueOf(i2);
        this.f14055b.f14062b = Integer.valueOf(i2);
    }

    /* loaded from: classes2.dex */
    public static final class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new a();

        /* renamed from: s  reason: collision with root package name */
        private static final int f14059s = -1;

        /* renamed from: t  reason: collision with root package name */
        private static final int f14060t = -2;
        @XmlRes

        /* renamed from: a  reason: collision with root package name */
        private int f14061a;
        @ColorInt

        /* renamed from: b  reason: collision with root package name */
        private Integer f14062b;
        @ColorInt

        /* renamed from: c  reason: collision with root package name */
        private Integer f14063c;

        /* renamed from: d  reason: collision with root package name */
        private int f14064d;

        /* renamed from: e  reason: collision with root package name */
        private int f14065e;

        /* renamed from: f  reason: collision with root package name */
        private int f14066f;

        /* renamed from: g  reason: collision with root package name */
        private Locale f14067g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private CharSequence f14068h;
        @PluralsRes

        /* renamed from: i  reason: collision with root package name */
        private int f14069i;
        @StringRes

        /* renamed from: j  reason: collision with root package name */
        private int f14070j;

        /* renamed from: k  reason: collision with root package name */
        private Integer f14071k;

        /* renamed from: l  reason: collision with root package name */
        private Boolean f14072l;
        @Dimension(unit = 1)

        /* renamed from: m  reason: collision with root package name */
        private Integer f14073m;
        @Dimension(unit = 1)

        /* renamed from: n  reason: collision with root package name */
        private Integer f14074n;
        @Dimension(unit = 1)

        /* renamed from: o  reason: collision with root package name */
        private Integer f14075o;
        @Dimension(unit = 1)

        /* renamed from: p  reason: collision with root package name */
        private Integer f14076p;
        @Dimension(unit = 1)

        /* renamed from: q  reason: collision with root package name */
        private Integer f14077q;
        @Dimension(unit = 1)

        /* renamed from: r  reason: collision with root package name */
        private Integer f14078r;

        /* loaded from: classes2.dex */
        class a implements Parcelable.Creator<State> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: a */
            public State createFromParcel(@NonNull Parcel parcel) {
                return new State(parcel);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: b */
            public State[] newArray(int i2) {
                return new State[i2];
            }
        }

        public State() {
            this.f14064d = 255;
            this.f14065e = -2;
            this.f14066f = -2;
            this.f14072l = Boolean.TRUE;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            parcel.writeInt(this.f14061a);
            parcel.writeSerializable(this.f14062b);
            parcel.writeSerializable(this.f14063c);
            parcel.writeInt(this.f14064d);
            parcel.writeInt(this.f14065e);
            parcel.writeInt(this.f14066f);
            CharSequence charSequence = this.f14068h;
            parcel.writeString(charSequence == null ? null : charSequence.toString());
            parcel.writeInt(this.f14069i);
            parcel.writeSerializable(this.f14071k);
            parcel.writeSerializable(this.f14073m);
            parcel.writeSerializable(this.f14074n);
            parcel.writeSerializable(this.f14075o);
            parcel.writeSerializable(this.f14076p);
            parcel.writeSerializable(this.f14077q);
            parcel.writeSerializable(this.f14078r);
            parcel.writeSerializable(this.f14072l);
            parcel.writeSerializable(this.f14067g);
        }

        State(@NonNull Parcel parcel) {
            this.f14064d = 255;
            this.f14065e = -2;
            this.f14066f = -2;
            this.f14072l = Boolean.TRUE;
            this.f14061a = parcel.readInt();
            this.f14062b = (Integer) parcel.readSerializable();
            this.f14063c = (Integer) parcel.readSerializable();
            this.f14064d = parcel.readInt();
            this.f14065e = parcel.readInt();
            this.f14066f = parcel.readInt();
            this.f14068h = parcel.readString();
            this.f14069i = parcel.readInt();
            this.f14071k = (Integer) parcel.readSerializable();
            this.f14073m = (Integer) parcel.readSerializable();
            this.f14074n = (Integer) parcel.readSerializable();
            this.f14075o = (Integer) parcel.readSerializable();
            this.f14076p = (Integer) parcel.readSerializable();
            this.f14077q = (Integer) parcel.readSerializable();
            this.f14078r = (Integer) parcel.readSerializable();
            this.f14072l = (Boolean) parcel.readSerializable();
            this.f14067g = (Locale) parcel.readSerializable();
        }
    }
}
