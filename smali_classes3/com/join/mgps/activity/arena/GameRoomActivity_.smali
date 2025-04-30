.class public final Lcom/join/mgps/activity/arena/GameRoomActivity_;
.super Lcom/join/mgps/activity/arena/GameRoomActivity;
.source "GameRoomActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;
    }
.end annotation


# static fields
.field public static final A2:Ljava/lang/String; = "copper"

.field public static final p2:Ljava/lang/String; = "battleChallengeConfig"

.field public static final q2:Ljava/lang/String; = "roomLive"

.field public static final r2:Ljava/lang/String; = "mGameRoom"

.field public static final s2:Ljava/lang/String; = "joinSpectatorReason"

.field public static final t2:Ljava/lang/String; = "gameName"

.field public static final u2:Ljava/lang/String; = "isFastJoinRoom"

.field public static final v2:Ljava/lang/String; = "isCreateRoom"

.field public static final w2:Ljava/lang/String; = "isAllowPcJoin"

.field public static final x2:Ljava/lang/String; = "from"

.field public static final y2:Ljava/lang/String; = "password"

.field public static final z2:Ljava/lang/String; = "position"


# instance fields
.field private final n2:Li3/c;

.field private final o2:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->n2:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->o2:Ljava/util/Map;

    return-void
.end method

.method static synthetic V2(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->D2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W2(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->H2()V

    return-void
.end method

.method static synthetic X2(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->J2()V

    return-void
.end method

.method static synthetic Y2(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Z2(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->N2()V

    return-void
.end method

.method static synthetic a3(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->O2(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b3(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->R2()V

    return-void
.end method

.method static synthetic c3(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->m2()V

    return-void
.end method

.method static synthetic d3(Lcom/join/mgps/activity/arena/GameRoomActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A2(I)V

    return-void
.end method

.method static synthetic e3(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y2()V

    return-void
.end method

.method static synthetic f3(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->z2()V

    return-void
.end method

.method static synthetic g3(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->S2()V

    return-void
.end method

.method static synthetic h3(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->k2()V

    return-void
.end method

.method static synthetic i3(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->F2()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "battleChallengeConfig"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BattleChallengeConfig;

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->o0:Lcom/join/mgps/dto/BattleChallengeConfig;

    :cond_0
    const-string v1, "roomLive"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->q0:I

    :cond_1
    const-string v1, "mGameRoom"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/GameRoom;

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    :cond_2
    const-string v1, "joinSpectatorReason"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->s0:Ljava/lang/String;

    :cond_3
    const-string v1, "gameName"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->t0:Ljava/lang/String;

    :cond_4
    const-string v1, "isFastJoinRoom"

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->u0:Z

    :cond_5
    const-string v1, "isCreateRoom"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->v0:Z

    :cond_6
    const-string v1, "isAllowPcJoin"

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->w0:I

    :cond_7
    const-string v1, "from"

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->x0:Ljava/lang/String;

    :cond_8
    const-string v1, "password"

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->y0:Ljava/lang/String;

    :cond_9
    const-string v1, "position"

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->z0:I

    :cond_a
    const-string v1, "copper"

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->A0:I

    :cond_b
    return-void
.end method

.method static synthetic j3(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->B2()V

    return-void
.end method

.method static synthetic k3(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->l2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l3(Lcom/join/mgps/activity/arena/GameRoomActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->j2(I)V

    return-void
.end method

.method static synthetic m3(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->x2(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method

.method static synthetic n3(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->I2()V

    return-void
.end method

.method static synthetic o3(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->o2(Lcom/papa91/battle/protocol/KickInfo;)V

    return-void
.end method

.method static synthetic p3(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->n2(Lapp/mgsim/arena/ArenaResponse;)V

    return-void
.end method

.method static synthetic q3(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    return-void
.end method

.method static synthetic r3(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->U2(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method

.method static synthetic s3(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->p2()V

    return-void
.end method

.method static synthetic t3(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->c2()V

    return-void
.end method

.method public static u3(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static v3(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method A2(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$i;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method B2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/GameRoomActivity_$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/GameRoomActivity_$o;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method D2(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$s;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$s;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method F2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$u;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$c;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$v;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$t;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$e;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O2(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$f;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$g;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/GameRoomActivity_$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/GameRoomActivity_$m;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method U2(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$z;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$z;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/GameRoom;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$b;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->o2:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method i2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$y;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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

.method j2(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/arena/GameRoomActivity_$q;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/arena/GameRoomActivity_$q;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method k2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/GameRoomActivity_$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/GameRoomActivity_$n;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method l2(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/arena/GameRoomActivity_$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/arena/GameRoomActivity_$p;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method m2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$h;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method n2(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$x;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$x;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lapp/mgsim/arena/ArenaResponse;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method o2(Lcom/papa91/battle/protocol/KickInfo;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$w;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$w;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Lcom/papa91/battle/protocol/KickInfo;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->n2:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0041

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f0911af

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->B0:Landroid/widget/TextView;

    const v0, 0x7f090e59

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    const v0, 0x7f0911ad

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->D0:Landroid/widget/TextView;

    const v0, 0x7f0908f3

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->E0:Landroid/widget/LinearLayout;

    const v0, 0x7f09110f

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->F0:Landroid/widget/TextView;

    const v0, 0x7f091104

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->G0:Landroid/widget/TextView;

    const v0, 0x7f091171

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->H0:Landroid/widget/TextView;

    const v0, 0x7f091108

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->I0:Landroid/widget/TextView;

    const v0, 0x7f09095c

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->J0:Landroid/widget/LinearLayout;

    const v0, 0x7f0910e4

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->K0:Landroid/widget/TextView;

    const v0, 0x7f0907f8

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->L0:Landroid/widget/ImageView;

    const v0, 0x7f0907e9

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->M0:Landroid/widget/ImageView;

    const v0, 0x7f090830

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->N0:Landroid/widget/ImageView;

    const v0, 0x7f090d49

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->O0:Landroid/view/View;

    const v0, 0x7f0910b7

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->P0:Landroid/widget/TextView;

    const v0, 0x7f090d6c

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q0:Landroid/widget/RelativeLayout;

    const v0, 0x7f0910cf

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->R0:Landroid/widget/TextView;

    const v0, 0x7f0907dd

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->S0:Landroid/widget/ImageView;

    const v0, 0x7f090d53

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->T0:Landroid/widget/LinearLayout;

    const v0, 0x7f090d54

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->U0:Landroid/widget/RelativeLayout;

    const v0, 0x7f0908da

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->V0:Landroid/view/View;

    const v0, 0x7f0910d1

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->W0:Landroid/widget/TextView;

    const v0, 0x7f0907df

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->X0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090907

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Y0:Landroid/widget/LinearLayout;

    const v0, 0x7f0907d2

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z0:Landroid/widget/RadioButton;

    const v0, 0x7f090cb4

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->a1:Landroid/widget/RadioGroup;

    const v0, 0x7f0907d3

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->b1:Landroid/view/View;

    const v0, 0x7f091118

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->c1:Landroid/widget/TextView;

    const v0, 0x7f090198

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->e1:Landroid/view/View;

    const v0, 0x7f090199

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    const v0, 0x7f09019a

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->g1:Landroid/widget/TextView;

    const v0, 0x7f09111c

    .line 32
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->h1:Landroid/widget/TextView;

    const v0, 0x7f0910d2

    .line 33
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity;->D1:Landroid/widget/TextView;

    const v0, 0x7f0907e0

    .line 34
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$k;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->afterViews()V

    return-void
.end method

.method p2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->o2:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->n2:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->n2:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_;->n2:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->injectExtras_()V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$d;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method x2(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/arena/GameRoomActivity_$r;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/arena/GameRoomActivity_$r;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/papa91/battle/protocol/GameRoom;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method y2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$j;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method z2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/GameRoomActivity_$l;

    const-string v2, ""

    const-wide/16 v3, 0xbb8

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/GameRoomActivity_$l;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
