package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.util.JacksonFeature;
/* loaded from: classes2.dex */
public enum StreamWriteCapability implements JacksonFeature {
    CAN_WRITE_BINARY_NATIVELY(false),
    CAN_WRITE_FORMATTED_NUMBERS(false);
    
    private final boolean _defaultState;
    private final int _mask = 1 << ordinal();

    StreamWriteCapability(boolean z3) {
        this._defaultState = z3;
    }

    @Override // com.fasterxml.jackson.core.util.JacksonFeature
    public boolean enabledByDefault() {
        return this._defaultState;
    }

    @Override // com.fasterxml.jackson.core.util.JacksonFeature
    public boolean enabledIn(int i2) {
        return (i2 & this._mask) != 0;
    }

    @Override // com.fasterxml.jackson.core.util.JacksonFeature
    public int getMask() {
        return this._mask;
    }
}
