.class public final Lcom/join/mgps/activity/m0;
.super Lcom/join/mgps/activity/l0;
.source "GamedetialModleFiveFragemnt_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/m0$v0;
    }
.end annotation


# instance fields
.field private final M1:Li3/c;

.field private N1:Landroid/view/View;

.field private final O1:Ljava/util/Map;
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

.field private final P1:Landroid/content/IntentFilter;

.field private final Q1:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/l0;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/m0;->M1:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/m0;->O1:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/m0;->P1:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/m0$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$k;-><init>(Lcom/join/mgps/activity/m0;)V

    iput-object v0, p0, Lcom/join/mgps/activity/m0;->Q1:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->getDownloadTaskInfo()V

    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->S()V

    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/m0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/l0;->changeGameFollow(I)V

    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->X0()V

    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->U0()V

    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->w0()V

    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/activity/m0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/l0;->O0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/activity/m0;Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/l0;->a0(Lcom/join/mgps/dto/GameFromPopoWinBean;)V

    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->d0()V

    return-void
.end method

.method public static J1()Lcom/join/mgps/activity/m0$v0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$v0;

    invoke-direct {v0}, Lcom/join/mgps/activity/m0$v0;-><init>()V

    return-object v0
.end method

.method static synthetic d1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->Q0()V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/m0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/l0;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->showLoding()V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->y0()V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/m0;Lcom/join/mgps/activity/l0$e0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/l0;->L0(Lcom/join/mgps/activity/l0$e0;)V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/m0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/l0;->e0(Ljava/lang/String;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/m0;->P1:Landroid/content/IntentFilter;

    const-string v0, "com.broadcast.bespeak.sussess"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->showLodingFailed()V

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->showProgress()V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->showInstallButn()V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->updateButn()V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/m0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/l0;->setCommentNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/activity/m0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/l0;->W0(I)V

    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/activity/m0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/l0;->V0(I)V

    return-void
.end method

.method static synthetic q1(Lcom/join/mgps/activity/m0;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/l0;->b1(Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    return-void
.end method

.method static synthetic r1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->Y0()V

    return-void
.end method

.method static synthetic s1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->updateDownloadView()V

    return-void
.end method

.method static synthetic t1(Lcom/join/mgps/activity/m0;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/l0;->Z0(Z)V

    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/activity/m0;Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/l0;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V

    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->k0()V

    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->l0()V

    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->P()V

    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/activity/m0;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/l0$e0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/l0;->Q(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/l0$e0;)V

    return-void
.end method

.method static synthetic z1(Lcom/join/mgps/activity/m0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->c0()V

    return-void
.end method


# virtual methods
.method L0(Lcom/join/mgps/activity/l0$e0;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$t;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/m0$t;-><init>(Lcom/join/mgps/activity/m0;Lcom/join/mgps/activity/l0$e0;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/m0$o;-><init>(Lcom/join/mgps/activity/m0;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/m0$k0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/m0$k0;-><init>(Lcom/join/mgps/activity/m0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Q(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/l0$e0;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/m0$l0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/m0$l0;-><init>(Lcom/join/mgps/activity/m0;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/l0$e0;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Q0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$g;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0xfa0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$j;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$m;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$c0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/m0$c0;-><init>(Lcom/join/mgps/activity/m0;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$b0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/m0$b0;-><init>(Lcom/join/mgps/activity/m0;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$l;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Y0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$d0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$d0;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z0(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$f0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/m0$f0;-><init>(Lcom/join/mgps/activity/m0;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x3e8

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a0(Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$p;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/m0$p;-><init>(Lcom/join/mgps/activity/m0;Lcom/join/mgps/dto/GameFromPopoWinBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b1(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/m0$i;-><init>(Lcom/join/mgps/activity/m0;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/m0$m0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/m0$m0;-><init>(Lcom/join/mgps/activity/m0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method changeGameFollow(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/m0$o0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/m0$o0;-><init>(Lcom/join/mgps/activity/m0;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method d0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$q;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method e0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$u;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/m0$u;-><init>(Lcom/join/mgps/activity/m0;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x258

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
    iget-object v0, p0, Lcom/join/mgps/activity/m0;->O1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/m0$n0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/m0$n0;-><init>(Lcom/join/mgps/activity/m0;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/m0;->N1:Landroid/view/View;

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
    new-instance v6, Lcom/join/mgps/activity/m0$i0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/m0$i0;-><init>(Lcom/join/mgps/activity/m0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method l0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/m0$j0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/m0$j0;-><init>(Lcom/join/mgps/activity/m0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/m0;->M1:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/m0;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/m0;->Q1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/m0;->P1:Landroid/content/IntentFilter;

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

    iput-object p3, p0, Lcom/join/mgps/activity/m0;->N1:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0291

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/m0;->N1:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/m0;->N1:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/m0;->Q1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/l0;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/m0;->N1:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->e:Landroid/widget/RelativeLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->f:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->g:Lcom/join/android/app/component/video/StandardVideoView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->i:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->j:Landroidx/viewpager/widget/ViewPager;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->k:Landroidx/viewpager/widget/ViewPager;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->l:Landroid/view/View;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->m:Lcom/google/android/material/appbar/AppBarLayout;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->n:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->o:Landroid/widget/RelativeLayout;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->p:Landroid/widget/RelativeLayout;

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->q:Landroid/widget/RelativeLayout;

    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->r:Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->s:Landroid/widget/RelativeLayout;

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->t:Landroid/widget/RelativeLayout;

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->u:Landroid/widget/ImageView;

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->v:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->w:Landroid/widget/ProgressBar;

    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->x:Landroid/widget/LinearLayout;

    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->y:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->z:Landroid/widget/ImageView;

    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->A:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->B:Landroid/widget/ImageView;

    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->C:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->D:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->E:Landroidx/appcompat/widget/Toolbar;

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->F:Lcom/join/mgps/customview/CoordinatorLayout;

    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->G:Landroid/view/View;

    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->H:Landroid/view/View;

    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->I:Landroid/view/View;

    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->J:Landroid/view/View;

    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->K:Landroid/widget/LinearLayout;

    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->n0:Landroid/widget/LinearLayout;

    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->o0:Landroid/view/View;

    .line 38
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->p0:Landroid/view/View;

    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->q0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 40
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->r0:Landroid/widget/RelativeLayout;

    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->s0:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 42
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->t0:Landroid/widget/LinearLayout;

    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->u0:Lit/sephiroth/android/library/widget/HListView;

    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->e1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->f1:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->g1:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->h1:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->i1:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->j1:Lcom/join/mgps/customview/MStarBar;

    .line 50
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->k1:Landroid/widget/LinearLayout;

    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->l1:Landroid/widget/LinearLayout;

    .line 52
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->m1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->n1:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->o1:Landroid/widget/LinearLayout;

    .line 55
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->p1:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->q1:Landroid/widget/TextView;

    .line 57
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->s1:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->t1:Landroid/widget/ImageView;

    .line 59
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->u1:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->v1:Landroid/widget/ImageView;

    .line 61
    iput-object v0, p0, Lcom/join/mgps/activity/l0;->w1:Landroid/widget/ImageView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 9

    const v0, 0x7f091271    # 1.8219999E38f

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f090b4b

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->f:Landroid/view/View;

    const v0, 0x7f09126a

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/StandardVideoView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->g:Lcom/join/android/app/component/video/StandardVideoView;

    const v0, 0x7f0907e6

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090f18

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyco/tablayout/SlidingTabLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->i:Lcom/flyco/tablayout/SlidingTabLayout;

    const v0, 0x7f091280

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->j:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f091281

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->k:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090eef

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->l:Landroid/view/View;

    const v0, 0x7f0900cf

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->m:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f09029c

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->n:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v0, 0x7f09102d

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->o:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903c5

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f091027

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->q:Landroid/widget/RelativeLayout;

    const v0, 0x7f09076d

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->r:Landroid/widget/TextView;

    const v0, 0x7f090c6e

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->s:Landroid/widget/RelativeLayout;

    const v0, 0x7f09076e

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->t:Landroid/widget/RelativeLayout;

    const v0, 0x7f090204

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->u:Landroid/widget/ImageView;

    const v0, 0x7f090c02

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->v:Landroid/widget/TextView;

    const v0, 0x7f090203

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->w:Landroid/widget/ProgressBar;

    const v0, 0x7f0903c0

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->x:Landroid/widget/LinearLayout;

    const v0, 0x7f090de6

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->y:Landroid/widget/ImageView;

    const v0, 0x7f0903cd

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->z:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->A:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f0904e9

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->B:Landroid/widget/ImageView;

    const v0, 0x7f0904e8

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->C:Landroid/widget/TextView;

    const v0, 0x7f091033

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->D:Landroid/widget/TextView;

    const v0, 0x7f09104b

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->E:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0909f5

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CoordinatorLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->F:Lcom/join/mgps/customview/CoordinatorLayout;

    const v0, 0x7f0909b5

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->G:Landroid/view/View;

    const v0, 0x7f0909b0

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->H:Landroid/view/View;

    const v0, 0x7f0907e1

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->I:Landroid/view/View;

    const v0, 0x7f090e21

    .line 32
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->J:Landroid/view/View;

    const v0, 0x7f090191

    .line 33
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->K:Landroid/widget/LinearLayout;

    const v0, 0x7f09100c

    .line 34
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->n0:Landroid/widget/LinearLayout;

    const v0, 0x7f090311

    .line 35
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->o0:Landroid/view/View;

    const v0, 0x7f090ee2

    .line 36
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->p0:Landroid/view/View;

    const v0, 0x7f090e45

    .line 37
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->q0:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    const v0, 0x7f090d60

    .line 38
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->r0:Landroid/widget/RelativeLayout;

    const v0, 0x7f091114

    .line 39
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->s0:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    const v0, 0x7f090970

    .line 40
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->t0:Landroid/widget/LinearLayout;

    const v0, 0x7f09065d

    .line 41
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->u0:Lit/sephiroth/android/library/widget/HListView;

    const v0, 0x7f0900d9

    .line 42
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->e1:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0900e1

    .line 43
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->f1:Landroid/widget/TextView;

    const v0, 0x7f0900d5

    .line 44
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->g1:Landroid/widget/TextView;

    const v0, 0x7f0900ea

    .line 45
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->h1:Landroid/widget/TextView;

    const v0, 0x7f0900d8

    .line 46
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->i1:Landroid/widget/TextView;

    const v0, 0x7f0902ac

    .line 47
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->j1:Lcom/join/mgps/customview/MStarBar;

    const v0, 0x7f0902d2

    .line 48
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->k1:Landroid/widget/LinearLayout;

    const v0, 0x7f09087b

    .line 49
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->l1:Landroid/widget/LinearLayout;

    const v0, 0x7f0905e6

    .line 50
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->m1:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0905e1

    .line 51
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->n1:Landroid/widget/TextView;

    const v0, 0x7f090dbd

    .line 52
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->o1:Landroid/widget/LinearLayout;

    const v0, 0x7f0902af

    .line 53
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->p1:Landroid/widget/TextView;

    const v0, 0x7f0902ae

    .line 54
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->q1:Landroid/widget/TextView;

    const v0, 0x7f09015e

    .line 55
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->s1:Landroid/widget/TextView;

    const v0, 0x7f0903c1

    .line 56
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->t1:Landroid/widget/ImageView;

    const v0, 0x7f090de7

    .line 57
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->u1:Landroid/widget/ImageView;

    const v0, 0x7f091030

    .line 58
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->v1:Landroid/widget/ImageView;

    const v0, 0x7f0906a2

    .line 59
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/l0;->w1:Landroid/widget/ImageView;

    const v0, 0x7f090d11

    .line 60
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090013

    .line 61
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0907e0

    .line 62
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09013e

    .line 63
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090c6d

    .line 64
    invoke-interface {p1, v4}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0903aa

    .line 65
    invoke-interface {p1, v5}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090e35

    .line 66
    invoke-interface {p1, v6}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090e3c

    .line 67
    invoke-interface {p1, v7}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0904eb

    .line 68
    invoke-interface {p1, v8}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 69
    new-instance v8, Lcom/join/mgps/activity/m0$v;

    invoke-direct {v8, p0}, Lcom/join/mgps/activity/m0$v;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 70
    new-instance v0, Lcom/join/mgps/activity/m0$g0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$g0;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/l0;->J:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 72
    new-instance v1, Lcom/join/mgps/activity/m0$p0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/m0$p0;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 73
    new-instance v0, Lcom/join/mgps/activity/m0$q0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$q0;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 74
    new-instance v0, Lcom/join/mgps/activity/m0$r0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$r0;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 75
    new-instance v0, Lcom/join/mgps/activity/m0$s0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$s0;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/l0;->I:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 77
    new-instance v1, Lcom/join/mgps/activity/m0$t0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/m0$t0;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/l0;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 79
    new-instance v1, Lcom/join/mgps/activity/m0$u0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/m0$u0;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/l0;->x:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 81
    new-instance v1, Lcom/join/mgps/activity/m0$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/m0$a;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/l0;->A:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz v0, :cond_9

    .line 83
    new-instance v1, Lcom/join/mgps/activity/m0$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/m0$b;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    if-eqz v5, :cond_a

    .line 84
    new-instance v0, Lcom/join/mgps/activity/m0$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$c;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    if-eqz v6, :cond_b

    .line 85
    new-instance v0, Lcom/join/mgps/activity/m0$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$d;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    if-eqz v7, :cond_c

    .line 86
    new-instance v0, Lcom/join/mgps/activity/m0$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$e;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    if-eqz p1, :cond_d

    .line 87
    new-instance v0, Lcom/join/mgps/activity/m0$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$f;-><init>(Lcom/join/mgps/activity/m0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/activity/l0;->afterView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/m0;->M1:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/activity/m0;->O1:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCommentNumber(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$a0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/m0$a0;-><init>(Lcom/join/mgps/activity/m0;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showInstallButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$y;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$h;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$w;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showProgress()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$x;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$r;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/m0$r;-><init>(Lcom/join/mgps/activity/m0;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$z;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$e0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$e0;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$h0;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/m0$h0;-><init>(Lcom/join/mgps/activity/m0;Lcom/join/mgps/dto/ResultMainBean;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method w0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$n;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/m0$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/m0$s;-><init>(Lcom/join/mgps/activity/m0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
