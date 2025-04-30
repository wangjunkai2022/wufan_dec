.class public Lcom/ss/android/socialbase/downloader/impls/h;
.super Lcom/ss/android/socialbase/downloader/downloader/a;
.source "DefaultDownloadServiceHandler.java"


# static fields
.field private static final e:Ljava/lang/String; = "h"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;II)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/h;->e:Ljava/lang/String;

    const-string p2, "onStartCommand"

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/high16 p1, 0x40000

    .line 3
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/a;->e()V

    return-void
.end method

.method public c()V
    .locals 2

    const/high16 v0, 0x40000

    .line 1
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Z

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/h;->e:Ljava/lang/String;

    const-string v1, "onStartCommandOnMainThread"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 1

    .line 1
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    return-void
.end method
