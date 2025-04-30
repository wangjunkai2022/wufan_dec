.class public final Lcom/join/mgps/socket/fight/arena/ArenaService_;
.super Lcom/join/mgps/socket/fight/arena/ArenaService;
.source "ArenaService_.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/fight/arena/ArenaService_$j;
    }
.end annotation


# instance fields
.field private final s:Landroid/content/IntentFilter;

.field private final t:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;-><init>()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_;->s:Landroid/content/IntentFilter;

    .line 3
    new-instance v0, Lcom/join/mgps/socket/fight/arena/ArenaService_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/socket/fight/arena/ArenaService_$a;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_;->t:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic H(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic I(Lcom/join/mgps/socket/fight/arena/ArenaService_;Lapp/mgsim/arena/SocketError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->w(Lapp/mgsim/arena/SocketError;)V

    return-void
.end method

.method static synthetic J(Lcom/join/mgps/socket/fight/arena/ArenaService_;Lapp/mgsim/arena/ArenaRequest;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->C(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method static synthetic K(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->r(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic L(Lcom/join/mgps/socket/fight/arena/ArenaService_;Lapp/mgsim/arena/ArenaRequest;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->k(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/socket/fight/arena/ArenaService_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->t(I)V

    return-void
.end method

.method static synthetic N(Lcom/join/mgps/socket/fight/arena/ArenaService_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->i()V

    return-void
.end method

.method static synthetic O(Lcom/join/mgps/socket/fight/arena/ArenaService_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->x()V

    return-void
.end method

.method private P()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->h:Lcom/join/mgps/Util/b;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_;->s:Landroid/content/IntentFilter;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public static Q(Landroid/content/Context;)Lcom/join/mgps/socket/fight/arena/ArenaService_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/socket/fight/arena/ArenaService_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/socket/fight/arena/ArenaService_$j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public C(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/socket/fight/arena/ArenaService_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/socket/fight/arena/ArenaService_$d;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;Lapp/mgsim/arena/ArenaRequest;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/socket/fight/arena/ArenaService_$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService_$b;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method i()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/socket/fight/arena/ArenaService_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/socket/fight/arena/ArenaService_$h;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method k(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/socket/fight/arena/ArenaService_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/socket/fight/arena/ArenaService_$f;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;Lapp/mgsim/arena/ArenaRequest;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService_;->P()V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->onCreate()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_;->t:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_;->s:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->onDestroy()V

    return-void
.end method

.method r(Ljava/lang/Object;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/socket/fight/arena/ArenaService_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/socket/fight/arena/ArenaService_$e;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method t(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/socket/fight/arena/ArenaService_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/socket/fight/arena/ArenaService_$g;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method w(Lapp/mgsim/arena/SocketError;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/socket/fight/arena/ArenaService_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/socket/fight/arena/ArenaService_$c;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;Lapp/mgsim/arena/SocketError;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method x()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/socket/fight/arena/ArenaService_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/socket/fight/arena/ArenaService_$i;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
