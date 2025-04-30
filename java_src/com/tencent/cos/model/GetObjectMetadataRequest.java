package com.tencent.cos.model;

import com.tencent.cos.common.COSHttpRequestHead;
import com.tencent.cos.common.COSHttpRequstBody;
import com.tencent.cos.exception.COSClientException;
import com.tencent.cos.task.listener.ICmdTaskListener;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class GetObjectMetadataRequest extends COSRequest {
    public GetObjectMetadataRequest() {
        this(null, null, null, null, null);
    }

    @Override // com.tencent.cos.model.COSRequest
    public void checkParams() throws COSClientException {
        super.checkParams();
    }

    @Override // com.tencent.cos.model.COSRequest
    public void setBodys() {
        if (this.bodys == null) {
            this.bodys = new LinkedHashMap();
        }
        Map<String, String> map = this.bodys;
        COSHttpRequstBody.KEY.getClass();
        map.put("op", this.op);
    }

    @Override // com.tencent.cos.model.COSRequest
    public void setHeaders() {
        if (this.headers == null) {
            this.headers = new LinkedHashMap();
        }
        Map<String, String> map = this.headers;
        COSHttpRequestHead.KEY.getClass();
        map.put("Authorization", this.sign);
        Map<String, String> map2 = this.headers;
        COSHttpRequestHead.KEY.getClass();
        COSHttpRequestHead.VALUE.getClass();
        map2.put("Accept", "*/*");
    }

    public GetObjectMetadataRequest(String str, String str2, String str3, String str4, ICmdTaskListener iCmdTaskListener) {
        super(str, str2, str3, str4, iCmdTaskListener);
        COSHttpRequstBody.OP.getClass();
        this.op = "stat";
        this.httpMethod = "GET";
    }
}
