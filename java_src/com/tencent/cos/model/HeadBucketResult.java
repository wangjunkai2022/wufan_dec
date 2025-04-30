package com.tencent.cos.model;

import com.tencent.cos.network.HttpResponse;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class HeadBucketResult extends COSResult {
    public String CORSConfiguration;
    public String authority;
    public String biz_attr;
    public ArrayList<String> blackRefers;
    public ArrayList<String> cname;
    public long ctime;
    public String migrate_source_domain;
    public long mtime;
    public int need_preview;
    public ArrayList<String> refers;

    @Override // com.tencent.cos.model.COSResult
    public void getResponse(HttpResponse httpResponse) {
        this.code = httpResponse.getRet();
        this.msg = httpResponse.getMsg();
        this.refers = httpResponse.getRefers();
        this.cname = httpResponse.getCname();
        this.blackRefers = httpResponse.getBlackRefers();
        this.authority = httpResponse.getAuthority();
        this.ctime = httpResponse.getCtime();
        this.mtime = httpResponse.getMtime();
        this.biz_attr = httpResponse.getBizattr();
        this.migrate_source_domain = httpResponse.getMigrateSourceDomain();
        this.need_preview = httpResponse.getNeedPreview();
        this.CORSConfiguration = httpResponse.getCORSConfiguration();
    }
}
