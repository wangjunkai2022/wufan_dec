.class public final Lcom/join/mgps/activity/a0;
.super Lcom/join/mgps/activity/z;
.source "GameDetialModleFourActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/a0$a1;
    }
.end annotation


# instance fields
.field private final c1:Li3/c;

.field private d1:Landroid/view/View;

.field private final e1:Ljava/util/Map;
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

.field private final f1:Landroid/content/IntentFilter;

.field private final g1:Landroid/content/BroadcastReceiver;

.field private final h1:Landroid/content/IntentFilter;

.field private final i1:Landroid/content/BroadcastReceiver;

.field private final j1:Landroid/content/IntentFilter;

.field private final k1:Landroid/content/BroadcastReceiver;

.field private final l1:Landroid/content/IntentFilter;

.field private final m1:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/z;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/a0;->c1:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/a0;->e1:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/a0;->f1:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/a0$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$k;-><init>(Lcom/join/mgps/activity/a0;)V

    iput-object v0, p0, Lcom/join/mgps/activity/a0;->g1:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/a0;->h1:Landroid/content/IntentFilter;

    .line 7
    new-instance v0, Lcom/join/mgps/activity/a0$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$v;-><init>(Lcom/join/mgps/activity/a0;)V

    iput-object v0, p0, Lcom/join/mgps/activity/a0;->i1:Landroid/content/BroadcastReceiver;

    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/a0;->j1:Landroid/content/IntentFilter;

    .line 9
    new-instance v0, Lcom/join/mgps/activity/a0$g0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$g0;-><init>(Lcom/join/mgps/activity/a0;)V

    iput-object v0, p0, Lcom/join/mgps/activity/a0;->k1:Landroid/content/BroadcastReceiver;

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/a0;->l1:Landroid/content/IntentFilter;

    .line 11
    new-instance v0, Lcom/join/mgps/activity/a0$r0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$r0;-><init>(Lcom/join/mgps/activity/a0;)V

    iput-object v0, p0, Lcom/join/mgps/activity/a0;->m1:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/z;->v0(Lcom/join/mgps/dto/CommentBaseBean;II)V

    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/z;->x0(Lcom/join/mgps/dto/CommentBaseBean;II)V

    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->o0()V

    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->k0()V

    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->l0()V

    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->z0(Lcom/join/mgps/dto/InformationCommentBean;)V

    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/activity/a0;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/z;->G0(Ljava/lang/String;ZII)V

    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/activity/a0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->changeGameFollow(I)V

    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->getDownloadTaskInfo()V

    return-void
.end method

.method static synthetic J1(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->m0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    return-void
.end method

.method static synthetic K1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->Z()V

    return-void
.end method

.method static synthetic L1(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/CommentResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->H0(Lcom/join/mgps/dto/CommentResponse;)V

    return-void
.end method

.method static synthetic M1(Lcom/join/mgps/activity/a0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic N1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->showLodingFailed()V

    return-void
.end method

.method static synthetic O1(Lcom/join/mgps/activity/a0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->showMain(Ljava/util/List;)V

    return-void
.end method

.method static synthetic P1(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->g1(Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    return-void
.end method

.method static synthetic Q1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->S0()V

    return-void
.end method

.method public static R1()Lcom/join/mgps/activity/a0$a1;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$a1;

    invoke-direct {v0}, Lcom/join/mgps/activity/a0$a1;-><init>()V

    return-object v0
.end method

.method static synthetic i1(Lcom/join/mgps/activity/a0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->b1(Ljava/util/List;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/z;->F0:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/a0;->f1:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/a0;->h1:Landroid/content/IntentFilter;

    const-string v0, "com.broadcast.bespeak.sussess"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/a0;->j1:Landroid/content/IntentFilter;

    const-string v0, "com.join,mgps.sim.sdkgamePayfinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/a0;->l1:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/a0;->l1:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->u0()V

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/a0;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->d1(Z)V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->W0()V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/z;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->showProgress()V

    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->showInstallButn()V

    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->updateButn()V

    return-void
.end method

.method static synthetic q1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->updateDownloadView()V

    return-void
.end method

.method static synthetic r1(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->O0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    return-void
.end method

.method static synthetic s1(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->P0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    return-void
.end method

.method static synthetic t1(Lcom/join/mgps/activity/a0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->a1(I)V

    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/activity/a0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->Z0(I)V

    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/activity/a0;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/z;->a0(II)V

    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->c1()V

    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->Q0()V

    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->R0()V

    return-void
.end method

.method static synthetic z1(Lcom/join/mgps/activity/a0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/z;->q0()V

    return-void
.end method


# virtual methods
.method G0(Ljava/lang/String;ZII)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/a0$m;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/a0$m;-><init>(Lcom/join/mgps/activity/a0;Ljava/lang/String;ZII)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v6, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H0(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/a0$n;-><init>(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/CommentResponse;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$b0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/a0$b0;-><init>(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$c0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/a0$c0;-><init>(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Q0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$h0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$h0;-><init>(Lcom/join/mgps/activity/a0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$i0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$i0;-><init>(Lcom/join/mgps/activity/a0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$s;-><init>(Lcom/join/mgps/activity/a0;)V

    const-string v1, ""

    const-wide/16 v2, 0xfa0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$u;-><init>(Lcom/join/mgps/activity/a0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/a0$u0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/a0$u0;-><init>(Lcom/join/mgps/activity/a0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Z0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$e0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/a0$e0;-><init>(Lcom/join/mgps/activity/a0;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a0(II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$l;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/a0$l;-><init>(Lcom/join/mgps/activity/a0;II)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a1(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$d0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/a0$d0;-><init>(Lcom/join/mgps/activity/a0;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/a0$i;-><init>(Lcom/join/mgps/activity/a0;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$f0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$f0;-><init>(Lcom/join/mgps/activity/a0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method changeGameFollow(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/a0$q0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/a0$q0;-><init>(Lcom/join/mgps/activity/a0;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method d1(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/a0$j;-><init>(Lcom/join/mgps/activity/a0;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x3e8

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g1(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$r;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/a0$r;-><init>(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/a0;->e1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/a0$s0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/a0$s0;-><init>(Lcom/join/mgps/activity/a0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/a0;->d1:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method k0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/a0$n0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/a0$n0;-><init>(Lcom/join/mgps/activity/a0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method l0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/a0$o0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/a0$o0;-><init>(Lcom/join/mgps/activity/a0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method m0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/a0$t0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/a0$t0;-><init>(Lcom/join/mgps/activity/a0;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method o0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/a0$m0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/a0$m0;-><init>(Lcom/join/mgps/activity/a0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/a0;->c1:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/a0;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/z;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/a0;->g1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/a0;->f1:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/a0;->i1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/a0;->h1:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/a0;->k1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/a0;->j1:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/a0;->m1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/a0;->l1:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/activity/a0;->d1:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0292

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/a0;->d1:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/a0;->d1:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/a0;->g1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/a0;->i1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/a0;->k1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/a0;->m1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5
    invoke-super {p0}, Lcom/join/mgps/activity/z;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/a0;->d1:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/z;->b:Landroid/widget/TextView;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/z;->c:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/z;->d:Landroid/widget/ImageView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/z;->e:Landroid/widget/ImageView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/z;->f:Landroid/widget/ImageView;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/z;->g:Landroid/widget/ImageView;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/z;->h:Landroid/widget/ImageView;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/z;->i:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/z;->j:Landroid/widget/LinearLayout;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/z;->k:Landroid/widget/LinearLayout;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/z;->l:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/z;->m:Landroid/widget/TextView;

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/z;->n:Landroid/widget/RelativeLayout;

    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/z;->o:Landroid/widget/RelativeLayout;

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/z;->p:Landroid/widget/ImageView;

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/z;->q:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/z;->r:Landroid/widget/ProgressBar;

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/z;->s:Landroid/widget/LinearLayout;

    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/z;->t:Landroid/widget/RelativeLayout;

    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/z;->u:Landroid/widget/RelativeLayout;

    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/z;->v:Landroid/widget/RelativeLayout;

    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/z;->w:Landroid/widget/ImageView;

    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/z;->x:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/z;->y:Landroid/widget/LinearLayout;

    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/z;->z:Landroid/widget/LinearLayout;

    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/z;->A:Landroid/widget/Button;

    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/z;->B:Landroid/widget/RelativeLayout;

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/z;->C:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/z;->D:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/z;->E:Landroidx/core/widget/NestedScrollView;

    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/z;->S0:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/z;->T0:Landroid/widget/ImageView;

    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/z;->U0:Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/z;->V0:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/z;->W0:Landroid/widget/ImageView;

    .line 38
    iput-object v0, p0, Lcom/join/mgps/activity/z;->X0:Lcom/join/mgps/customview/CustomerDownloadView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 4

    const v0, 0x7f091023

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->b:Landroid/widget/TextView;

    const v0, 0x7f091033

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->c:Landroid/widget/TextView;

    const v0, 0x7f0907e0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->d:Landroid/widget/ImageView;

    const v0, 0x7f090dd4

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->e:Landroid/widget/ImageView;

    const v0, 0x7f090e35

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->f:Landroid/widget/ImageView;

    const v0, 0x7f0903aa

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->g:Landroid/widget/ImageView;

    const v0, 0x7f0904e9

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->h:Landroid/widget/ImageView;

    const v0, 0x7f0904e8

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->i:Landroid/widget/TextView;

    const v0, 0x7f0904eb

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f09087b

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f090cf2

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->l:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const v0, 0x7f09076d

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->m:Landroid/widget/TextView;

    const v0, 0x7f090c6e

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f09076e

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->o:Landroid/widget/RelativeLayout;

    const v0, 0x7f090204

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->p:Landroid/widget/ImageView;

    const v0, 0x7f090c02

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->q:Landroid/widget/TextView;

    const v0, 0x7f090203

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->r:Landroid/widget/ProgressBar;

    const v0, 0x7f0903c0

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f09102d

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->t:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903c5

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->u:Landroid/widget/RelativeLayout;

    const v0, 0x7f091027

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->v:Landroid/widget/RelativeLayout;

    const v0, 0x7f090de6

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->w:Landroid/widget/ImageView;

    const v0, 0x7f0903cd

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->x:Landroid/widget/ImageView;

    const v0, 0x7f0909b0

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->y:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b5

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->z:Landroid/widget/LinearLayout;

    const v0, 0x7f090e21

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->A:Landroid/widget/Button;

    const v0, 0x7f09100f

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->B:Landroid/widget/RelativeLayout;

    const v0, 0x7f0905e6

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->C:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0905e1

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->D:Landroid/widget/TextView;

    const v0, 0x7f090b49

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->E:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f09015e

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->S0:Landroid/widget/TextView;

    const v0, 0x7f0903c1

    .line 32
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->T0:Landroid/widget/ImageView;

    const v0, 0x7f090de7

    .line 33
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->U0:Landroid/widget/ImageView;

    const v0, 0x7f091030

    .line 34
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->V0:Landroid/widget/ImageView;

    const v0, 0x7f0906a2

    .line 35
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->W0:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 36
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/z;->X0:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f090d11

    .line 37
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09013e

    .line 38
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090c6d

    .line 39
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090e3c

    .line 40
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 41
    new-instance v3, Lcom/join/mgps/activity/a0$v0;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/a0$v0;-><init>(Lcom/join/mgps/activity/a0;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/z;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 43
    new-instance v3, Lcom/join/mgps/activity/a0$w0;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/a0$w0;-><init>(Lcom/join/mgps/activity/a0;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/z;->A:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 45
    new-instance v3, Lcom/join/mgps/activity/a0$x0;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/a0$x0;-><init>(Lcom/join/mgps/activity/a0;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/z;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 47
    new-instance v3, Lcom/join/mgps/activity/a0$y0;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/a0$y0;-><init>(Lcom/join/mgps/activity/a0;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 48
    new-instance v0, Lcom/join/mgps/activity/a0$z0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$z0;-><init>(Lcom/join/mgps/activity/a0;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/z;->w:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 50
    new-instance v1, Lcom/join/mgps/activity/a0$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/a0$a;-><init>(Lcom/join/mgps/activity/a0;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/z;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 52
    new-instance v1, Lcom/join/mgps/activity/a0$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/a0$b;-><init>(Lcom/join/mgps/activity/a0;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 53
    new-instance v0, Lcom/join/mgps/activity/a0$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$c;-><init>(Lcom/join/mgps/activity/a0;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/z;->s:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 55
    new-instance v1, Lcom/join/mgps/activity/a0$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/a0$d;-><init>(Lcom/join/mgps/activity/a0;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/z;->X0:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz v0, :cond_9

    .line 57
    new-instance v1, Lcom/join/mgps/activity/a0$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/a0$e;-><init>(Lcom/join/mgps/activity/a0;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/z;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 59
    new-instance v1, Lcom/join/mgps/activity/a0$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/a0$f;-><init>(Lcom/join/mgps/activity/a0;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/z;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 61
    new-instance v1, Lcom/join/mgps/activity/a0$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/a0$g;-><init>(Lcom/join/mgps/activity/a0;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    if-eqz p1, :cond_c

    .line 62
    new-instance v0, Lcom/join/mgps/activity/a0$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$h;-><init>(Lcom/join/mgps/activity/a0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/z;->afterView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/a0;->c1:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/a0;->e1:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/a0$j0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/a0$j0;-><init>(Lcom/join/mgps/activity/a0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method showInstallButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$y;-><init>(Lcom/join/mgps/activity/a0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$p;-><init>(Lcom/join/mgps/activity/a0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMain(Ljava/util/List;)V
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
    new-instance v0, Lcom/join/mgps/activity/a0$q;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/a0$q;-><init>(Lcom/join/mgps/activity/a0;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showProgress()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$x;-><init>(Lcom/join/mgps/activity/a0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/a0$o;-><init>(Lcom/join/mgps/activity/a0;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method u0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$t;-><init>(Lcom/join/mgps/activity/a0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$z;-><init>(Lcom/join/mgps/activity/a0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$a0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/a0$a0;-><init>(Lcom/join/mgps/activity/a0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/a0$w;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/a0$w;-><init>(Lcom/join/mgps/activity/a0;Lcom/join/mgps/dto/ResultMainBean;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method v0(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/a0$k0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/a0$k0;-><init>(Lcom/join/mgps/activity/a0;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentBaseBean;II)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method x0(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/a0$l0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/a0$l0;-><init>(Lcom/join/mgps/activity/a0;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentBaseBean;II)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method z0(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/a0$p0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/a0$p0;-><init>(Lcom/join/mgps/activity/a0;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
