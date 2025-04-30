.class public final Lcom/join/mgps/activity/o0;
.super Lcom/join/mgps/activity/n0;
.source "GamedetialModleFourFragemnt_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/o0$u0;
    }
.end annotation


# instance fields
.field private final B1:Li3/c;

.field private C1:Landroid/view/View;

.field private final D1:Ljava/util/Map;
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

.field private final E1:Landroid/content/IntentFilter;

.field private final F1:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/n0;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/o0;->B1:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/o0;->D1:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/o0;->E1:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/o0$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$k;-><init>(Lcom/join/mgps/activity/o0;)V

    iput-object v0, p0, Lcom/join/mgps/activity/o0;->F1:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->y0()V

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/o0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/n0;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->showLoding()V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->m0()V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/o0;Lcom/join/mgps/activity/n0$v;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/n0;->u0(Lcom/join/mgps/activity/n0$v;)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->showLodingFailed()V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->showProgress()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->showInstallButn()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->updateButn()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/o0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/n0;->setCommentNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/o0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/n0;->E0(I)V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/o0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/n0;->D0(I)V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->G0()V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/o0;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/n0;->J0(Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->updateDownloadView()V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/o0;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/n0;->H0(Z)V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/o0;Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/n0;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->d0()V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->e0()V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->M()V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/o0;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/n0$v;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/n0;->N(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/n0$v;)V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->X()V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->getDownloadTaskInfo()V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/o0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/n0;->changeGameFollow(I)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/o0;->E1:Landroid/content/IntentFilter;

    const-string v0, "com.broadcast.bespeak.sussess"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->P()V

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->F0()V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->C0()V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->k0()V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/o0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/n0;->x0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/activity/o0;Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/n0;->V(Lcom/join/mgps/dto/GameFromPopoWinBean;)V

    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/activity/o0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->Z()V

    return-void
.end method

.method public static q1()Lcom/join/mgps/activity/o0$u0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$u0;

    invoke-direct {v0}, Lcom/join/mgps/activity/o0$u0;-><init>()V

    return-object v0
.end method


# virtual methods
.method C0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$m;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method D0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$b0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o0$b0;-><init>(Lcom/join/mgps/activity/o0;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method E0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$a0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o0$a0;-><init>(Lcom/join/mgps/activity/o0;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method F0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$l;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method G0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$c0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$c0;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H0(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$e0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o0$e0;-><init>(Lcom/join/mgps/activity/o0;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x3e8

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o0$i;-><init>(Lcom/join/mgps/activity/o0;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method M()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/o0$j0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/o0$j0;-><init>(Lcom/join/mgps/activity/o0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method N(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/n0$v;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/o0$k0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/o0$k0;-><init>(Lcom/join/mgps/activity/o0;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/n0$v;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method P()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$j;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V(Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$p;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o0$p;-><init>(Lcom/join/mgps/activity/o0;Lcom/join/mgps/dto/GameFromPopoWinBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/o0$l0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/o0$l0;-><init>(Lcom/join/mgps/activity/o0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Z()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$q;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method changeGameFollow(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/o0$n0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/o0$n0;-><init>(Lcom/join/mgps/activity/o0;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method d0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/o0$h0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/o0$h0;-><init>(Lcom/join/mgps/activity/o0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method e0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/o0$i0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/o0$i0;-><init>(Lcom/join/mgps/activity/o0;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->D1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/o0$m0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/o0$m0;-><init>(Lcom/join/mgps/activity/o0;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->C1:Landroid/view/View;

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
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$n;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method m0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$s;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->B1:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/o0;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/o0;->F1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/o0;->E1:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/activity/o0;->C1:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0293

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/o0;->C1:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/o0;->C1:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/o0;->F1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/n0;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/o0;->C1:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->e:Landroid/widget/RelativeLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->f:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->g:Lcom/join/android/app/component/video/StandardVideoView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->i:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->j:Landroidx/viewpager/widget/ViewPager;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->k:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->l:Landroid/view/View;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->m:Landroidx/viewpager/widget/ViewPager;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->n:Landroid/view/View;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->o:Lcom/google/android/material/appbar/AppBarLayout;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->p:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->q:Landroid/widget/RelativeLayout;

    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->r:Landroid/widget/RelativeLayout;

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->s:Landroid/widget/RelativeLayout;

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->t:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->u:Landroid/widget/RelativeLayout;

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->v:Landroid/widget/RelativeLayout;

    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->w:Landroid/widget/ImageView;

    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->x:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->y:Landroid/widget/ProgressBar;

    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->z:Landroid/widget/LinearLayout;

    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->A:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->B:Landroid/widget/ImageView;

    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->C:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->D:Landroid/widget/ImageView;

    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->E:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->F:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->G:Landroidx/appcompat/widget/Toolbar;

    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->H:Landroid/view/View;

    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->I:Landroid/view/View;

    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->J:Landroid/view/View;

    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->K:Landroid/view/View;

    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->n0:Landroid/view/View;

    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->o0:Landroid/widget/LinearLayout;

    .line 38
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->p0:Landroid/widget/LinearLayout;

    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->q0:Landroid/view/View;

    .line 40
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->r0:Landroid/view/View;

    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->j1:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->k1:Landroid/widget/ImageView;

    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->l1:Landroid/widget/ImageView;

    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->m1:Landroid/widget/ImageView;

    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/n0;->n1:Landroid/widget/ImageView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 9

    const v0, 0x7f091271    # 1.8219999E38f

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f090b4b

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->f:Landroid/view/View;

    const v0, 0x7f09126a

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/StandardVideoView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->g:Lcom/join/android/app/component/video/StandardVideoView;

    const v0, 0x7f0907e6

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090f18

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyco/tablayout/SlidingTabLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->i:Lcom/flyco/tablayout/SlidingTabLayout;

    const v0, 0x7f091280

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->j:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090f0e

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->k:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    const v0, 0x7f09016d

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->l:Landroid/view/View;

    const v0, 0x7f091281

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->m:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090eef

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->n:Landroid/view/View;

    const v0, 0x7f0900cf

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->o:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f09029c

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->p:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v0, 0x7f09102d

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->q:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903c5

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->r:Landroid/widget/RelativeLayout;

    const v0, 0x7f091027

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->s:Landroid/widget/RelativeLayout;

    const v0, 0x7f09076d

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->t:Landroid/widget/TextView;

    const v0, 0x7f090c6e

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->u:Landroid/widget/RelativeLayout;

    const v0, 0x7f09076e

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->v:Landroid/widget/RelativeLayout;

    const v0, 0x7f090204

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->w:Landroid/widget/ImageView;

    const v0, 0x7f090c02

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->x:Landroid/widget/TextView;

    const v0, 0x7f090203

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->y:Landroid/widget/ProgressBar;

    const v0, 0x7f0903c0

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->z:Landroid/widget/LinearLayout;

    const v0, 0x7f090de6

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->A:Landroid/widget/ImageView;

    const v0, 0x7f0903cd

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->B:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->C:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f0904e9

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->D:Landroid/widget/ImageView;

    const v0, 0x7f0904e8

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->E:Landroid/widget/TextView;

    const v0, 0x7f091033

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->F:Landroid/widget/TextView;

    const v0, 0x7f09104b

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->G:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0909f5

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->H:Landroid/view/View;

    const v0, 0x7f0909b5

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->I:Landroid/view/View;

    const v0, 0x7f0909b0

    .line 32
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->J:Landroid/view/View;

    const v0, 0x7f0907e1

    .line 33
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->K:Landroid/view/View;

    const v0, 0x7f090e21

    .line 34
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->n0:Landroid/view/View;

    const v0, 0x7f090191

    .line 35
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->o0:Landroid/widget/LinearLayout;

    const v0, 0x7f09100c

    .line 36
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->p0:Landroid/widget/LinearLayout;

    const v0, 0x7f090311

    .line 37
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->q0:Landroid/view/View;

    const v0, 0x7f090ee2

    .line 38
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->r0:Landroid/view/View;

    const v0, 0x7f09015e

    .line 39
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->j1:Landroid/widget/TextView;

    const v0, 0x7f0903c1

    .line 40
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->k1:Landroid/widget/ImageView;

    const v0, 0x7f090de7

    .line 41
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->l1:Landroid/widget/ImageView;

    const v0, 0x7f091030

    .line 42
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->m1:Landroid/widget/ImageView;

    const v0, 0x7f0906a2

    .line 43
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/n0;->n1:Landroid/widget/ImageView;

    const v0, 0x7f090d11

    .line 44
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090013

    .line 45
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0907e0

    .line 46
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09013e

    .line 47
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090c6d

    .line 48
    invoke-interface {p1, v4}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0903aa

    .line 49
    invoke-interface {p1, v5}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090e35

    .line 50
    invoke-interface {p1, v6}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090e3c

    .line 51
    invoke-interface {p1, v7}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0904eb

    .line 52
    invoke-interface {p1, v8}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 53
    new-instance v8, Lcom/join/mgps/activity/o0$v;

    invoke-direct {v8, p0}, Lcom/join/mgps/activity/o0$v;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 54
    new-instance v0, Lcom/join/mgps/activity/o0$g0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$g0;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/n0;->n0:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 56
    new-instance v1, Lcom/join/mgps/activity/o0$o0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/o0$o0;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 57
    new-instance v0, Lcom/join/mgps/activity/o0$p0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$p0;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 58
    new-instance v0, Lcom/join/mgps/activity/o0$q0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$q0;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 59
    new-instance v0, Lcom/join/mgps/activity/o0$r0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$r0;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/n0;->K:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 61
    new-instance v1, Lcom/join/mgps/activity/o0$s0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/o0$s0;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/n0;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 63
    new-instance v1, Lcom/join/mgps/activity/o0$t0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/o0$t0;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/n0;->z:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 65
    new-instance v1, Lcom/join/mgps/activity/o0$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/o0$a;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/n0;->C:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz v0, :cond_9

    .line 67
    new-instance v1, Lcom/join/mgps/activity/o0$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/o0$b;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    if-eqz v5, :cond_a

    .line 68
    new-instance v0, Lcom/join/mgps/activity/o0$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$c;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    if-eqz v6, :cond_b

    .line 69
    new-instance v0, Lcom/join/mgps/activity/o0$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$d;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    if-eqz v7, :cond_c

    .line 70
    new-instance v0, Lcom/join/mgps/activity/o0$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$e;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    if-eqz p1, :cond_d

    .line 71
    new-instance v0, Lcom/join/mgps/activity/o0$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$f;-><init>(Lcom/join/mgps/activity/o0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/activity/n0;->afterView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/o0;->B1:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/activity/o0;->D1:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCommentNumber(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$z;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o0$z;-><init>(Lcom/join/mgps/activity/o0;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showInstallButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$x;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$h;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$u;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showProgress()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$w;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$r;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o0$r;-><init>(Lcom/join/mgps/activity/o0;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method u0(Lcom/join/mgps/activity/n0$v;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$t;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o0$t;-><init>(Lcom/join/mgps/activity/o0;Lcom/join/mgps/activity/n0$v;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$y;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$d0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$d0;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$f0;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/o0$f0;-><init>(Lcom/join/mgps/activity/o0;Lcom/join/mgps/dto/ResultMainBean;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method x0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/o0$o;-><init>(Lcom/join/mgps/activity/o0;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/o0$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/o0$g;-><init>(Lcom/join/mgps/activity/o0;)V

    const-string v1, ""

    const-wide/16 v2, 0xfa0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
