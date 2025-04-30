package com.tencent.cos.model;

import com.tencent.cos.network.HttpResponse;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class ListDirResult extends COSResult {
    public String contentStr;
    public String context;
    public List<String> infos = new ArrayList();
    public boolean listover;

    @Override // com.tencent.cos.model.COSResult
    public void getResponse(HttpResponse httpResponse) {
        this.code = httpResponse.getRet();
        this.msg = httpResponse.getMsg();
        this.context = httpResponse.getContext();
        this.listover = httpResponse.getListOver().booleanValue();
        this.infos = httpResponse.getListDirInfos();
        this.contentStr = httpResponse.getBody();
    }
}
