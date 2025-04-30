package com.tencent.cos.model;

import com.tencent.cos.common.COSHttpRequestHead;
import com.tencent.cos.common.COSHttpRequstBody;
import com.tencent.cos.exception.COSClientException;
import com.tencent.cos.task.listener.ICmdTaskListener;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.LinkedHashMap;
import java.util.Map;
import net.lingala.zip4j.util.e;
/* loaded from: classes4.dex */
public class ListDirRequest extends COSRequest {
    private String content;
    private int num;
    private String prefix;

    public ListDirRequest() {
        this(null, null, null, 100, "", null, null);
    }

    @Override // com.tencent.cos.model.COSRequest
    public void checkParams() throws COSClientException {
        super.checkParams();
    }

    public String getContent() {
        return this.content;
    }

    public int getNum() {
        return this.num;
    }

    public String getPrefix() {
        return this.prefix;
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
        map2.put("num", String.valueOf(this.num));
        Map<String, String> map3 = this.bodys;
        COSHttpRequstBody.KEY.getClass();
        map3.put("context", this.content);
    }

    public void setContent(String str) {
        this.content = str;
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

    public void setNum(int i2) {
        this.num = i2;
    }

    public void setPrefix(String str) {
        if (str != null) {
            this.prefix = str;
            this.cosPath += str;
        }
    }

    public ListDirRequest(String str, String str2, String str3, int i2, String str4, String str5, ICmdTaskListener iCmdTaskListener) {
        super(str, str2, str3, str5, iCmdTaskListener);
        this.num = 100;
        this.content = "";
        this.prefix = null;
        this.num = i2;
        COSHttpRequstBody.OP.getClass();
        this.op = "list";
        this.httpMethod = "GET";
        COSHttpRequestHead.VALUE.getClass();
        this.httpContentType = HttpHeaders.Values.APPLICATION_JSON;
        this.content = str4;
        if (str3 == null || str3.trim().endsWith(e.F0)) {
            return;
        }
        this.cosPath = str3.trim() + e.F0;
    }
}
