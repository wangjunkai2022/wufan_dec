package com.tencent.cos.model;

import com.tencent.cos.common.COSHttpRequestHead;
import com.tencent.cos.common.COSHttpRequstBody;
import com.tencent.cos.common.COSHttpResponseKey;
import com.tencent.cos.exception.COSClientException;
import com.tencent.cos.task.listener.ICmdTaskListener;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class UpdateObjectRequest extends COSRequest {
    private String authority;
    private String bizAttr;
    private Map<String, String> customHeader;

    public UpdateObjectRequest() {
        this(null, null, null, null, null, null, null, null);
    }

    @Override // com.tencent.cos.model.COSRequest
    public void checkParams() throws COSClientException {
        super.checkParams();
    }

    public String getAuthority() {
        return this.authority;
    }

    public String getBizAttr() {
        return this.bizAttr;
    }

    public Map<String, String> getCustomHeader() {
        return this.customHeader;
    }

    public void setAuthority(String str) {
        this.authority = str;
    }

    public void setBizAttr(String str) {
        this.bizAttr = str;
    }

    @Override // com.tencent.cos.model.COSRequest
    public void setBodys() {
        if (this.bodys == null) {
            this.bodys = new LinkedHashMap();
        }
        Map<String, String> map = this.bodys;
        COSHttpRequstBody.KEY.getClass();
        map.put("op", this.op);
        if (this.bizAttr != null) {
            Map<String, String> map2 = this.bodys;
            COSHttpRequstBody.KEY.getClass();
            map2.put(COSHttpResponseKey.Data.BIZ_ATTR, this.bizAttr);
        }
        if (this.authority != null) {
            Map<String, String> map3 = this.bodys;
            COSHttpRequstBody.KEY.getClass();
            map3.put(COSHttpResponseKey.Data.AUTHORITY, this.authority);
        }
        if (this.customHeader != null) {
            JSONObject jSONObject = new JSONObject(this.customHeader);
            Map<String, String> map4 = this.bodys;
            COSHttpRequstBody.KEY.getClass();
            map4.put(COSHttpResponseKey.Data.CUSTOMER_HEADERS, jSONObject.toString());
        }
    }

    public void setCustomHeader(Map<String, String> map) {
        this.customHeader = map;
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
        map2.put("Content-Type", HttpHeaders.Values.APPLICATION_JSON);
        Map<String, String> map3 = this.headers;
        COSHttpRequestHead.KEY.getClass();
        COSHttpRequestHead.VALUE.getClass();
        map3.put("Accept", "*/*");
    }

    public UpdateObjectRequest(String str, String str2, String str3, String str4, String str5, Map<String, String> map, String str6, ICmdTaskListener iCmdTaskListener) {
        super(str, str2, str3, str6, iCmdTaskListener);
        this.bizAttr = null;
        this.authority = null;
        this.customHeader = null;
        COSHttpRequstBody.OP.getClass();
        this.op = "update";
        this.httpMethod = "POST";
        COSHttpRequestHead.VALUE.getClass();
        this.httpContentType = HttpHeaders.Values.APPLICATION_JSON;
        this.bizAttr = str4;
        this.authority = str5;
        this.customHeader = map;
    }
}
