package com.tencent.cos.common;

import com.tencent.cos.common.COSHttpResponseKey;
/* loaded from: classes4.dex */
public final class UploadParts {
    private static UploadParts key;
    public final String OFFSET = "offset";
    public final String DATA_LEN = COSHttpResponseKey.Data.DATALEN;
    public final String DATA_SHA = "datasha";

    private UploadParts() {
    }

    public static synchronized UploadParts getInstance() {
        UploadParts uploadParts;
        synchronized (UploadParts.class) {
            if (key == null) {
                key = new UploadParts();
            }
            uploadParts = key;
        }
        return uploadParts;
    }
}
