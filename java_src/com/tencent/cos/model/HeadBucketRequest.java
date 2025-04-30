package com.tencent.cos.model;

import com.tencent.cos.common.COSHttpRequestHead;
import com.tencent.cos.common.COSHttpRequstBody;
import com.tencent.cos.exception.COSClientException;
import com.tencent.cos.task.listener.ICmdTaskListener;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class HeadBucketRequest extends COSRequest {
    private int flag;

    public HeadBucketRequest() {
        this(null, null, null, 65535, null, null);
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
        Map<String, String> map2 = this.bodys;
        COSHttpRequstBody.KEY.getClass();
        map2.put("flag", String.valueOf(this.flag));
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
        map2.put("Content-Type", this.httpContentType);
        Map<String, String> map3 = this.headers;
        COSHttpRequestHead.KEY.getClass();
        COSHttpRequestHead.VALUE.getClass();
        map3.put("Connection", "Keep-Alive");
        Map<String, String> map4 = this.headers;
        COSHttpRequestHead.KEY.getClass();
        COSHttpRequestHead.VALUE.getClass();
        map4.put("Accept", "*/*");
    }

    public HeadBucketRequest(String str, String str2, String str3, int i2, String str4, ICmdTaskListener iCmdTaskListener) {
        super(str, str2, str3, str4, iCmdTaskListener);
        this.flag = 65535;
        COSHttpRequstBody.OP.getClass();
        this.op = "stat";
        this.httpMethod = "GET";
        COSHttpRequestHead.VALUE.getClass();
        this.httpContentType = HttpHeaders.Values.APPLICATION_JSON;
        this.flag = i2;
    }
}
