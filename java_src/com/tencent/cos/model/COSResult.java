package com.tencent.cos.model;

import com.tencent.cos.network.HttpResponse;
/* loaded from: classes4.dex */
public abstract class COSResult {
    public int code = -1;
    public String msg = null;

    public abstract void getResponse(HttpResponse httpResponse);
}
