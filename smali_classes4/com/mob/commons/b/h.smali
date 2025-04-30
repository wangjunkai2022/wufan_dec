.class public Lcom/mob/commons/b/h;
.super Lcom/mob/commons/b/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/b/h$a;
    }
.end annotation


# instance fields
.field private c:Lcom/mob/commons/b/h$a;

.field private d:Lcom/mob/commons/b/h$a;

.field private e:Lcom/mob/commons/b/h$a;

.field private f:Lcom/mob/commons/b/h$a;

.field private g:Lcom/mob/commons/b/h$a;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/commons/b/g;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/mob/commons/b/h$a;

    const-string v0, "0043dc[h[deTh"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mob/commons/b/h$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mob/commons/b/h;->c:Lcom/mob/commons/b/h$a;

    .line 3
    new-instance p1, Lcom/mob/commons/b/h$a;

    const-string v0, "004Cecdfde1h"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mob/commons/b/h$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mob/commons/b/h;->d:Lcom/mob/commons/b/h$a;

    .line 4
    new-instance p1, Lcom/mob/commons/b/h$a;

    const-string v0, "004j-dfdeGh"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mob/commons/b/h$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mob/commons/b/h;->e:Lcom/mob/commons/b/h$a;

    .line 5
    new-instance p1, Lcom/mob/commons/b/h$a;

    const-string v0, "004VdfdfdeFh"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mob/commons/b/h$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mob/commons/b/h;->f:Lcom/mob/commons/b/h$a;

    .line 6
    new-instance p1, Lcom/mob/commons/b/h$a;

    const-string v0, "0091fgdc!ee+ecdhHdih"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mob/commons/b/h$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mob/commons/b/h;->g:Lcom/mob/commons/b/h$a;

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/b/h;)Lcom/mob/commons/b/h$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/commons/b/h;->c:Lcom/mob/commons/b/h$a;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/mob/commons/b/h$a;Z)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/mob/commons/b/h$a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {p2}, Lcom/mob/commons/b/h$a;->a(Lcom/mob/commons/b/h$a;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "036$dgecdk.di@dk+dfgg(dgecFl,el$li0degcdcelfheddiLli5elecOeiSdkdeDhDfgShUdjJg"

    .line 4
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    invoke-static {p2}, Lcom/mob/commons/b/h$a;->b(Lcom/mob/commons/b/h$a;)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v6, v8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_5

    .line 6
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "005jUdfeddc=i"

    .line 7
    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 8
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p2, v2}, Lcom/mob/commons/b/h$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    if-nez p3, :cond_4

    const-string p3, "007i2dlZe\'dedh0ih"

    .line 10
    invoke-static {p3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_3

    .line 11
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/mob/commons/b/h$a;->a(J)V

    :cond_3
    const-string p2, "004@dgec)hi"

    .line 12
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_4

    .line 13
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/16 p3, 0x3e8

    if-eq p2, p3, :cond_4

    .line 14
    invoke-direct {p0}, Lcom/mob/commons/b/h;->j()V

    .line 15
    invoke-direct {p0, v8}, Lcom/mob/commons/b/h;->a(Z)Z

    move-result p2

    if-nez p2, :cond_4

    .line 16
    invoke-direct {p0, p1}, Lcom/mob/commons/b/h;->a(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :cond_4
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object v2

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    :try_start_3
    const-string p3, "1"

    .line 18
    invoke-virtual {p2, p3}, Lcom/mob/commons/b/h$a;->a(Ljava/lang/String;)V

    .line 19
    :cond_6
    invoke-direct {p0, v8}, Lcom/mob/commons/b/h;->a(Z)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 20
    invoke-direct {p0, p1}, Lcom/mob/commons/b/h;->a(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    if-eqz v1, :cond_8

    .line 21
    :goto_1
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v1, v0

    .line 22
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v1, :cond_8

    goto :goto_1

    :catchall_3
    :cond_8
    :goto_3
    return-object v0

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_9

    .line 23
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 24
    :catchall_5
    :cond_9
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private a(Z)Z
    .locals 3

    const-string v0, "0"

    if-nez p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/mob/commons/b/h;->g:Lcom/mob/commons/b/h$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mob/commons/b/h$a;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/mob/commons/b/h;->g:Lcom/mob/commons/b/h$a;

    invoke-virtual {p1}, Lcom/mob/commons/b/h$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mob/commons/b/h;->g:Lcom/mob/commons/b/h$a;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/mob/commons/b/h;->a(Landroid/content/Context;Lcom/mob/commons/b/h$a;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static synthetic b(Lcom/mob/commons/b/h;)Lcom/mob/commons/b/h$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/commons/b/h;->d:Lcom/mob/commons/b/h$a;

    return-object p0
.end method

.method static synthetic c(Lcom/mob/commons/b/h;)Lcom/mob/commons/b/h$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/commons/b/h;->e:Lcom/mob/commons/b/h$a;

    return-object p0
.end method

.method static synthetic d(Lcom/mob/commons/b/h;)Lcom/mob/commons/b/h$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/commons/b/h;->f:Lcom/mob/commons/b/h$a;

    return-object p0
.end method

.method private j()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/h;->h:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "044!dgec=lZel6liHdegcdcelfheddi;liSelecGeiHdkde7h1elejggeiegflefddflghgdefddegfiddgghdejefhkgd"

    .line 3
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/mob/commons/b/h$1;

    invoke-direct {v2, p0}, Lcom/mob/commons/b/h$1;-><init>(Lcom/mob/commons/b/h;)V

    iput-object v2, p0, Lcom/mob/commons/b/h;->h:Landroid/content/BroadcastReceiver;

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    const-string v1, "048SdgecElLelLli*degcdcelfheddi-liYelec0ei5dkde]h[elSeiBdh8l]defgfgdeecdkelflghgdefddegfiddgghdejefhkgd"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    const-string v0, "048?dgec^lZel7li degcdcelfheddiXliQelecPeiQdkdeWhCel<ei,dh5lMdefgfgdeecdkelflghgdefddegfiddgghdejefhkgd"

    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized b()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/b/h;->f:Lcom/mob/commons/b/h$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mob/commons/b/h;->a(Landroid/content/Context;Lcom/mob/commons/b/h$a;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/b/h;->d:Lcom/mob/commons/b/h$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mob/commons/b/h;->a(Landroid/content/Context;Lcom/mob/commons/b/h$a;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/b/h;->c:Lcom/mob/commons/b/h$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mob/commons/b/h;->a(Landroid/content/Context;Lcom/mob/commons/b/h$a;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/b/h;->e:Lcom/mob/commons/b/h$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mob/commons/b/h;->a(Landroid/content/Context;Lcom/mob/commons/b/h$a;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
