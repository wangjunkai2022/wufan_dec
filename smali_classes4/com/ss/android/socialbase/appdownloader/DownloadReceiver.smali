.class public Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->G()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$2;-><init>(Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->a()Lcom/ss/android/socialbase/appdownloader/c/c;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/ss/android/socialbase/appdownloader/c/c;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    :cond_2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6
    sget-object p2, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a:Ljava/lang/String;

    const-string v1, "Received broadcast intent for android.intent.action.BOOT_COMPLETED"

    invoke-static {p2, v1}, Lcom/ss/android/socialbase/downloader/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 10
    sget-object p2, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a:Ljava/lang/String;

    const-string v1, "Received broadcast intent for android.intent.action.MEDIA_MOUNTED"

    invoke-static {p2, v1}, Lcom/ss/android/socialbase/downloader/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14
    :cond_7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;-><init>(Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    :goto_0
    return-void
.end method
