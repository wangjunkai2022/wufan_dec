.class public Lcom/join/mgps/customview/l;
.super Ljava/lang/Object;
.source "JPushNotificationManger.java"


# static fields
.field public static f:I = 0x1

.field public static g:Ljava/lang/String; = "BROADCAST_ACTION_CLICK"

.field private static h:Lcom/join/mgps/customview/l;


# instance fields
.field private a:Landroid/app/NotificationManager;

.field private b:Landroid/widget/RemoteViews;

.field private c:Ljava/lang/String;

.field private final d:I

.field private e:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channelId_JPush"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/l;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/l;->d:I

    return-void
.end method

.method private c()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/join/mgps/customview/l;->c:Ljava/lang/String;

    const-string v2, "channelName"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/l;->a:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static d()Lcom/join/mgps/customview/l;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/l;->h:Lcom/join/mgps/customview/l;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/customview/l;

    invoke-direct {v0}, Lcom/join/mgps/customview/l;-><init>()V

    sput-object v0, Lcom/join/mgps/customview/l;->h:Lcom/join/mgps/customview/l;

    .line 3
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/l;->h:Lcom/join/mgps/customview/l;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/l;->a:Landroid/app/NotificationManager;

    sget v1, Lcom/join/mgps/customview/l;->f:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string v0, "statusbar"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "collapse"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "collapsePanels"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public e(Landroid/content/Context;)Z
    .locals 11
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    const-string v0, "notification"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getImportance()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "checkOpNoThrow"

    const-string v2, "OP_POST_NOTIFICATION"

    const-string v3, "appops"

    .line 3
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7
    :try_start_0
    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    .line 8
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v8, v7, v10

    invoke-virtual {v5, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 9
    invoke-virtual {v5, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 10
    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v5, v6, [Ljava/lang/Object;

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    aput-object p1, v5, v10

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public f(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "JPushInterface.EXTRA_TITLE"

    .line 1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JPushInterface.EXTRA_MESSAGE"

    .line 2
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f110034

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "notification"

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/join/mgps/customview/l;->a:Landroid/app/NotificationManager;

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const/4 v4, 0x4

    .line 7
    new-instance v5, Landroid/app/NotificationChannel;

    const-string v6, "channel_1"

    const-string v7, "jpush\u901a\u77e5"

    invoke-direct {v5, v6, v7, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 8
    iget-object v4, p0, Lcom/join/mgps/customview/l;->a:Landroid/app/NotificationManager;

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 9
    :cond_1
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/join/mgps/customview/l;->g:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p2, 0x8000000

    const/4 v5, 0x1

    .line 11
    invoke-static {p1, v5, v4, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f080690

    .line 13
    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 14
    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, p0, Lcom/join/mgps/customview/l;->c:Ljava/lang/String;

    invoke-direct {v7, p1, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x7

    .line 24
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    new-array p2, v5, [J

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, p2, v0

    .line 25
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 26
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x2

    .line 27
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/l;->e:Landroid/app/Notification;

    if-lt v2, v3, :cond_2

    .line 29
    invoke-direct {p0}, Lcom/join/mgps/customview/l;->c()V

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/l;->a:Landroid/app/NotificationManager;

    sget p2, Lcom/join/mgps/customview/l;->f:I

    iget-object v0, p0, Lcom/join/mgps/customview/l;->e:Landroid/app/Notification;

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
