.class Lcom/join/mgps/activity/ModGameIndexActivity_$s;
.super Lorg/androidannotations/api/a$c;
.source "ModGameIndexActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity_;->s1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/activity/ModGameIndexActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$s;->b:Lcom/join/mgps/activity/ModGameIndexActivity_;

    iput-object p6, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$s;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$s;->b:Lcom/join/mgps/activity/ModGameIndexActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity_$s;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity_;->y2(Lcom/join/mgps/activity/ModGameIndexActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
