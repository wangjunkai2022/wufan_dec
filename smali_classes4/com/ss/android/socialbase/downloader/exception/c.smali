.class public Lcom/ss/android/socialbase/downloader/exception/c;
.super Lcom/ss/android/socialbase/downloader/exception/f;
.source "DownloadOnlyWifiException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x3f5

    const-string v1, "download only wifi"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    return-void
.end method
