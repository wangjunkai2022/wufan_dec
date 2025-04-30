package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.util.JacksonFeature;
/* loaded from: classes2.dex */
public final class JacksonFeatureSet<F extends JacksonFeature> {
    protected int _enabled;

    protected JacksonFeatureSet(int i2) {
        this._enabled = i2;
    }

    public static <F extends JacksonFeature> JacksonFeatureSet<F> fromBitmask(int i2) {
        return new JacksonFeatureSet<>(i2);
    }

    public static <F extends JacksonFeature> JacksonFeatureSet<F> fromDefaults(F[] fArr) {
        if (fArr.length <= 31) {
            int i2 = 0;
            for (F f4 : fArr) {
                if (f4.enabledByDefault()) {
                    i2 |= f4.getMask();
                }
            }
            return new JacksonFeatureSet<>(i2);
        }
        throw new IllegalArgumentException(String.format("Can not use type `%s` with JacksonFeatureSet: too many entries (%d > 31)", fArr[0].getClass().getName(), Integer.valueOf(fArr.length)));
    }

    public int asBitmask() {
        return this._enabled;
    }

    public boolean isEnabled(F f4) {
        return (f4.getMask() & this._enabled) != 0;
    }

    public JacksonFeatureSet<F> with(F f4) {
        int mask = f4.getMask() | this._enabled;
        return mask == this._enabled ? this : new JacksonFeatureSet<>(mask);
    }

    public JacksonFeatureSet<F> without(F f4) {
        int mask = (f4.getMask() ^ (-1)) & this._enabled;
        return mask == this._enabled ? this : new JacksonFeatureSet<>(mask);
    }
}
