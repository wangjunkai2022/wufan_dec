.class Lcom/github/snowdream/android/app/downloader/c$b;
.super Ljava/lang/Thread;
.source "CommonDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/snowdream/android/app/downloader/c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/c;


# direct methods
.method constructor <init>(Lcom/github/snowdream/android/app/downloader/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c$b;->a:Lcom/github/snowdream/android/app/downloader/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c$b;->a:Lcom/github/snowdream/android/app/downloader/c;

    invoke-static {v0}, Lcom/github/snowdream/android/app/downloader/c;->c(Lcom/github/snowdream/android/app/downloader/c;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c$b;->a:Lcom/github/snowdream/android/app/downloader/c;

    invoke-static {v0}, Lcom/github/snowdream/android/app/downloader/c;->c(Lcom/github/snowdream/android/app/downloader/c;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 4
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c$b;->a:Lcom/github/snowdream/android/app/downloader/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/snowdream/android/app/downloader/c;->d(Lcom/github/snowdream/android/app/downloader/c;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method
