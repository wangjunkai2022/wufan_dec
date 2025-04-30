package com.tencent.cos.model;

import com.tencent.cos.common.COSHttpRequestHead;
import com.tencent.cos.common.COSHttpRequstBody;
import com.tencent.cos.common.COSHttpResponseKey;
import com.tencent.cos.exception.COSClientException;
import com.tencent.cos.task.listener.ICmdTaskListener;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.LinkedHashMap;
import java.util.Map;
import net.lingala.zip4j.util.e;
/* loaded from: classes4.dex */
public class CreateDirRequest extends COSRequest {
    private String biz_attr;

    public CreateDirRequest() {
        this(null, null, null, null, null, null);
    }

    @Override // com.tencent.cos.model.COSRequest
    public void checkParams() throws COSClientException {
        super.checkParams();
    }

    public String getBizAttr() {
        return this.biz_attr;
    }

    public void setBizAttr(String str) {
        this.biz_attr = str;
    }

    @Override // com.tencent.cos.model.COSRequest
    public void setBodys() {
        if (this.bodys == null) {
            this.bodys = new LinkedHashMap();
        }
        Map<String, String> map = this.bodys;
        COSHttpRequstBody.KEY.getClass();
        map.put("op", this.op);
        if (this.biz_attr != null) {
            Map<String, String> map2 = this.bodys;
            COSHttpRequstBody.KEY.getClass();
            map2.put(COSHttpResponseKey.Data.BIZ_ATTR, this.biz_attr);
        }
    }

    @Override // com.tencent.cos.model.COSRequest
    public void setCosPath(String str) {
        if (str != null && !str.trim().endsWith(e.F0)) {
            this.cosPath = str.trim() + e.F0;
            return;
        }
        this.cosPath = str;
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
        map3.put("Accept", "*/*");
    }

    public CreateDirRequest(String str, String str2, String str3, String str4, String str5, ICmdTaskListener iCmdTaskListener) {
        super(str, str2, str3, str5, iCmdTaskListener);
        this.biz_attr = str4;
        this.httpMethod = "POST";
        COSHttpRequstBody.OP.getClass();
        this.op = "create";
        COSHttpRequestHead.VALUE.getClass();
        this.httpContentType = HttpHeaders.Values.APPLICATION_JSON;
        if (str3 == null || str3.trim().endsWith(e.F0)) {
            return;
        }
        this.cosPath = str3.trim() + e.F0;
    }
}
