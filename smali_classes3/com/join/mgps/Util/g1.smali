.class public Lcom/join/mgps/Util/g1;
.super Ljava/lang/Object;
.source "NotificationAdmain.java"


# static fields
.field private static g:I = 0x0

.field private static final h:I = 0x8000000


# instance fields
.field private a:Landroid/app/NotificationManager;

.field private b:Landroid/app/Notification;

.field private c:Landroidx/core/app/NotificationCompat$Builder;

.field private d:Landroid/app/Notification$Builder;

.field private e:Landroid/content/Context;

.field f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/join/mgps/Util/g1;->f:I

    .line 3
    sput p2, Lcom/join/mgps/Util/g1;->g:I

    .line 4
    iput-object p1, p0, Lcom/join/mgps/Util/g1;->e:Landroid/content/Context;

    const-string p2, "notification"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/join/mgps/Util/g1;->a:Landroid/app/NotificationManager;

    .line 6
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p0, Lcom/join/mgps/Util/g1;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/Util/g1;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/Util/g1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/g1;->g()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/g1;->b:Landroid/app/Notification;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/Util/g1;->a:Landroid/app/NotificationManager;

    sget v2, Lcom/join/mgps/Util/g1;->g:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private h(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/join/mgps/Util/g1;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/Util/g1;->d:Landroid/app/Notification$Builder;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/g1;->e:Landroid/content/Context;

    iget v1, p0, Lcom/join/mgps/Util/g1;->f:I

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/g1;->d:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->d:Landroid/app/Notification$Builder;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->d:Landroid/app/Notification$Builder;

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->d:Landroid/app/Notification$Builder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 7
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->d:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->d:Landroid/app/Notification$Builder;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->d:Landroid/app/Notification$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "android.resource://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/join/mgps/Util/g1;->e:Landroid/content/Context;

    .line 10
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p3, 0x7f100000

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private i(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/high16 v0, 0x14000000

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/g1;->e:Landroid/content/Context;

    iget v1, p0, Lcom/join/mgps/Util/g1;->f:I

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 7
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, p5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 11
    sget p1, Lcom/join/mgps/Util/g1;->g:I

    if-ne p1, p2, :cond_0

    .line 12
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "android.resource://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/join/mgps/Util/g1;->e:Landroid/content/Context;

    .line 13
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p3, 0x7f100000

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/g1;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public d(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/Util/g1;->i(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/Util/g1;->g()V

    return-void
.end method

.method public e(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/Util/g1;->i(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/Util/g1;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 5
    iget-object p2, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/Util/g1;->g()V

    return-void
.end method

.method public f(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/Util/g1;->i(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/join/mgps/Util/g1$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/Util/g1$a;-><init>(Lcom/join/mgps/Util/g1;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public j(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/Util/g1;->i(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 5
    new-instance p1, Landroid/content/Intent;

    iget-object p3, p0, Lcom/join/mgps/Util/g1;->e:Landroid/content/Context;

    const-class p4, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-direct {p1, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    long-to-int p4, p3

    .line 7
    iget-object p3, p0, Lcom/join/mgps/Util/g1;->e:Landroid/content/Context;

    const/high16 p5, 0x8000000

    invoke-static {p3, p4, p1, p5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 8
    iget-object p3, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    const/4 p3, 0x5

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    const/4 p3, 0x4

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    .line 11
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 12
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 13
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    new-instance p2, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {p2}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    const-string p3, "M.Lynn \u4f60\u597d\uff0c\u6211\u662fkale"

    .line 14
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    move-result-object p2

    const-string p3, "M.Lynn \u5df2\u6536\u5230\uff0c\u4fdd\u8bc1\u5b8c\u6210\u4efb\u52a1"

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    move-result-object p2

    const-string p3, "M.Lynn \u54c8\u54c8\uff0c\u660e\u767d\u4e86~"

    .line 15
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    move-result-object p2

    const-string p3, "+3 more"

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 17
    invoke-direct {p0}, Lcom/join/mgps/Util/g1;->g()V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x64
        0xc8
        0x12c
    .end array-data
.end method

.method public k(Landroid/widget/RemoteViews;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/Util/g1;->i(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/Util/g1;->c:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/Util/g1;->b:Landroid/app/Notification;

    .line 3
    iput-object p1, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/Util/g1;->a:Landroid/app/NotificationManager;

    sget p3, Lcom/join/mgps/Util/g1;->g:I

    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
