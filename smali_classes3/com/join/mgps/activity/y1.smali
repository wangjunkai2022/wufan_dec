.class public final Lcom/join/mgps/activity/y1;
.super Lcom/join/mgps/activity/w1;
.source "MyGamePapaFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/y1$a0;
    }
.end annotation


# instance fields
.field private A0:Landroid/view/View;

.field private final B0:Ljava/util/Map;
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

.field private final C0:Landroid/content/IntentFilter;

.field private final D0:Landroid/content/BroadcastReceiver;

.field private final E0:Landroid/content/IntentFilter;

.field private final F0:Landroid/content/BroadcastReceiver;

.field private final z0:Li3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/w1;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/y1;->z0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/y1;->B0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/y1;->C0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/y1$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/y1$k;-><init>(Lcom/join/mgps/activity/y1;)V

    iput-object v0, p0, Lcom/join/mgps/activity/y1;->D0:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/y1;->E0:Landroid/content/IntentFilter;

    .line 7
    new-instance v0, Lcom/join/mgps/activity/y1$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/y1$s;-><init>(Lcom/join/mgps/activity/y1;)V

    iput-object v0, p0, Lcom/join/mgps/activity/y1;->F0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/y1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/w1;->W0()V

    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/activity/y1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/w1;->l1()V

    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/y1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/w1;->n1()V

    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/y1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/w1;->J0()V

    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/activity/y1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/w1;->N0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/y1;Lcom/join/mgps/dto/SNKGameInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/w1;->g1(Lcom/join/mgps/dto/SNKGameInfoBean;)V

    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/activity/y1;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/w1;->s1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/activity/y1;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/w1;->k1(Ljava/util/List;)V

    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/activity/y1;Lcom/join/mgps/dto/OnlineCouponConfigBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/w1;->f1(Lcom/join/mgps/dto/OnlineCouponConfigBean;)V

    return-void
.end method

.method public static J1()Lcom/join/mgps/activity/y1$a0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/y1$a0;

    invoke-direct {v0}, Lcom/join/mgps/activity/y1$a0;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/w1;->I:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/y1;->C0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_unread_notify"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/y1;->E0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/activity/y1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/w1;->j1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/activity/y1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/w1;->Y0()V

    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/activity/y1;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/w1;->L0(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/activity/y1;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/w1;->Z0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/activity/y1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/w1;->t0()V

    return-void
.end method

.method static synthetic z1(Lcom/join/mgps/activity/y1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/w1;->x0()V

    return-void
.end method


# virtual methods
.method J0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/y1$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/y1$g;-><init>(Lcom/join/mgps/activity/y1;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/y1$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/y1$d;-><init>(Lcom/join/mgps/activity/y1;Ljava/util/HashMap;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/y1$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/y1$h;-><init>(Lcom/join/mgps/activity/y1;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x64

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/y1$r;

    const-string v2, ""

    const-wide/16 v3, 0x3e8

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/y1$r;-><init>(Lcom/join/mgps/activity/y1;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Y0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/y1$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/y1$n;-><init>(Lcom/join/mgps/activity/y1;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Z0(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/y1$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/y1$o;-><init>(Lcom/join/mgps/activity/y1;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public f1(Lcom/join/mgps/dto/OnlineCouponConfigBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/y1$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/y1$m;-><init>(Lcom/join/mgps/activity/y1;Lcom/join/mgps/dto/OnlineCouponConfigBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g1(Lcom/join/mgps/dto/SNKGameInfoBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/y1$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/y1$i;-><init>(Lcom/join/mgps/activity/y1;Lcom/join/mgps/dto/SNKGameInfoBean;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/y1;->B0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
    iget-object v0, p0, Lcom/join/mgps/activity/y1;->A0:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method j1(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/y1$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/y1$c;-><init>(Lcom/join/mgps/activity/y1;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x1f4

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method k1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/y1$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/y1$l;-><init>(Lcom/join/mgps/activity/y1;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method l1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/y1$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/y1$e;-><init>(Lcom/join/mgps/activity/y1;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method n1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/y1$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/y1$f;-><init>(Lcom/join/mgps/activity/y1;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/y1;->z0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/y1;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/y1;->D0:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/y1;->C0:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/y1;->F0:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/activity/y1;->E0:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/basefragment/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/activity/y1;->A0:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0217

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/y1;->A0:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/y1;->A0:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/y1;->D0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/y1;->F0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-super {p0}, Lcom/join/mgps/activity/w1;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/y1;->A0:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->c:Landroid/view/View;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->d:Lcom/join/mgps/customview/XListView2;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->e:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->f:Landroid/widget/TextView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->g:Landroid/widget/TextView;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->h:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->i:Landroid/view/View;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->j:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->k:Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->l:Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->m:Landroid/view/View;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->n:Landroid/view/View;

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->o:Landroid/view/View;

    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->p:Landroid/view/View;

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->q:Landroid/view/View;

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->r:Lcom/join/mgps/customview/WrapContentGridView;

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->s:Landroid/widget/LinearLayout;

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->t:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/w1;->u:Landroid/widget/ImageView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f0900f9

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->c:Landroid/view/View;

    const v0, 0x7f0908e1

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->d:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f090c29

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->e:Landroid/view/View;

    const v0, 0x7f090c26

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->f:Landroid/widget/TextView;

    const v0, 0x7f090c23

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->g:Landroid/widget/TextView;

    const v0, 0x7f0904b3

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->h:Landroid/view/View;

    const v0, 0x7f090b12

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->i:Landroid/view/View;

    const v0, 0x7f0904b7

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->j:Landroid/widget/TextView;

    const v0, 0x7f09100f

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->k:Landroid/widget/TextView;

    const v0, 0x7f090304

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->l:Landroid/widget/TextView;

    const v0, 0x7f090d90

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->m:Landroid/view/View;

    const v0, 0x7f090ae3

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->n:Landroid/view/View;

    const v0, 0x7f090dd4

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->o:Landroid/view/View;

    const v0, 0x7f09012c

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->p:Landroid/view/View;

    const v0, 0x7f090ee4

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->q:Landroid/view/View;

    const v0, 0x7f090b13

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/WrapContentGridView;

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->r:Lcom/join/mgps/customview/WrapContentGridView;

    const v0, 0x7f090902

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f0910af

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->t:Landroid/widget/TextView;

    const v0, 0x7f0907d1

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/w1;->u:Landroid/widget/ImageView;

    const v0, 0x7f090e21

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090c28

    .line 21
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090e2c

    .line 22
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 23
    new-instance v2, Lcom/join/mgps/activity/y1$t;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/y1$t;-><init>(Lcom/join/mgps/activity/y1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/w1;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 25
    new-instance v2, Lcom/join/mgps/activity/y1$u;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/y1$u;-><init>(Lcom/join/mgps/activity/y1;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/w1;->s:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 27
    new-instance v2, Lcom/join/mgps/activity/y1$v;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/y1$v;-><init>(Lcom/join/mgps/activity/y1;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/w1;->p:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 29
    new-instance v2, Lcom/join/mgps/activity/y1$w;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/y1$w;-><init>(Lcom/join/mgps/activity/y1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/w1;->o:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 31
    new-instance v2, Lcom/join/mgps/activity/y1$x;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/y1$x;-><init>(Lcom/join/mgps/activity/y1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 32
    new-instance v0, Lcom/join/mgps/activity/y1$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/y1$y;-><init>(Lcom/join/mgps/activity/y1;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/w1;->n:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 34
    new-instance v1, Lcom/join/mgps/activity/y1$z;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/y1$z;-><init>(Lcom/join/mgps/activity/y1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/w1;->h:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 36
    new-instance v1, Lcom/join/mgps/activity/y1$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/y1$a;-><init>(Lcom/join/mgps/activity/y1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 37
    new-instance v0, Lcom/join/mgps/activity/y1$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/y1$b;-><init>(Lcom/join/mgps/activity/y1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/w1;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/y1;->z0:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/activity/y1;->B0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method s1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/y1$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/y1$j;-><init>(Lcom/join/mgps/activity/y1;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method t0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/y1$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/y1$p;-><init>(Lcom/join/mgps/activity/y1;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method x0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/y1$q;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/y1$q;-><init>(Lcom/join/mgps/activity/y1;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
