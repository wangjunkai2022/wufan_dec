package com.facebook.drawee.generic;

import androidx.annotation.ColorInt;
import com.facebook.common.internal.h;
import java.util.Arrays;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class RoundingParams {

    /* renamed from: a  reason: collision with root package name */
    private RoundingMethod f12156a = RoundingMethod.BITMAP_ONLY;

    /* renamed from: b  reason: collision with root package name */
    private boolean f12157b = false;

    /* renamed from: c  reason: collision with root package name */
    private float[] f12158c = null;

    /* renamed from: d  reason: collision with root package name */
    private int f12159d = 0;

    /* renamed from: e  reason: collision with root package name */
    private float f12160e = 0.0f;

    /* renamed from: f  reason: collision with root package name */
    private int f12161f = 0;

    /* renamed from: g  reason: collision with root package name */
    private float f12162g = 0.0f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f12163h = false;

    /* loaded from: classes2.dex */
    public enum RoundingMethod {
        OVERLAY_COLOR,
        BITMAP_ONLY
    }

    public static RoundingParams a() {
        return new RoundingParams().v(true);
    }

    public static RoundingParams b(float f4, float f5, float f6, float f7) {
        return new RoundingParams().q(f4, f5, f6, f7);
    }

    public static RoundingParams c(float[] fArr) {
        return new RoundingParams().r(fArr);
    }

    public static RoundingParams d(float f4) {
        return new RoundingParams().s(f4);
    }

    private float[] h() {
        if (this.f12158c == null) {
            this.f12158c = new float[8];
        }
        return this.f12158c;
    }

    public int e() {
        return this.f12161f;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RoundingParams roundingParams = (RoundingParams) obj;
        if (this.f12157b == roundingParams.f12157b && this.f12159d == roundingParams.f12159d && Float.compare(roundingParams.f12160e, this.f12160e) == 0 && this.f12161f == roundingParams.f12161f && Float.compare(roundingParams.f12162g, this.f12162g) == 0 && this.f12156a == roundingParams.f12156a && this.f12163h == roundingParams.f12163h) {
            return Arrays.equals(this.f12158c, roundingParams.f12158c);
        }
        return false;
    }

    public float f() {
        return this.f12160e;
    }

    public float[] g() {
        return this.f12158c;
    }

    public int hashCode() {
        RoundingMethod roundingMethod = this.f12156a;
        int hashCode = (((roundingMethod != null ? roundingMethod.hashCode() : 0) * 31) + (this.f12157b ? 1 : 0)) * 31;
        float[] fArr = this.f12158c;
        int hashCode2 = (((hashCode + (fArr != null ? Arrays.hashCode(fArr) : 0)) * 31) + this.f12159d) * 31;
        float f4 = this.f12160e;
        int floatToIntBits = (((hashCode2 + (f4 != 0.0f ? Float.floatToIntBits(f4) : 0)) * 31) + this.f12161f) * 31;
        float f5 = this.f12162g;
        return ((floatToIntBits + (f5 != 0.0f ? Float.floatToIntBits(f5) : 0)) * 31) + (this.f12163h ? 1 : 0);
    }

    public int i() {
        return this.f12159d;
    }

    public float j() {
        return this.f12162g;
    }

    public boolean k() {
        return this.f12157b;
    }

    public RoundingMethod l() {
        return this.f12156a;
    }

    public boolean m() {
        return this.f12163h;
    }

    public RoundingParams n(@ColorInt int i2, float f4) {
        h.e(f4 >= 0.0f, "the border width cannot be < 0");
        this.f12160e = f4;
        this.f12161f = i2;
        return this;
    }

    public RoundingParams o(@ColorInt int i2) {
        this.f12161f = i2;
        return this;
    }

    public RoundingParams p(float f4) {
        h.e(f4 >= 0.0f, "the border width cannot be < 0");
        this.f12160e = f4;
        return this;
    }

    public RoundingParams q(float f4, float f5, float f6, float f7) {
        float[] h4 = h();
        h4[1] = f4;
        h4[0] = f4;
        h4[3] = f5;
        h4[2] = f5;
        h4[5] = f6;
        h4[4] = f6;
        h4[7] = f7;
        h4[6] = f7;
        return this;
    }

    public RoundingParams r(float[] fArr) {
        h.i(fArr);
        h.e(fArr.length == 8, "radii should have exactly 8 values");
        System.arraycopy(fArr, 0, h(), 0, 8);
        return this;
    }

    public RoundingParams s(float f4) {
        Arrays.fill(h(), f4);
        return this;
    }

    public RoundingParams t(@ColorInt int i2) {
        this.f12159d = i2;
        this.f12156a = RoundingMethod.OVERLAY_COLOR;
        return this;
    }

    public RoundingParams u(float f4) {
        h.e(f4 >= 0.0f, "the padding cannot be < 0");
        this.f12162g = f4;
        return this;
    }

    public RoundingParams v(boolean z3) {
        this.f12157b = z3;
        return this;
    }

    public RoundingParams w(RoundingMethod roundingMethod) {
        this.f12156a = roundingMethod;
        return this;
    }

    public RoundingParams x(boolean z3) {
        this.f12163h = z3;
        return this;
    }
}
