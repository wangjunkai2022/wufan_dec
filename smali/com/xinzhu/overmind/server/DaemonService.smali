.class public Lcom/xinzhu/overmind/server/DaemonService;
.super Landroid/app/Service;
.source "DaemonService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/DaemonService$DaemonInnerService;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "DaemonService"

.field private static final b:I

.field public static final c:Ljava/lang/String; = "daemon_overmind"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    sput v1, Lcom/xinzhu/overmind/server/DaemonService;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 1
    sget v0, Lcom/xinzhu/overmind/server/DaemonService;->b:I

    return v0
.end method

.method private b()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    const-string v3, "daemon_overmind"

    const-string v4, "overmind"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v3, -0x10000

    .line 5
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 6
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "daemon_overmind"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 3
    sget v1, Lcom/xinzhu/overmind/server/DaemonService;->b:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/DaemonService;->b()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/xinzhu/overmind/server/DaemonService$DaemonInnerService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/DaemonService;->c()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
