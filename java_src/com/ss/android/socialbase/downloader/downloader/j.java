package com.ss.android.socialbase.downloader.downloader;

import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.List;
import java.util.Map;
/* compiled from: IDownloadCache.java */
/* loaded from: classes4.dex */
public interface j {
    DownloadInfo a(int i2, int i4);

    DownloadInfo a(int i2, long j4);

    DownloadInfo a(int i2, long j4, String str, String str2);

    List<DownloadInfo> a(String str);

    void a(int i2, int i4, int i5, int i6);

    void a(int i2, int i4, int i5, long j4);

    void a(int i2, int i4, long j4);

    void a(int i2, List<com.ss.android.socialbase.downloader.model.b> list);

    void a(com.ss.android.socialbase.downloader.model.b bVar);

    boolean a(int i2, Map<Long, com.ss.android.socialbase.downloader.f.i> map);

    boolean a(DownloadInfo downloadInfo);

    DownloadInfo b(int i2);

    DownloadInfo b(int i2, long j4);

    List<DownloadInfo> b();

    List<DownloadInfo> b(String str);

    void b(int i2, List<com.ss.android.socialbase.downloader.model.b> list);

    void b(DownloadInfo downloadInfo);

    void b(com.ss.android.socialbase.downloader.model.b bVar);

    DownloadInfo c(int i2, long j4);

    List<com.ss.android.socialbase.downloader.model.b> c(int i2);

    List<DownloadInfo> c(String str);

    void c();

    DownloadInfo d(int i2, long j4);

    List<DownloadInfo> d(String str);

    void d(int i2);

    boolean d();

    boolean e();

    boolean e(int i2);

    boolean f(int i2);

    DownloadInfo g(int i2);

    DownloadInfo h(int i2);

    DownloadInfo i(int i2);

    DownloadInfo j(int i2);

    Map<Long, com.ss.android.socialbase.downloader.f.i> l(int i2);

    void m(int i2);

    List<com.ss.android.socialbase.downloader.f.i> n(int i2);
}
