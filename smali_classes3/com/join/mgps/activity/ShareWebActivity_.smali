.class public final Lcom/join/mgps/activity/ShareWebActivity_;
.super Lcom/join/mgps/activity/ShareWebActivity;
.source "ShareWebActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ShareWebActivity_$f0;
    }
.end annotation


# static fields
.field public static final l1:Ljava/lang/String; = "intentdate"

.field public static final m1:Ljava/lang/String; = "intentDataMain"


# instance fields
.field private final h1:Li3/c;

.field private final i1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final j1:Landroid/content/IntentFilter;

.field private final k1:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->h1:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->i1:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->j1:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$k;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->k1:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A2(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/CreateVipData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->n2(Lcom/join/mgps/dto/CreateVipData;)V

    return-void
.end method

.method static synthetic B2(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->x1()V

    return-void
.end method

.method static synthetic C2(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity;->F1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic D2(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->I1()V

    return-void
.end method

.method static synthetic E2(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic F2(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->checkToken()V

    return-void
.end method

.method static synthetic G2(Lcom/join/mgps/activity/ShareWebActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->w1(I)V

    return-void
.end method

.method static synthetic H2(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->h2()V

    return-void
.end method

.method static synthetic I2(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->i2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic J2(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method

.method static synthetic K2(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->k2(Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method

.method static synthetic L2(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->T1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic M2(Lcom/join/mgps/activity/ShareWebActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->P1(Z)V

    return-void
.end method

.method static synthetic N2(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->z1(Ljava/lang/String;)V

    return-void
.end method

.method public static O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$f0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static P2(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ShareWebActivity_$f0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$f0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->H:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->x0:Lcom/join/mgps/Util/b;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->injectExtras_()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_;->j1:Landroid/content/IntentFilter;

    const-string v0, "com.wufun.finish.activity"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_;->k1:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->j1:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "intentdate"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/Util/IntentDateBean;

    iput-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity;->B:Lcom/join/mgps/Util/IntentDateBean;

    :cond_0
    const-string v1, "intentDataMain"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/IntentDataMain;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->C:Lcom/join/mgps/dto/IntentDataMain;

    :cond_1
    return-void
.end method

.method static synthetic r2(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity;->A1(Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method static synthetic s2(Lcom/join/mgps/activity/ShareWebActivity_;Lapp/mgsim/arena/SocketError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->W1(Lapp/mgsim/arena/SocketError;)V

    return-void
.end method

.method static synthetic t2(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->showLoding()V

    return-void
.end method

.method static synthetic u2(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->M1(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method

.method static synthetic v2(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity;->y1(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic w2(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->e2(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method

.method static synthetic x2(Lcom/join/mgps/activity/ShareWebActivity_;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    return-void
.end method

.method static synthetic y2(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->g2()V

    return-void
.end method

.method static synthetic z2(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->dismissLoadingDialog()V

    return-void
.end method


# virtual methods
.method A1(Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$e0;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity_$e0;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method F1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/ShareWebActivity_$t;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/ShareWebActivity_$t;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method I1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ShareWebActivity_$u;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ShareWebActivity_$u;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method M1(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$l;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P1(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$h;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T1(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$g;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W1(Lapp/mgsim/arena/SocketError;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$j;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lapp/mgsim/arena/SocketError;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method checkToken()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ShareWebActivity_$w;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ShareWebActivity_$w;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method dismissLoadingDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$q;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method e2(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$n;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$p;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->i1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$c;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$o;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lapp/mgsim/arena/ArenaResponse;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method i2(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$d;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method k2(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$f;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/DetailResultBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method n2(Lcom/join/mgps/dto/CreateVipData;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$r;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$r;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/CreateVipData;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->h1:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0584

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->k1:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/ShareWebActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f0909b5

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f09100f

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->f:Landroid/widget/RelativeLayout;

    const v0, 0x7f091033

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f090481

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0908a0

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f091270    # 1.8219997E38f

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->j:Landroid/widget/FrameLayout;

    const v0, 0x7f0912cb

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f0912c8

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/LJWebView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->l:Lcom/join/mgps/customview/LJWebView;

    const v0, 0x7f090cfb

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f090dd4

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->n:Landroid/widget/ImageView;

    const v0, 0x7f090138

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->o:Landroid/widget/ImageView;

    const v0, 0x7f09013d

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->p:Landroid/widget/ImageView;

    const v0, 0x7f0903b8

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->q:Landroid/widget/ImageView;

    const v0, 0x7f090e21

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 17
    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity_$v;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity_$v;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 19
    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity_$y;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity_$y;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->p:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 21
    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity_$z;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity_$z;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 23
    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity_$a0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity_$a0;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 24
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$b0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$b0;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->n:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 26
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$c0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$c0;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->q:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 28
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$d0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$d0;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->j:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity;->r:Landroid/widget/FrameLayout;

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareWebActivity;->afterview()V

    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_;->i1:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_;->h1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_;->h1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_;->h1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$a;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$b;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$e;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/join/mgps/dto/DetailResultBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method w1(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ShareWebActivity_$x;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ShareWebActivity_$x;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method x1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity_$s;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y1(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$m;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity_$m;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method z1(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity_$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity_$i;-><init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
