.class public final synthetic Lcom/join/android/app/common/dialog/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/common/dialog/g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/join/android/app/common/dialog/g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->N(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method
