package com.tencent.cos.model;

import com.tencent.cos.network.HttpResponse;
/* loaded from: classes4.dex */
public class UpdateObjectResult extends COSResult {
    @Override // com.tencent.cos.model.COSResult
    public void getResponse(HttpResponse httpResponse) {
        this.code = httpResponse.getRet();
        this.msg = httpResponse.getMsg();
    }
}
