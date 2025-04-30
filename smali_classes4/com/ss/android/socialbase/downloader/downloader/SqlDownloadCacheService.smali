.class public Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;
.super Landroid/app/Service;
.source "SqlDownloadCacheService.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->x()Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/impls/d;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/impls/d;->f()Lcom/ss/android/socialbase/downloader/downloader/t;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/downloader/t;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/ss/android/socialbase/downloader/downloader/t;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_0
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Landroid/os/IBinder;

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    :cond_0
    return p1
.end method
