package com.tencent.cos.model;

import com.tencent.cos.network.HttpResponse;
import java.util.Map;
/* loaded from: classes4.dex */
public class GetObjectMetadataResult extends COSResult {
    public String name = null;
    public String biz_attr = null;
    public int filelen = 0;
    public int filesize = 0;
    public String sha = null;
    public long ctime = 0;
    public long mtime = 0;
    public String access_url = null;
    public String authority = null;
    private String source_url = null;
    public Map<String, String> custom_headers = null;

    @Override // com.tencent.cos.model.COSResult
    public void getResponse(HttpResponse httpResponse) {
        this.code = httpResponse.getRet();
        this.msg = httpResponse.getMsg();
        this.name = httpResponse.getName();
        this.biz_attr = httpResponse.getBizattr();
        this.filesize = httpResponse.getFileSize();
        this.filelen = httpResponse.getFileLen();
        this.sha = httpResponse.getSha();
        this.mtime = httpResponse.getMtime();
        this.ctime = httpResponse.getCtime();
        this.access_url = httpResponse.getAccessUrl();
        this.authority = httpResponse.getAuthority();
        this.custom_headers = httpResponse.getCustomHeaders();
        this.source_url = httpResponse.getSourceUrl();
    }
}
