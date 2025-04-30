.class public final Lcom/join/mgps/fragment/r0;
.super Lcom/join/mgps/fragment/q0;
.source "ForumIndexFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/r0$c0;
    }
.end annotation


# instance fields
.field private final A0:Ljava/util/Map;
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

.field private final B0:Landroid/content/IntentFilter;

.field private final C0:Landroid/content/BroadcastReceiver;

.field private final D0:Landroid/content/IntentFilter;

.field private final E0:Landroid/content/BroadcastReceiver;

.field private final y0:Li3/c;

.field private z0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/q0;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/r0;->y0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/r0;->A0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/r0;->B0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/fragment/r0$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r0$k;-><init>(Lcom/join/mgps/fragment/r0;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/r0;->C0:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/r0;->D0:Landroid/content/IntentFilter;

    .line 7
    new-instance v0, Lcom/join/mgps/fragment/r0$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r0$u;-><init>(Lcom/join/mgps/fragment/r0;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/r0;->E0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->F0()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->E0()V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->z0()V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/fragment/r0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->T(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->x0()V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/fragment/r0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->K0(I)V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/fragment/r0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->I0(I)V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->L0()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->J0()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->m0()V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->f0()V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/fragment/r0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->u0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->d0()V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/fragment/r0;ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/q0;->A0(ZLjava/util/List;)V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->b0()V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->H0()V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->W()V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/fragment/r0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->q0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->B0()V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/fragment/r0;Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->y0(Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->h0()V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/fragment/r0;Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->w0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/fragment/r0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q0;->V(I)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/fragment/q0;->n0:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/r0;->B0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/r0;->D0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.backup_game_finish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/fragment/r0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->r0()V

    return-void
.end method

.method public static k1()Lcom/join/mgps/fragment/r0$c0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$c0;

    invoke-direct {v0}, Lcom/join/mgps/fragment/r0$c0;-><init>()V

    return-object v0
.end method


# virtual methods
.method A0(ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$z;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/r0$z;-><init>(Lcom/join/mgps/fragment/r0;ZLjava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method B0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$b0;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r0$b0;-><init>(Lcom/join/mgps/fragment/r0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method E0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r0$f;-><init>(Lcom/join/mgps/fragment/r0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method F0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r0$x;-><init>(Lcom/join/mgps/fragment/r0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/r0$s;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/r0$s;-><init>(Lcom/join/mgps/fragment/r0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method I0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/r0$j;-><init>(Lcom/join/mgps/fragment/r0;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r0$m;-><init>(Lcom/join/mgps/fragment/r0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/r0$i;-><init>(Lcom/join/mgps/fragment/r0;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r0$l;-><init>(Lcom/join/mgps/fragment/r0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/r0$g;-><init>(Lcom/join/mgps/fragment/r0;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/r0$d;-><init>(Lcom/join/mgps/fragment/r0;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/r0$t;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/r0$t;-><init>(Lcom/join/mgps/fragment/r0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method b0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/r0$r;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/r0$r;-><init>(Lcom/join/mgps/fragment/r0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method d0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/r0$q;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/r0$q;-><init>(Lcom/join/mgps/fragment/r0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method f0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/r0$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/r0$o;-><init>(Lcom/join/mgps/fragment/r0;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/r0;->A0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r0$b;-><init>(Lcom/join/mgps/fragment/r0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/r0;->z0:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method m0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/r0$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/r0$n;-><init>(Lcom/join/mgps/fragment/r0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/r0;->y0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/r0;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/r0;->C0:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/fragment/r0;->B0:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/r0;->E0:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/fragment/r0;->D0:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/r0;->z0:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c040c

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/r0;->z0:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/r0;->z0:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/r0;->C0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/r0;->E0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q0;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/r0;->z0:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->b:Landroid/view/View;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->c:Landroid/widget/ImageView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->d:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->e:Landroid/widget/TextView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->g:Lru/noties/scrollable/ScrollableLayout;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->h:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->i:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->j:Landroidx/viewpager/widget/ViewPager;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->l:Landroid/widget/RelativeLayout;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->z:Landroid/widget/RelativeLayout;

    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->B:Landroid/widget/TextView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09006e

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->b:Landroid/view/View;

    const v0, 0x7f09013e

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->c:Landroid/widget/ImageView;

    const v0, 0x7f090038

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->d:Landroid/view/View;

    const v0, 0x7f09052c

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->e:Landroid/widget/TextView;

    const v0, 0x7f090986

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->f:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f090dcb

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/noties/scrollable/ScrollableLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->g:Lru/noties/scrollable/ScrollableLayout;

    const v0, 0x7f090649

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumIndexHeaderView;

    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->h:Lcom/join/mgps/customview/ForumIndexHeaderView;

    const v0, 0x7f090f19

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/SlidingTabLayout4;

    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->i:Lcom/join/mgps/customview/SlidingTabLayout4;

    const v0, 0x7f091280

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->j:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0909e2

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f090dd4

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->l:Landroid/widget/RelativeLayout;

    const v0, 0x7f09089d

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/q0;->z:Landroid/widget/RelativeLayout;

    const v0, 0x7f09015d

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/fragment/q0;->B:Landroid/widget/TextView;

    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/q0;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 15
    new-instance v0, Lcom/join/mgps/fragment/r0$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r0$v;-><init>(Lcom/join/mgps/fragment/r0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/q0;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 17
    new-instance v0, Lcom/join/mgps/fragment/r0$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r0$w;-><init>(Lcom/join/mgps/fragment/r0;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q0;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/r0;->y0:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/r0;->A0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroupClassify;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$a0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/r0$a0;-><init>(Lcom/join/mgps/fragment/r0;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method r0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r0$e;-><init>(Lcom/join/mgps/fragment/r0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method u0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/r0$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/r0$p;-><init>(Lcom/join/mgps/fragment/r0;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method w0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/r0$c;-><init>(Lcom/join/mgps/fragment/r0;Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method x0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r0$h;-><init>(Lcom/join/mgps/fragment/r0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y0(Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/r0$a;-><init>(Lcom/join/mgps/fragment/r0;Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method z0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r0$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r0$y;-><init>(Lcom/join/mgps/fragment/r0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
