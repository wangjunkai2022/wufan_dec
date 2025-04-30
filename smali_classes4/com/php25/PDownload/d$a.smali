.class Lcom/php25/PDownload/d$a;
.super Ljava/lang/Thread;
.source "DownloadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/php25/PDownload/d;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/php25/PDownload/d$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p2, p0, Lcom/php25/PDownload/d$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/php25/PDownload/d$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/php25/PDownload/d$a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    return-void
.end method
