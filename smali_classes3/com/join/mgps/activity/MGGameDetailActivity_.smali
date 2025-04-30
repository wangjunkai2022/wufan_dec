.class public final Lcom/join/mgps/activity/MGGameDetailActivity_;
.super Lcom/join/mgps/activity/MGGameDetailActivity;
.source "MGGameDetailActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MGGameDetailActivity_$m1;
    }
.end annotation


# static fields
.field public static final v1:Ljava/lang/String; = "intentdate"

.field public static final w1:Ljava/lang/String; = "extBean"


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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->p1:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->q1:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->r1:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$k;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->s1:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->t1:Landroid/content/IntentFilter;

    .line 7
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$v;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->u1:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A3(Lcom/join/mgps/activity/MGGameDetailActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->U0(II)V

    return-void
.end method

.method static synthetic B3(Lcom/join/mgps/activity/MGGameDetailActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->G2(Z)V

    return-void
.end method

.method static synthetic C3(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGGameDetailActivity;->H2(Lcom/join/mgps/dto/ResultMainBean;I)V

    return-void
.end method

.method static synthetic D3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->v1()V

    return-void
.end method

.method public static E3(Landroid/content/Context;)Lcom/join/mgps/activity/MGGameDetailActivity_$m1;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$m1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$m1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static F3(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MGGameDetailActivity_$m1;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$m1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$m1;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method static synthetic I2(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->n1()V

    return-void
.end method

.method static synthetic J2(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->D2()V

    return-void
.end method

.method static synthetic K2(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->D1()V

    return-void
.end method

.method static synthetic L2(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic M2(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->r1()V

    return-void
.end method

.method static synthetic N2(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->v2(Ljava/util/List;)V

    return-void
.end method

.method static synthetic O2(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->u2(Lcom/join/mgps/dto/DetailResultBeanV3;)V

    return-void
.end method

.method static synthetic P2(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->N1(Lcom/join/mgps/dto/DetailResultBeanV3;)V

    return-void
.end method

.method static synthetic Q2(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLoding()V

    return-void
.end method

.method static synthetic R2(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic S2(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->w2()V

    return-void
.end method

.method static synthetic T2(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t2()V

    return-void
.end method

.method static synthetic U2(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->E2()V

    return-void
.end method

.method static synthetic V2(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->r2(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    return-void
.end method

.method static synthetic W2(Lcom/join/mgps/activity/MGGameDetailActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateLine(I)V

    return-void
.end method

.method static synthetic X2(Lcom/join/mgps/activity/MGGameDetailActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateDownloadingPoint(I)V

    return-void
.end method

.method static synthetic Y2(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateNoOpenPoint()V

    return-void
.end method

.method static synthetic Z2(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateDownloadView()V

    return-void
.end method

.method static synthetic a3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->x2()V

    return-void
.end method

.method static synthetic b3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->y2()V

    return-void
.end method

.method static synthetic c3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->G0()V

    return-void
.end method

.method static synthetic d3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->F2()V

    return-void
.end method

.method static synthetic e3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->C2()V

    return-void
.end method

.method static synthetic f3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->o1()V

    return-void
.end method

.method static synthetic g3(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->s2(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    return-void
.end method

.method static synthetic h3(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->Q0(Lcom/join/mgps/dto/GameFromPopoWinBean;)V

    return-void
.end method

.method static synthetic i3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->W0()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity_;->injectExtras_()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->r1:Landroid/content/IntentFilter;

    const-string v0, "com.join,mgps.sim.sdkgamePayfinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->t1:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->t1:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->s1:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->r1:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->u1:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->t1:Landroid/content/IntentFilter;

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

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->G:Lcom/join/mgps/Util/IntentDateBean;

    :cond_0
    const-string v1, "extBean"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    :cond_1
    return-void
.end method

.method static synthetic j3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->p1()V

    return-void
.end method

.method static synthetic k3(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GameVoucherBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->l1(Lcom/join/mgps/dto/GameVoucherBean;)V

    return-void
.end method

.method static synthetic l3(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->i1(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    return-void
.end method

.method static synthetic m3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->k1()V

    return-void
.end method

.method static synthetic n3(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/MGGameDetailActivity;->w1(Lcom/join/mgps/dto/CommentBaseBean;II)V

    return-void
.end method

.method static synthetic o3(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/MGGameDetailActivity;->y1(Lcom/join/mgps/dto/CommentBaseBean;II)V

    return-void
.end method

.method static synthetic p3(Lcom/join/mgps/activity/MGGameDetailActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->T0(I)V

    return-void
.end method

.method static synthetic q3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->f1()V

    return-void
.end method

.method static synthetic r3(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/MGGameDetailActivity;->E1(Ljava/lang/String;ZII)V

    return-void
.end method

.method static synthetic s3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->g1()V

    return-void
.end method

.method static synthetic t3(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->A1(Lcom/join/mgps/dto/InformationCommentBean;)V

    return-void
.end method

.method static synthetic u3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkDownlodingNumber()V

    return-void
.end method

.method static synthetic v3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getDownloadTaskInfo()V

    return-void
.end method

.method static synthetic w3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->h1()V

    return-void
.end method

.method static synthetic x3(Lcom/join/mgps/activity/MGGameDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->E0()V

    return-void
.end method

.method static synthetic y3(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/MGGameDetailActivity$w;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/MGGameDetailActivity;->F0(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/MGGameDetailActivity$w;)V

    return-void
.end method

.method static synthetic z3(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/CommentResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->F1(Lcom/join/mgps/dto/CommentResponse;)V

    return-void
.end method


# virtual methods
.method A1(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGGameDetailActivity_$b1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGGameDetailActivity_$b1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method C2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$n0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$n0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method D1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$i;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method D2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$s;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method E0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$g1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$g1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method E1(Ljava/lang/String;ZII)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$m;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$m;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;ZII)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v6, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method E2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$d0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$d0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method F0(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/MGGameDetailActivity$w;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/MGGameDetailActivity_$h1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/MGGameDetailActivity_$h1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/MGGameDetailActivity$w;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method F1(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$n;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/CommentResponse;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method F2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$m0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$m0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method G0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$l0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$l0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method G2(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$p;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$p;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x3e8

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H2(Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$q;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGGameDetailActivity_$q;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/ResultMainBean;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N1(Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$y;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$y;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    const-string p1, ""

    const-wide/16 v1, 0x12c

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Q0(Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$p0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$p0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GameFromPopoWinBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGGameDetailActivity_$y0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGGameDetailActivity_$y0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public U0(II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$o;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGGameDetailActivity_$o;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;II)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$q0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$q0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method checkDownlodingNumber()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$d1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$d1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method f1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$z0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$z0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method g1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$a1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$a1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->q1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$e1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$e1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method h1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$f1;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$f1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method i1(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGGameDetailActivity_$u0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGGameDetailActivity_$u0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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

.method k1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$v0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGGameDetailActivity_$v0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method l1(Lcom/join/mgps/dto/GameVoucherBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MGGameDetailActivity_$t0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MGGameDetailActivity_$t0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/GameVoucherBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method n1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$h;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method o1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$o0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$o0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->p1:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c045c

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->s1:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->u1:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-super {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 7

    const v0, 0x7f091050

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->a:Landroid/view/View;

    const v0, 0x7f09102d

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903c5

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0909b0

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b5

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f09054f

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f09056a

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->g:Landroid/widget/ListView;

    const v0, 0x7f09034c

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f091033

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f09013e

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f09076d

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f090c6e

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->l:Landroid/widget/RelativeLayout;

    const v0, 0x7f09076e

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->m:Landroid/widget/RelativeLayout;

    const v0, 0x7f090204

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n:Landroid/widget/ImageView;

    const v0, 0x7f090c02

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f090203

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->p:Landroid/widget/ProgressBar;

    const v0, 0x7f0903c0

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f090dc7

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f09015e

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f090dc8

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ScrollTextViewLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t:Lcom/join/mgps/customview/ScrollTextViewLayout;

    const v0, 0x7f090646

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->u:Landroid/widget/ImageView;

    const v0, 0x7f0903c1

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v:Landroid/widget/ImageView;

    const v0, 0x7f0906a2

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->w:Landroid/widget/ImageView;

    const v0, 0x7f090de7

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->x:Landroid/widget/ImageView;

    const v0, 0x7f091030

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y:Landroid/widget/ImageView;

    const v0, 0x7f0908d9

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->z:Landroid/view/View;

    const v0, 0x7f090e35

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f0902ea

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->B:Landroid/widget/RelativeLayout;

    const v0, 0x7f09012e

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f090350

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090de6

    .line 32
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090c6d

    .line 33
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0903c4

    .line 34
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090d11

    .line 35
    invoke-interface {p1, v4}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090e21

    .line 36
    invoke-interface {p1, v5}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 37
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->q:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 38
    new-instance v6, Lcom/join/mgps/activity/MGGameDetailActivity_$g0;

    invoke-direct {v6, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$g0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 39
    new-instance v5, Lcom/join/mgps/activity/MGGameDetailActivity_$r0;

    invoke-direct {v5, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$r0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 40
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$c1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$c1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 42
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity_$i1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$i1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 43
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$j1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$j1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 45
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity_$k1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$k1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v3, :cond_6

    .line 46
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$l1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$l1;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz v4, :cond_7

    .line 47
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$a;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 48
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$b;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    .line 50
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$c;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->b:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_a

    .line 52
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$d;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    .line 54
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$e;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    .line 56
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$f;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz p1, :cond_d

    .line 58
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$g;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->afterViews()V

    return-void
.end method

.method p1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$s0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$s0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->q1:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method r1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$u;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method r2(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$j;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method s2(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$l;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->p1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->p1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_;->p1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$z;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$a0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$a0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$t;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$t;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method t2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$c0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$c0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method u2(Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$x;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$x;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$i0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$i0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadingPoint(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$f0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$f0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateLine(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$e0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$e0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateNoOpenPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$h0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$h0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method v1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$r;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method v2(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$w;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity_$w;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method w1(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/MGGameDetailActivity_$w0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/MGGameDetailActivity_$w0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentBaseBean;II)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method w2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$b0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$b0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method x2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$j0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$j0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y1(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/MGGameDetailActivity_$x0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/MGGameDetailActivity_$x0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentBaseBean;II)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method y2()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity_$k0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity_$k0;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
