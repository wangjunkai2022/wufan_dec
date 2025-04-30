.class public final Lcom/join/mgps/activity/arena/GameRoomListActivity_;
.super Lcom/join/mgps/activity/arena/GameRoomListActivity;
.source "GameRoomListActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;
    }
.end annotation


# static fields
.field public static final n2:Ljava/lang/String; = "mGameInfo"

.field public static final o2:Ljava/lang/String; = "isFormHall"

.field public static final p2:Ljava/lang/String; = "filterGame"


# instance fields
.field private final l2:Li3/c;

.field private final m2:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->l2:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->m2:Ljava/util/Map;

    return-void
.end method

.method static synthetic P3(Lcom/join/mgps/activity/arena/GameRoomListActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->k3(I)V

    return-void
.end method

.method static synthetic Q3(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q2(Ljava/util/List;)V

    return-void
.end method

.method static synthetic R3(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K3(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

    return-void
.end method

.method static synthetic S3(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R2(Ljava/util/List;)V

    return-void
.end method

.method static synthetic T3(Lcom/join/mgps/activity/arena/GameRoomListActivity_;ZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y2(ZZ)V

    return-void
.end method

.method static synthetic U3(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D2()V

    return-void
.end method

.method static synthetic V3(Lcom/join/mgps/activity/arena/GameRoomListActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s3(I)V

    return-void
.end method

.method static synthetic W3(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y2(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V

    return-void
.end method

.method static synthetic X3(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C3()V

    return-void
.end method

.method static synthetic Y3(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E3()V

    return-void
.end method

.method static synthetic Z3(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x3()V

    return-void
.end method

.method static synthetic a4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U2()V

    return-void
.end method

.method static synthetic b4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z2()V

    return-void
.end method

.method static synthetic c4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/Notification;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O2(Lcom/papa91/battle/protocol/Notification;)V

    return-void
.end method

.method static synthetic d4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O3(IZ)V

    return-void
.end method

.method static synthetic e4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T2()V

    return-void
.end method

.method static synthetic g4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u2()V

    return-void
.end method

.method static synthetic h4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->H3(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic i4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e3()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L0:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J1:Lcom/join/mgps/Util/b;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "mGameInfo"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameInfoBean;

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    :cond_0
    const-string v1, "isFormHall"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->p0:Z

    :cond_1
    const-string v1, "filterGame"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I0:Z

    :cond_2
    return-void
.end method

.method static synthetic j4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N2()V

    return-void
.end method

.method static synthetic k4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J3(IZ)V

    return-void
.end method

.method static synthetic l4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->n3()V

    return-void
.end method

.method static synthetic m4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F2()V

    return-void
.end method

.method static synthetic n4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N3(Lapp/mgsim/arena/ArenaResponse;Z)V

    return-void
.end method

.method static synthetic o4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D3()V

    return-void
.end method

.method static synthetic q4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C2()V

    return-void
.end method

.method static synthetic r4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I3(Z)V

    return-void
.end method

.method static synthetic s4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    return-void
.end method

.method static synthetic t4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->w3(Lcom/papa91/battle/protocol/BattleArea;)V

    return-void
.end method

.method static synthetic u4(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P2(Lapp/mgsim/arena/ArenaResponse;Z)V

    return-void
.end method

.method public static v4(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static w4(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method C2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$f;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method C3()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$r;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method D2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$o;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method D3()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$e;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method E2(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/arena/GameRoomListActivity_$i0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$i0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public E3()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$s;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method F2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/GameRoomListActivity_$h0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$h0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method H3(Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$b0;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$b0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I3(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$g;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J3(IZ)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/arena/GameRoomListActivity_$e0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$e0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;JLjava/lang/String;IZ)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method K3(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$b;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N3(Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$d;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O2(Lcom/papa91/battle/protocol/Notification;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$c;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/Notification;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O3(IZ)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$x;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$x;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;IZ)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P2(Lapp/mgsim/arena/ArenaResponse;Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$j;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Q2(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$l;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R2(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$m;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$z;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$u;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Y2(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$q;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$q;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method e3()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$c0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$c0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->m2:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$h;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lapp/mgsim/arena/ArenaResponse;)V

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

.method k3(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method n3()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/GameRoomListActivity_$f0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$f0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->l2:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0042

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 6

    const v0, 0x7f0910d0

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->q0:Landroid/widget/TextView;

    const v0, 0x7f091192

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->r0:Landroid/widget/TextView;

    const v0, 0x7f090cf7

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s0:Landroid/view/View;

    const v0, 0x7f09080a

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t0:Landroid/widget/LinearLayout;

    const v0, 0x7f090961

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u0:Landroid/widget/LinearLayout;

    const v0, 0x7f091183

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->v0:Landroid/widget/TextView;

    const v0, 0x7f091184

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->w0:Landroid/widget/TextView;

    const v0, 0x7f090924

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->x0:Landroid/widget/LinearLayout;

    const v0, 0x7f0910f8

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y0:Landroid/widget/TextView;

    const v0, 0x7f0910f9

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z0:Landroid/widget/TextView;

    const v0, 0x7f090955

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A0:Landroid/widget/LinearLayout;

    const v0, 0x7f091167

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B0:Landroid/widget/TextView;

    const v0, 0x7f091166

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C0:Landroid/widget/TextView;

    const v0, 0x7f091128

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D0:Landroid/widget/TextView;

    const v0, 0x7f090c66

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E0:Landroid/widget/ProgressBar;

    const v0, 0x7f090917

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F0:Landroid/widget/LinearLayout;

    const v0, 0x7f090714

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G0:Landroid/widget/ImageView;

    const v0, 0x7f090abe

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->H0:Landroid/view/View;

    const v0, 0x7f0910d9

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/AlwaysMarqueeTextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->J0:Lcom/join/mgps/customview/AlwaysMarqueeTextView;

    const v0, 0x7f0909e8

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K0:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090d80

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->a1:Landroid/widget/RelativeLayout;

    const v0, 0x7f090914

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->b1:Landroid/widget/LinearLayout;

    const v0, 0x7f090965

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->j1:Landroid/widget/LinearLayout;

    const v0, 0x7f0907e3

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->k1:Landroid/widget/ImageView;

    const v0, 0x7f090926

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->s1:Landroid/widget/LinearLayout;

    const v0, 0x7f090938

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t1:Landroid/widget/LinearLayout;

    const v0, 0x7f09019d

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F1:Landroid/widget/ImageView;

    const v0, 0x7f090196

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G1:Landroid/widget/ImageView;

    const v0, 0x7f0904ed

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->H1:Landroid/widget/LinearLayout;

    const v0, 0x7f090cf4

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q1:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090cf3

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R1:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090e13

    .line 32
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->S1:Landroid/view/View;

    const v0, 0x7f0901a7

    .line 33
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0907e0

    .line 34
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09019e

    .line 35
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090288

    .line 36
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090ca4

    .line 37
    invoke-interface {p1, v4}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 38
    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->S1:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 39
    new-instance v5, Lcom/join/mgps/activity/arena/GameRoomListActivity_$k;

    invoke-direct {v5, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$k;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 40
    new-instance v4, Lcom/join/mgps/activity/arena/GameRoomListActivity_$v;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$v;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 41
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$g0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$g0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->t0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 43
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity_$j0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$j0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G1:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 45
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity_$k0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$k0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 46
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$l0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$l0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v3, :cond_6

    .line 47
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$m0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$m0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->H0:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 49
    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomListActivity_$n0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$n0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 50
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$o0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$o0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->m2:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method s3(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->l2:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->l2:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->l2:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->injectExtras_()V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$y;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$y;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method u2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$a0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$a0;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method w3(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$i;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;Lcom/papa91/battle/protocol/BattleArea;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method x3()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$t;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y2(ZZ)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$n;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$n;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;ZZ)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method z2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$w;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
