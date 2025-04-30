package com.facebook.common.util;

import com.facebook.infer.annotation.Functional;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public enum TriState {
    YES,
    NO,
    UNSET;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11755a;

        static {
            int[] iArr = new int[TriState.values().length];
            f11755a = iArr;
            try {
                iArr[TriState.YES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11755a[TriState.NO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11755a[TriState.UNSET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Functional
    public static TriState fromDbValue(int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                return UNSET;
            }
            return NO;
        }
        return YES;
    }

    @Functional
    public boolean asBoolean() {
        int i2 = a.f11755a[ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalStateException("Unrecognized TriState value: " + this);
                }
                throw new IllegalStateException("No boolean equivalent for UNSET");
            }
            return false;
        }
        return true;
    }

    @Nullable
    @Functional
    public Boolean asBooleanObject() {
        int i2 = a.f11755a[ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    return null;
                }
                throw new IllegalStateException("Unrecognized TriState value: " + this);
            }
            return Boolean.FALSE;
        }
        return Boolean.TRUE;
    }

    @Functional
    public int getDbValue() {
        int i2 = a.f11755a[ordinal()];
        int i4 = 1;
        if (i2 != 1) {
            i4 = 2;
            if (i2 != 2) {
                return 3;
            }
        }
        return i4;
    }

    @Functional
    public boolean isSet() {
        return this != UNSET;
    }

    @Functional
    public static TriState valueOf(boolean z3) {
        return z3 ? YES : NO;
    }

    @Functional
    public static TriState valueOf(Boolean bool) {
        return bool != null ? valueOf(bool.booleanValue()) : UNSET;
    }

    @Functional
    public boolean asBoolean(boolean z3) {
        int i2 = a.f11755a[ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    return z3;
                }
                throw new IllegalStateException("Unrecognized TriState value: " + this);
            }
            return false;
        }
        return true;
    }
}
