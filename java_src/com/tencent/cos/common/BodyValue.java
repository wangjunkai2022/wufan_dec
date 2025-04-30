package com.tencent.cos.common;

import com.join.mgps.activity.UploadActivity;
/* loaded from: classes4.dex */
public final class BodyValue {
    private static BodyValue value;
    public final String CREATE = "create";
    public final String LIST = "list";
    public final String UPDATE = "update";
    public final String STAT = "stat";
    public final String MOVE = "move";
    public final String DELETE = "delete";
    public final String UPLOAD = UploadActivity.f36007o0;
    public final String UPLOAD_SLICE = "upload_slice";
    public final String UPLOAD_SLICE_INIT = "upload_slice_init";
    public final String UPLOAD_SLICE_DATA = "upload_slice_data";
    public final String UPLOAD_SLICE_FINISH = "upload_slice_finish";
    public final String UPLOAD_SLICE__LIST = "upload_slice_list";

    private BodyValue() {
    }

    public static synchronized BodyValue getInstance() {
        BodyValue bodyValue;
        synchronized (BodyValue.class) {
            if (value == null) {
                value = new BodyValue();
            }
            bodyValue = value;
        }
        return bodyValue;
    }
}
