package com.tencent.cos.model;

import com.tencent.cos.network.HttpResponse;
/* loaded from: classes4.dex */
public class PutObjectResult extends COSResult {
    public int datalen;
    public long offset;
    public String session = null;
    public int slice_size = 0;
    public int serial_upload = -1;
    public String url = null;
    public String access_url = null;
    public String source_url = null;
    public String resource_path = null;
    public String preview_url = null;

    @Override // com.tencent.cos.model.COSResult
    public void getResponse(HttpResponse httpResponse) {
        this.code = httpResponse.getRet();
        this.msg = httpResponse.getMsg();
        if (httpResponse.getOperatorType() == 1) {
            this.url = httpResponse.getUrl();
            this.access_url = httpResponse.getAccessUrl();
            this.source_url = httpResponse.getSourceUrl();
            this.resource_path = httpResponse.getSourcePath();
            this.preview_url = httpResponse.getPreviewUrl();
        } else if (httpResponse.getOperatorType() == 11) {
            this.slice_size = httpResponse.getSliceSize();
            this.serial_upload = httpResponse.getSerialUpload();
            this.session = httpResponse.getSession();
            this.offset = httpResponse.getOffSet();
            this.datalen = httpResponse.getDataLen();
            this.url = httpResponse.getUrl();
            this.access_url = httpResponse.getAccessUrl();
            this.resource_path = httpResponse.getSourcePath();
            this.source_url = httpResponse.getSourceUrl();
            this.preview_url = httpResponse.getPreviewUrl();
        }
    }
}
