.class public final Lcom/join/mgps/activity/GameMainActivity3_;
.super Lcom/join/mgps/activity/GameMainActivity3;
.source "GameMainActivity3_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameMainActivity3_$i0;
    }
.end annotation


# static fields
.field public static final x1:Ljava/lang/String; = "gameId"

.field public static final y1:Ljava/lang/String; = "from"


# instance fields
.field private final p1:Li3/c;

.field private final q1:Ljava/util/Map;
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

.field private final r1:Landroid/content/IntentFilter;

.field private final s1:Landroid/content/BroadcastReceiver;

.field private final t1:Landroid/content/IntentFilter;

.field private final u1:Landroid/content/BroadcastReceiver;

.field private final v1:Landroid/content/IntentFilter;

.field private final w1:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->p1:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->q1:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->r1:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$k;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->s1:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->t1:Landroid/content/IntentFilter;

    .line 7
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$v;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->u1:Landroid/content/BroadcastReceiver;

    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->v1:Landroid/content/IntentFilter;

    .line 9
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$b0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$b0;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->w1:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic J2(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/GameMainV4DataBean;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/GameMainActivity3;->I2(Lcom/join/mgps/dto/GameMainV4DataBean;Z)V

    return-void
.end method

.method static synthetic K2(Lcom/join/mgps/activity/GameMainActivity3_;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    return-void
.end method

.method static synthetic L2(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->D2()V

    return-void
.end method

.method static synthetic M2(Lcom/join/mgps/activity/GameMainActivity3_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->F2(I)V

    return-void
.end method

.method static synthetic N2(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/OnlineCouponConfigBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->x2(Lcom/join/mgps/dto/OnlineCouponConfigBean;)V

    return-void
.end method

.method static synthetic O2(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->H2(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic P2(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->g2()V

    return-void
.end method

.method static synthetic Q2(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->Y1()V

    return-void
.end method

.method static synthetic R2(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->getData()V

    return-void
.end method

.method static synthetic S2(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->X1()V

    return-void
.end method

.method static synthetic T2(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->c2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U2(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->Z1()V

    return-void
.end method

.method static synthetic V2(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->b2()V

    return-void
.end method

.method static synthetic W2(Lcom/join/mgps/activity/GameMainActivity3_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->t2(Z)V

    return-void
.end method

.method static synthetic X2(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->T1()V

    return-void
.end method

.method static synthetic Y2(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->f2()V

    return-void
.end method

.method static synthetic Z2(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->e2()V

    return-void
.end method

.method static synthetic a3(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->d2()V

    return-void
.end method

.method static synthetic b3(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->O1(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic c3(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/GameMainActivity3;->P1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d3(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->r2()V

    return-void
.end method

.method static synthetic e3(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->s2()V

    return-void
.end method

.method static synthetic f3(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/GameMainV4DataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->w2(Lcom/join/mgps/dto/GameMainV4DataBean;)V

    return-void
.end method

.method static synthetic g3(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->U1()V

    return-void
.end method

.method static synthetic h3(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->i2()V

    return-void
.end method

.method static synthetic i3(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->y2()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3;->d1:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3_;->injectExtras_()V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3_;->r1:Landroid/content/IntentFilter;

    const-string v0, "com.cloud.game.main.downCloud"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3_;->t1:Landroid/content/IntentFilter;

    const-string v0, "com.wufun.cloud.game.main.showDownDialog"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3_;->v1:Landroid/content/IntentFilter;

    const-string v0, "com.cloud.downCloud.all"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3_;->s1:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->r1:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3_;->u1:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->t1:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3_;->w1:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->v1:Landroid/content/IntentFilter;

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

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    :cond_0
    const-string v1, "from"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->p0:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic j3(Lcom/join/mgps/activity/GameMainActivity3_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->L1()V

    return-void
.end method

.method public static k3(Landroid/content/Context;)Lcom/join/mgps/activity/GameMainActivity3_$i0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$i0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$i0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static l3(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GameMainActivity3_$i0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$i0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$i0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method D2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$h0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$h0;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method F2(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameMainActivity3_$j;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H2(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameMainActivity3_$m;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/CloudListDataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I2(Lcom/join/mgps/dto/GameMainV4DataBean;Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$g0;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/GameMainActivity3_$g0;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/GameMainV4DataBean;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$h;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O1(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GameMainActivity3_$z;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameMainActivity3_$z;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method P1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/GameMainActivity3_$a0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/GameMainActivity3_$a0;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method T1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivity3_$u;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivity3_$u;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method U1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$e;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivity3_$q;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivity3_$q;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Y1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivity3_$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivity3_$o;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Z1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivity3_$s;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivity3_$s;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method b2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivity3_$t;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivity3_$t;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method c2(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GameMainActivity3_$r;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameMainActivity3_$r;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method d2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivity3_$y;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivity3_$y;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method e2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivity3_$x;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivity3_$x;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method f2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivity3_$w;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivity3_$w;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method g2()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivity3_$n;

    const-string v2, ""

    const-wide/16 v3, 0x5dc

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivity3_$n;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->q1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameMainActivity3_$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainActivity3_$p;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameMainActivity3_$i;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Lapp/mgsim/arena/ArenaResponse;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method i2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$f;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->p1:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c003e

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->s1:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->u1:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->w1:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    invoke-super {p0}, Lcom/join/mgps/activity/GameMainActivity3;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f090938

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->q0:Landroid/view/View;

    const v0, 0x7f09057f

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->r0:Landroid/widget/TextView;

    const v0, 0x7f090d8b

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->s0:Landroid/widget/TextView;

    const v0, 0x7f090152

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->t0:Landroid/view/View;

    const v0, 0x7f090573

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->v0:Landroid/widget/GridView;

    const v0, 0x7f09055e

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->w0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0908ac

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->x0:Landroid/view/View;

    const v0, 0x7f090578

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->y0:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09020a

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09012c

    .line 10
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090ed5

    .line 11
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 12
    new-instance v2, Lcom/join/mgps/activity/GameMainActivity3_$c0;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameMainActivity3_$c0;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 13
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$d0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$d0;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3;->t0:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 15
    new-instance v1, Lcom/join/mgps/activity/GameMainActivity3_$e0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivity3_$e0;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 16
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$f0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$f0;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivity3;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_;->q1:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method r2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$b;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method s2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$c;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3_;->p1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/join/mgps/activity/FriendActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3_;->p1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3_;->p1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivity3_;->injectExtras_()V

    return-void
.end method

.method t2(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameMainActivity3_$a;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method w2(Lcom/join/mgps/dto/GameMainV4DataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameMainActivity3_$d;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/GameMainV4DataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method x2(Lcom/join/mgps/dto/OnlineCouponConfigBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameMainActivity3_$l;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/OnlineCouponConfigBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity3_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameMainActivity3_$g;-><init>(Lcom/join/mgps/activity/GameMainActivity3_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
