.class public Lcom/ss/android/socialbase/downloader/i/a;
.super Ljava/lang/Object;
.source "DownloadExpSwitchCode.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->D()I

    move-result v0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
