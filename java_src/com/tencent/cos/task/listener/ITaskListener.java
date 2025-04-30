package com.tencent.cos.task.listener;

import com.tencent.cos.model.COSRequest;
import com.tencent.cos.model.COSResult;
/* loaded from: classes4.dex */
public interface ITaskListener<T1 extends COSRequest, T2 extends COSResult> {
    void onFailed(T1 t12, T2 t22);

    void onSuccess(T1 t12, T2 t22);
}
