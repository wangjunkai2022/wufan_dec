.class public Lcom/join/mgps/service/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/service/UpdateService$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EService;
.end annotation


# instance fields
.field private a:Landroid/app/NotificationManager;

.field private b:Ljava/io/File;

.field private c:Z

.field private d:Lcom/join/mgps/service/UpdateService$b;

.field private e:I

.field private f:I

.field private g:Landroidx/core/app/NotificationCompat$Builder;

.field h:Z

.field private i:Lcom/join/mgps/dto/VersionDto;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/service/UpdateService;->b:Ljava/io/File;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/service/UpdateService;->c:Z

    .line 4
    iput v0, p0, Lcom/join/mgps/service/UpdateService;->e:I

    const/16 v1, 0x4d2

    .line 5
    iput v1, p0, Lcom/join/mgps/service/UpdateService;->f:I

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/service/UpdateService;->h:Z

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/service/UpdateService;->j:Z

    return-void
.end method

.method private a(Ljava/io/File;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/join/android/app/common/utils/APKUtils;->x(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/service/UpdateService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/service/UpdateService;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/UpdateService;->b:Ljava/io/File;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/service/UpdateService;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/UpdateService;->b:Ljava/io/File;

    return-object p1
.end method

.method static synthetic e(Lcom/join/mgps/service/UpdateService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/service/UpdateService;->c:Z

    return p0
.end method

.method static synthetic f(Lcom/join/mgps/service/UpdateService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/service/UpdateService;->e:I

    return p0
.end method

.method static synthetic g(Lcom/join/mgps/service/UpdateService;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/service/UpdateService;->e:I

    return p1
.end method

.method static synthetic h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/UpdateService;->d:Lcom/join/mgps/service/UpdateService$b;

    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/dto/VersionDto;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/UpdateService;->i:Lcom/join/mgps/dto/VersionDto;

    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/service/UpdateService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/service/UpdateService;->f:I

    return p0
.end method

.method static synthetic k(Lcom/join/mgps/service/UpdateService;)Landroid/app/NotificationManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/UpdateService;->a:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic l(Lcom/join/mgps/service/UpdateService;Ljava/io/File;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/service/UpdateService;->a(Ljava/io/File;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic m(Lcom/join/mgps/service/UpdateService;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/service/UpdateService;->g:Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method private n(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/service/UpdateService$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/service/UpdateService$a;-><init>(Lcom/join/mgps/service/UpdateService;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static o(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    .line 3
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "downNotInstall"

    .line 1
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/service/UpdateService;->h:Z

    const-string v1, "papaUpdateinfo"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/VersionDto;

    iput-object v1, p0, Lcom/join/mgps/service/UpdateService;->i:Lcom/join/mgps/dto/VersionDto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcom/join/mgps/service/UpdateService;->h:Z

    if-nez v1, :cond_2

    const-string v1, "notification"

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/join/mgps/service/UpdateService;->a:Landroid/app/NotificationManager;

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    const-string v1, "channel_1"

    const-string v2, "\u66f4\u65b0"

    const/4 v3, 0x2

    .line 7
    new-instance v4, Landroid/app/NotificationChannel;

    invoke-direct {v4, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v4, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 9
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/service/UpdateService;->a:Landroid/app/NotificationManager;

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 11
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/join/mgps/service/UpdateService;->g:Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 12
    :cond_1
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/service/UpdateService;->g:Landroidx/core/app/NotificationCompat$Builder;

    .line 13
    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080690

    .line 14
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    long-to-int v4, v3

    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 16
    iget-object v4, p0, Lcom/join/mgps/service/UpdateService;->g:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v4, "\u5df2\u4e0b\u8f7d0%"

    .line 17
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 18
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 21
    iget-object v1, p0, Lcom/join/mgps/service/UpdateService;->g:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 22
    iget-object v1, p0, Lcom/join/mgps/service/UpdateService;->a:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/join/mgps/service/UpdateService;->f:I

    iget-object v3, p0, Lcom/join/mgps/service/UpdateService;->g:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :cond_2
    :goto_2
    new-instance v1, Lcom/join/mgps/service/UpdateService$b;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p0}, Lcom/join/mgps/service/UpdateService$b;-><init>(Lcom/join/mgps/service/UpdateService;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/service/UpdateService;->d:Lcom/join/mgps/service/UpdateService$b;

    const/4 v2, 0x3

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/join/mgps/service/UpdateService;->d:Lcom/join/mgps/service/UpdateService$b;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p1, :cond_4

    const-string v0, "url"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 28
    :cond_3
    iget-boolean v1, p0, Lcom/join/mgps/service/UpdateService;->j:Z

    if-nez v1, :cond_4

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/service/UpdateService;->n(Ljava/lang/String;)V

    .line 30
    :cond_4
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
