package com.tencent.cos.common;

import com.tencent.cos.common.COSHttpResponseKey;
/* loaded from: classes4.dex */
public final class BodyKey {
    private static BodyKey key;
    public final String OP = "op";
    public final String BIZ_ATTR = COSHttpResponseKey.Data.BIZ_ATTR;
    public final String FLAG = "flag";
    public final String AUTHORITY = COSHttpResponseKey.Data.AUTHORITY;
    public final String CUSTOM_HEADERS = COSHttpResponseKey.Data.CUSTOMER_HEADERS;
    public final String INSERT_ONLY = "insertOnly";
    public final String FORBID = "forbid";
    public final String DEST_FIELD = "dest_fileid";
    public final String TO_OVER_WRITE = "to_over_write";
    public final String NUM = "num";
    public final String CONTEXT = "context";
    public final String SHA = COSHttpResponseKey.Data.SHA;
    public final String FILE_CONTENT = "filecontent";
    public final String FILE_SIZE = COSHttpResponseKey.Data.FILESIZE;
    public final String SLICE_SIZE = COSHttpResponseKey.Data.SLICE_SIZE;
    public final String SESSION = "session";
    public final String OFFSET = "offset";
    public final String UPLOAD_PARTS = "uploadparts";
    public final UploadParts uploadParts = UploadParts.getInstance();

    private BodyKey() {
    }

    public static synchronized BodyKey getInstance() {
        BodyKey bodyKey;
        synchronized (BodyKey.class) {
            if (key == null) {
                key = new BodyKey();
            }
            bodyKey = key;
        }
        return bodyKey;
    }
}
