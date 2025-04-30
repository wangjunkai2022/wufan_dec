package com.tencent.cos.model;

import com.tencent.cos.common.COSHttpRequestHead;
import com.tencent.cos.task.listener.IDownloadTaskListener;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class GetObjectRequest extends COSRequest {
    public GetObjectRequest(String str, String str2) {
        this(str, str2, null, null);
    }

    @Override // com.tencent.cos.model.COSRequest
    public void setBodys() {
    }

    @Override // com.tencent.cos.model.COSRequest
    public void setHeaders() {
        if (this.headers == null) {
            this.headers = new LinkedHashMap();
        }
        if (this.sign != null) {
            Map<String, String> map = this.headers;
            COSHttpRequestHead.KEY.getClass();
            map.put("Authorization", this.sign);
        }
        Map<String, String> map2 = this.headers;
        COSHttpRequestHead.KEY.getClass();
        COSHttpRequestHead.VALUE.getClass();
        map2.put("Connection", "Keep-Alive");
        Map<String, String> map3 = this.headers;
        COSHttpRequestHead.KEY.getClass();
        COSHttpRequestHead.VALUE.getClass();
        map3.put("Accept", "*/*");
    }

    public GetObjectRequest(String str, String str2, String str3, IDownloadTaskListener iDownloadTaskListener) {
        super(str, str2, str3, iDownloadTaskListener);
        this.httpMethod = "GET";
    }
}
