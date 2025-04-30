.class final Lcom/bytedance/sdk/openadsdk/downloadnew/d$6;
.super Ljava/lang/Object;
.source "TTDownloadVisitor.java"

# interfaces
.implements Lcom/ss/android/download/api/download/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadEventConfig;)V
    .locals 0

    const-string p1, "TTDownloadVisitor"

    const-string p2, "completeListener: onDownloadStart"

    .line 1
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    const-string p1, "TTDownloadVisitor"

    const-string v0, "completeListener: onCanceled"

    .line 4
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Ljava/lang/String;)V
    .locals 0

    const-string p1, "TTDownloadVisitor"

    const-string p2, "completeListener: onDownloadFailed"

    .line 3
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .locals 0

    const-string p1, "TTDownloadVisitor"

    const-string p2, "completeListener: onDownloadFinished"

    .line 2
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    .locals 1

    const-string p1, "TTDownloadVisitor"

    const-string v0, "completeListener: onInstalled"

    .line 1
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->b(Ljava/lang/String;)V

    return-void
.end method
