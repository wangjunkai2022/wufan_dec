package com.tencent.cos.model;

import com.tencent.cos.network.HttpResponse;
/* loaded from: classes4.dex */
public class GetObjectResult extends COSResult {
    public String downloadUrl = null;
    public String localPath = null;

    @Override // com.tencent.cos.model.COSResult
    public void getResponse(HttpResponse httpResponse) {
        this.code = httpResponse.getRet();
        this.msg = httpResponse.getMsg();
        this.downloadUrl = httpResponse.getDownloadUrl();
        this.localPath = httpResponse.getLocalPath();
    }
}
