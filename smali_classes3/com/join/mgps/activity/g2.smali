.class public final Lcom/join/mgps/activity/g2;
.super Lcom/join/mgps/activity/f2;
.source "PapaMainFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/g2$p0;
    }
.end annotation


# instance fields
.field private final V0:Li3/c;

.field private W0:Landroid/view/View;

.field private final X0:Ljava/util/Map;
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

.field private final Y0:Landroid/content/IntentFilter;

.field private final Z0:Landroid/content/BroadcastReceiver;

.field private final a1:Landroid/content/IntentFilter;

.field private final b1:Landroid/content/BroadcastReceiver;

.field private final c1:Landroid/content/IntentFilter;

.field private final d1:Landroid/content/BroadcastReceiver;

.field private final e1:Landroid/content/IntentFilter;

.field private final f1:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/f2;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/g2;->V0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/g2;->X0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/g2;->Y0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/g2$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$k;-><init>(Lcom/join/mgps/activity/g2;)V

    iput-object v0, p0, Lcom/join/mgps/activity/g2;->Z0:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/g2;->a1:Landroid/content/IntentFilter;

    .line 7
    new-instance v0, Lcom/join/mgps/activity/g2$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$v;-><init>(Lcom/join/mgps/activity/g2;)V

    iput-object v0, p0, Lcom/join/mgps/activity/g2;->b1:Landroid/content/BroadcastReceiver;

    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/g2;->c1:Landroid/content/IntentFilter;

    .line 9
    new-instance v0, Lcom/join/mgps/activity/g2$g0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$g0;-><init>(Lcom/join/mgps/activity/g2;)V

    iput-object v0, p0, Lcom/join/mgps/activity/g2;->d1:Landroid/content/BroadcastReceiver;

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/g2;->e1:Landroid/content/IntentFilter;

    .line 11
    new-instance v0, Lcom/join/mgps/activity/g2$j0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$j0;-><init>(Lcom/join/mgps/activity/g2;)V

    iput-object v0, p0, Lcom/join/mgps/activity/g2;->f1:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->Y0()V

    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->D0()V

    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->showLoding()V

    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->showLodingFailed()V

    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->h1()V

    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->r0()V

    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/activity/g2;Lcom/join/mgps/dto/HomeFloatData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->f1(Lcom/join/mgps/dto/HomeFloatData;)V

    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->r1()V

    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/activity/g2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->n1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic J1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->p0()V

    return-void
.end method

.method static synthetic K1(Lcom/join/mgps/activity/g2;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/f2;->t0(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic L1(Lcom/join/mgps/activity/g2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->g0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic M1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->l0()V

    return-void
.end method

.method static synthetic N1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->y0()V

    return-void
.end method

.method static synthetic O1(Lcom/join/mgps/activity/g2;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/f2;->A0(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic P1(Lcom/join/mgps/activity/g2;Lcom/join/mgps/dto/PAPAHomeBeanV6;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->S0(Lcom/join/mgps/dto/PAPAHomeBeanV6;)V

    return-void
.end method

.method static synthetic Q1(Lcom/join/mgps/activity/g2;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->R0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic R1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->k0()V

    return-void
.end method

.method static synthetic S1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->e1()V

    return-void
.end method

.method static synthetic T1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->B0()V

    return-void
.end method

.method static synthetic U1(Lcom/join/mgps/activity/g2;Lcom/join/mgps/dto/PAPAHomeBeanV6;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/f2;->o1(Lcom/join/mgps/dto/PAPAHomeBeanV6;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic V1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->z0()V

    return-void
.end method

.method static synthetic W1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->E0()V

    return-void
.end method

.method static synthetic X1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->G0()V

    return-void
.end method

.method static synthetic Y1(Lcom/join/mgps/activity/g2;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/f2;->b1(Ljava/util/List;Z)V

    return-void
.end method

.method public static Z1()Lcom/join/mgps/activity/g2$p0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$p0;

    invoke-direct {v0}, Lcom/join/mgps/activity/g2$p0;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->D:Lcom/join/mgps/pref/PrefDef_;

    .line 3
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const v0, 0x7f110207

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->d:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/f2;->e:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/g2;->Y0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/g2;->a1:Landroid/content/IntentFilter;

    const-string v0, "com.broadcast.bespeak.sussess"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/g2;->c1:Landroid/content/IntentFilter;

    const-string v0, "com.papa.maintab.clicked"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/g2;->e1:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/g2;->e1:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->u1()V

    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/activity/g2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->g1()V

    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/activity/g2;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->i1(Ljava/util/List;)V

    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/activity/g2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic z1(Lcom/join/mgps/activity/g2;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/f2;->m1(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method A0(Ljava/lang/String;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/g2$e0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/g2$e0;-><init>(Lcom/join/mgps/activity/g2;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method B0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$g;-><init>(Lcom/join/mgps/activity/g2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method D0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$r;-><init>(Lcom/join/mgps/activity/g2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method E0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$j;-><init>(Lcom/join/mgps/activity/g2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method G0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$l;-><init>(Lcom/join/mgps/activity/g2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R0(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/g2$h0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/g2$h0;-><init>(Lcom/join/mgps/activity/g2;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method S0(Lcom/join/mgps/dto/PAPAHomeBeanV6;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/g2$f0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/g2$f0;-><init>(Lcom/join/mgps/activity/g2;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV6;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Y0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$q;-><init>(Lcom/join/mgps/activity/g2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b1(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$m;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/g2$m;-><init>(Lcom/join/mgps/activity/g2;Ljava/util/List;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method e1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$f;-><init>(Lcom/join/mgps/activity/g2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f1(Lcom/join/mgps/dto/HomeFloatData;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$x;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/g2$x;-><init>(Lcom/join/mgps/activity/g2;Lcom/join/mgps/dto/HomeFloatData;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/g2$b0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/g2$b0;-><init>(Lcom/join/mgps/activity/g2;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method g1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$n;-><init>(Lcom/join/mgps/activity/g2;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/g2;->X0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$u;-><init>(Lcom/join/mgps/activity/g2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method i1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/VipPopData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/g2$d;-><init>(Lcom/join/mgps/activity/g2;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/g2;->W0:Landroid/view/View;

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
    new-instance v6, Lcom/join/mgps/activity/g2$i0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/g2$i0;-><init>(Lcom/join/mgps/activity/g2;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method l0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/g2$c0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/g2$c0;-><init>(Lcom/join/mgps/activity/g2;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method m1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$p;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/g2$p;-><init>(Lcom/join/mgps/activity/g2;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method n1(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/g2$e;-><init>(Lcom/join/mgps/activity/g2;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method o1(Lcom/join/mgps/dto/PAPAHomeBeanV6;Ljava/lang/String;IZ)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/g2$h;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/g2$h;-><init>(Lcom/join/mgps/activity/g2;Lcom/join/mgps/dto/PAPAHomeBeanV6;Ljava/lang/String;IZ)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v6, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/g2;->V0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/g2;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/g2;->Z0:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/g2;->Y0:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/g2;->b1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/g2;->a1:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/g2;->d1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/g2;->c1:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/g2;->f1:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/g2;->e1:Landroid/content/IntentFilter;

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

    iput-object p3, p0, Lcom/join/mgps/activity/g2;->W0:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0484

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/g2;->W0:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/g2;->W0:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/g2;->Z0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/g2;->b1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/g2;->d1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/g2;->f1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5
    invoke-super {p0}, Lcom/join/mgps/activity/f2;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/g2;->W0:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->g:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->h:Landroid/widget/LinearLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->i:Landroid/widget/LinearLayout;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->j:Landroid/widget/ImageView;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->k:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->m:Landroid/widget/ImageView;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->n:Landroid/view/View;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->q0:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->r0:Landroid/view/View;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 4

    const v0, 0x7f0908e7

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f091220

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->g:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f090a96

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->j:Landroid/widget/ImageView;

    const v0, 0x7f091021

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->k:Landroid/view/View;

    const v0, 0x7f0907c8

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0906a2

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->m:Landroid/widget/ImageView;

    const v0, 0x7f090ee4

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->n:Landroid/view/View;

    const v0, 0x7f0909e2

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->q0:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f090dd4

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->r0:Landroid/view/View;

    const v0, 0x7f090d11

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e35

    .line 13
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090e21

    .line 14
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->r0:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 16
    new-instance v3, Lcom/join/mgps/activity/g2$k0;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/g2$k0;-><init>(Lcom/join/mgps/activity/g2;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->j:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 18
    new-instance v3, Lcom/join/mgps/activity/g2$l0;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/g2$l0;-><init>(Lcom/join/mgps/activity/g2;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v2, :cond_2

    .line 20
    new-instance v3, Lcom/join/mgps/activity/g2$m0;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/g2$m0;-><init>(Lcom/join/mgps/activity/g2;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 21
    new-instance v2, Lcom/join/mgps/activity/g2$n0;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/g2$n0;-><init>(Lcom/join/mgps/activity/g2;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 22
    new-instance v0, Lcom/join/mgps/activity/g2$o0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$o0;-><init>(Lcom/join/mgps/activity/g2;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 23
    new-instance v0, Lcom/join/mgps/activity/g2$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$a;-><init>(Lcom/join/mgps/activity/g2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->k:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 25
    new-instance v0, Lcom/join/mgps/activity/g2$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$b;-><init>(Lcom/join/mgps/activity/g2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/g2;->V0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method p0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/g2$z;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/g2$z;-><init>(Lcom/join/mgps/activity/g2;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/g2;->X0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method r0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$w;-><init>(Lcom/join/mgps/activity/g2;)V

    const-string v1, ""

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method r1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$y;-><init>(Lcom/join/mgps/activity/g2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$s;-><init>(Lcom/join/mgps/activity/g2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$t;-><init>(Lcom/join/mgps/activity/g2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/g2$o;-><init>(Lcom/join/mgps/activity/g2;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method t0(ILjava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/g2$a0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/g2$a0;-><init>(Lcom/join/mgps/activity/g2;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method u1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$c;-><init>(Lcom/join/mgps/activity/g2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/g2$d0;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/g2$d0;-><init>(Lcom/join/mgps/activity/g2;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method z0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/g2$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/g2$i;-><init>(Lcom/join/mgps/activity/g2;)V

    const-string v1, ""

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
