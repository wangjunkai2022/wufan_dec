package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.util.JacksonFeature;
/* loaded from: classes2.dex */
public interface FormatFeature extends JacksonFeature {
    @Override // com.fasterxml.jackson.core.util.JacksonFeature
    boolean enabledByDefault();

    @Override // com.fasterxml.jackson.core.util.JacksonFeature
    boolean enabledIn(int i2);

    @Override // com.fasterxml.jackson.core.util.JacksonFeature
    int getMask();
}
