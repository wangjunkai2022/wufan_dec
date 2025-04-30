package com.switfpass.pay.activity.zxing.decoding;
/* loaded from: classes4.dex */
enum d {
    PREVIEW,
    SUCCESS,
    DONE;

    /* renamed from: values  reason: to resolve conflict with enum method */
    public static d[] valuesCustom() {
        d[] valuesCustom = values();
        int length = valuesCustom.length;
        d[] dVarArr = new d[length];
        System.arraycopy(valuesCustom, 0, dVarArr, 0, length);
        return dVarArr;
    }
}
