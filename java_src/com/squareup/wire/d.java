package com.squareup.wire;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* synthetic */ class d {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

    static {
        int[] iArr = new int[FieldEncoding.values().length];
        $EnumSwitchMapping$0 = iArr;
        iArr[FieldEncoding.VARINT.ordinal()] = 1;
        iArr[FieldEncoding.FIXED32.ordinal()] = 2;
        iArr[FieldEncoding.FIXED64.ordinal()] = 3;
        iArr[FieldEncoding.LENGTH_DELIMITED.ordinal()] = 4;
    }
}
