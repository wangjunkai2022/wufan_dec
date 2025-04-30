.class public Lcom/ss/android/downloadlib/addownload/d/g;
.super Ljava/lang/Object;
.source "ReserveWifiInterceptor.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/d/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/api/a/b;ILcom/ss/android/downloadlib/addownload/d/c;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 2
    invoke-static {p1, v0, p2, p3}, Lcom/ss/android/downloadlib/addownload/l;->a(Lcom/ss/android/downloadad/api/a/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/downloadlib/addownload/d/c;)Z

    move-result p1

    return p1
.end method
