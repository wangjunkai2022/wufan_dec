.class public Lcom/join/mgps/Util/q0;
.super Ljava/lang/Object;
.source "JPushUtils.java"


# static fields
.field public static final c:Ljava/lang/String; = "JPUSH_APPKEY"

.field private static final d:I = 0x3e9

.field private static final e:I = 0x3ea


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "JPushUtils"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/Util/q0;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/join/mgps/Util/q0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/q0$a;-><init>(Lcom/join/mgps/Util/q0;)V

    iput-object v0, p0, Lcom/join/mgps/Util/q0;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "intentDateBean"

    .line 3
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    new-instance p1, Lcom/join/mgps/Util/g1;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Lcom/join/mgps/Util/g1;-><init>(Landroid/content/Context;I)V

    const-string p1, "notification"

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "channel_1"

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_0

    const/4 v3, 0x4

    .line 7
    new-instance v5, Landroid/app/NotificationChannel;

    const-string v6, "jpush\u901a\u77e5"

    invoke-direct {v5, v4, v6, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 8
    invoke-virtual {p1, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    long-to-int v1, v5

    const/high16 v5, 0x8000000

    .line 12
    invoke-static {p0, v1, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f080690

    .line 13
    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 14
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v5, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 16
    invoke-virtual {v1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 17
    invoke-virtual {p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 18
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 19
    invoke-virtual {p2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 20
    invoke-virtual {p2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 22
    invoke-static {p0}, Lcom/join/mgps/Util/q0;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/Util/q0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/q0;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    const-string v0, "power"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const v0, 0x3000001a

    const-string v1, ""

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    .line 3
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    const-string v1, "JPUSH_APPKEY"

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_2

    .line 6
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0x18

    if-eq v1, v2, :cond_1

    goto :goto_1

    :catch_0
    :cond_1
    move-object v0, p0

    :catch_1
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[\u4e00-\u9fa50-9a-zA-Z_-]{0,}$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static h(Lcom/join/mgps/db/tables/JPushRecordTable;)V
    .locals 4

    .line 1
    invoke-static {}, Ln1/z;->n()Ln1/z;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/db/tables/JPushRecordTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/JPushRecordTable;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/JPushRecordTable;->setContent(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/JPushRecordTable;->setTitle(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getPush_time()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/JPushRecordTable;->setPush_time(J)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getCreate_time()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/JPushRecordTable;->setCreate_time(J)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getRetention_time()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/JPushRecordTable;->setRetention_time(J)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getLink_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/JPushRecordTable;->setLink_type(I)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ln1/z;->n()Ln1/z;

    move-result-object p0

    invoke-virtual {p0, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/JPushRecordTable;

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/JPushRecordTable;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-static {}, Ln1/z;->n()Ln1/z;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_0

    .line 15
    :cond_2
    new-instance v0, Lcom/join/mgps/db/tables/JPushRecordTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/JPushRecordTable;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/JPushRecordTable;->setContent(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/JPushRecordTable;->setTitle(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getPush_time()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/JPushRecordTable;->setPush_time(J)V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getCreate_time()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/JPushRecordTable;->setCreate_time(J)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getRetention_time()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/JPushRecordTable;->setRetention_time(J)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getLink_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/JPushRecordTable;->setLink_type(I)V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/JPushRecordTable;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ln1/z;->n()Ln1/z;

    move-result-object p0

    invoke-virtual {p0, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-static {}, Ln1/z;->n()Ln1/z;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/db/tables/JPushRecordTable;

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/JPushRecordTable;->getPush_time()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-lez v6, :cond_1

    invoke-virtual {v3}, Lcom/join/mgps/db/tables/JPushRecordTable;->getPush_time()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/join/mgps/db/tables/JPushRecordTable;->getRetention_time()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v6, v1, v4

    if-gez v6, :cond_1

    .line 8
    new-instance v4, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v4}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/db/tables/JPushRecordTable;->getTpl_type()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/JPushRecordTable;->getLink_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/JPushRecordTable;->getLink_type()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/JPushRecordTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/JPushRecordTable;->getJump_type()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 14
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/JPushRecordTable;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/JPushRecordTable;->getContent()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {p0, v4, v5, v6}, Lcom/join/mgps/Util/q0;->a(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ln1/z;->n()Ln1/z;

    move-result-object v4

    invoke-virtual {v4, v3}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/JPushRecordTable;->getPush_time()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/join/mgps/db/tables/JPushRecordTable;->getRetention_time()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    .line 19
    invoke-static {}, Ln1/z;->n()Ln1/z;

    move-result-object v4

    invoke-virtual {v4, v3}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static j(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method private k(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private m()V
    .locals 0

    return-void
.end method
