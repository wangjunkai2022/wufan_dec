package com.tencent.cos.model;

import com.tencent.cos.network.HttpResponse;
/* loaded from: classes4.dex */
public class CreateDirResult extends COSResult {
    public long ctime;
    public String resource_path;

    @Override // com.tencent.cos.model.COSResult
    public void getResponse(HttpResponse httpResponse) {
        this.code = httpResponse.getRet();
        this.msg = httpResponse.getMsg();
        this.ctime = httpResponse.getCtime();
        this.resource_path = httpResponse.getSourcePath();
    }
}
