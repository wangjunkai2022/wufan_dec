.class public final Lcom/join/mgps/fragment/n;
.super Lcom/join/mgps/fragment/m;
.source "CloudListFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/n$z;
    }
.end annotation


# instance fields
.field private final H:Li3/c;

.field private I:Landroid/view/View;

.field private final J:Ljava/util/Map;
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

.field private final K:Landroid/content/IntentFilter;

.field private final n0:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/m;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/n;->H:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/n;->J:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/n;->K:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/fragment/n$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$k;-><init>(Lcom/join/mgps/fragment/n;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/n;->n0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->w0()V

    return-void
.end method

.method static synthetic B0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->f0()V

    return-void
.end method

.method static synthetic C0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->y0()V

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->p0()V

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->q0()V

    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->o0()V

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/fragment/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/m;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/fragment/n;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/m;->v0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->x0()V

    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/fragment/n;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/m;->u0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/fragment/n;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/m;->d0(I)V

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/fragment/n;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/m;->b0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->showLoding()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/fragment/n;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/m;->S(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/fragment/n;Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/m;->O(Lcom/join/mgps/dto/CloudListDataBean;I)V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/fragment/n;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/m;->t0(I)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->showLodingFailed()V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->N()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->i0()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->h0()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->g0()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->r0()V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/fragment/n;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/m;->U(Ljava/util/List;)V

    return-void
.end method

.method public static X0()Lcom/join/mgps/fragment/n$z;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$z;

    invoke-direct {v0}, Lcom/join/mgps/fragment/n$z;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/fragment/m;->l:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/n;->K:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.com.cloud.delete"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic z0(Lcom/join/mgps/fragment/n;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->P()V

    return-void
.end method


# virtual methods
.method N()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$v;-><init>(Lcom/join/mgps/fragment/n;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/fragment/n$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/fragment/n$p;-><init>(Lcom/join/mgps/fragment/n;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method P()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$r;-><init>(Lcom/join/mgps/fragment/n;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/n$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/n$o;-><init>(Lcom/join/mgps/fragment/n;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method U(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/n$b;-><init>(Lcom/join/mgps/fragment/n;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/n$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/n$n;-><init>(Lcom/join/mgps/fragment/n;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method d0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/n$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/n$m;-><init>(Lcom/join/mgps/fragment/n;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method f0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$s;-><init>(Lcom/join/mgps/fragment/n;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$y;-><init>(Lcom/join/mgps/fragment/n;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/n;->J:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$x;-><init>(Lcom/join/mgps/fragment/n;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method i0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$w;-><init>(Lcom/join/mgps/fragment/n;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/n;->I:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method o0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$g;-><init>(Lcom/join/mgps/fragment/n;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/n;->H:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/n;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/n;->n0:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/fragment/n;->K:Landroid/content/IntentFilter;

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

    iput-object p3, p0, Lcom/join/mgps/fragment/n;->I:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c01fb

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/n;->I:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/n;->I:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/n;->n0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/fragment/m;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/n;->I:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->b:Landroid/widget/LinearLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->c:Lcom/join/mgps/customview/XListView2;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->e:Landroid/widget/TextView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->f:Landroid/widget/LinearLayout;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->g:Landroid/widget/LinearLayout;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->h:Landroid/widget/RelativeLayout;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->i:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->j:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090948

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/m;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f090cd0

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/fragment/m;->c:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f090acb

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/m;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f091178

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/m;->e:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/m;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/m;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090d7a

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/m;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f09117c

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/m;->i:Landroid/widget/TextView;

    const v0, 0x7f090939

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/fragment/m;->j:Landroid/widget/LinearLayout;

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->afterView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/n;->H:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method p0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$e;-><init>(Lcom/join/mgps/fragment/n;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/n;->J:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$f;-><init>(Lcom/join/mgps/fragment/n;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method r0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$a;-><init>(Lcom/join/mgps/fragment/n;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$t;-><init>(Lcom/join/mgps/fragment/n;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$u;-><init>(Lcom/join/mgps/fragment/n;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/n$h;-><init>(Lcom/join/mgps/fragment/n;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method t0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/n$q;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/n$q;-><init>(Lcom/join/mgps/fragment/n;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method u0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/n$l;-><init>(Lcom/join/mgps/fragment/n;Lcom/join/mgps/dto/CloudListDataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method v0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/n$i;-><init>(Lcom/join/mgps/fragment/n;Lcom/join/mgps/dto/CloudListDataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method w0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$c;-><init>(Lcom/join/mgps/fragment/n;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method x0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$j;-><init>(Lcom/join/mgps/fragment/n;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n$d;-><init>(Lcom/join/mgps/fragment/n;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
