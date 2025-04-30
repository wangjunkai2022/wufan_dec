.class Lcom/join/mgps/adapter/m3$c;
.super Ljava/lang/Thread;
.source "MyGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/m3;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/adapter/m3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m3$c;->b:Lcom/join/mgps/adapter/m3;

    iput-object p2, p0, Lcom/join/mgps/adapter/m3$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/Util/u;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/adapter/m3$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/join/mgps/Util/u;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/adapter/m3$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/adapter/m3$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    return-void
.end method
