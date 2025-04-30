package com.tencent.cos.task.listener;

import com.tencent.cos.model.COSRequest;
import com.tencent.cos.model.COSResult;
/* loaded from: classes4.dex */
public interface IDownloadTaskListener<T1 extends COSRequest, T2 extends COSResult> extends ITaskListener {
    void onCancel(T1 t12, T2 t22);

    void onProgress(T1 t12, long j4, long j5);
}
