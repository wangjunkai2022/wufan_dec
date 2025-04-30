package com.ss.android.socialbase.downloader.h;

import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.exception.i;
/* compiled from: IDownloadRunnableCallback.java */
/* loaded from: classes4.dex */
public interface f {
    com.ss.android.socialbase.downloader.exception.h a(BaseException baseException, long j4);

    com.ss.android.socialbase.downloader.exception.h a(com.ss.android.socialbase.downloader.model.b bVar, BaseException baseException, long j4);

    com.ss.android.socialbase.downloader.model.b a(int i2);

    void a(long j4) throws BaseException;

    void a(BaseException baseException, boolean z3);

    void a(b bVar);

    void a(com.ss.android.socialbase.downloader.network.g gVar);

    void a(String str, com.ss.android.socialbase.downloader.network.g gVar, long j4) throws BaseException, i;

    boolean a(BaseException baseException);

    void b(BaseException baseException);

    boolean b(long j4) throws BaseException;

    void c(BaseException baseException);
}
