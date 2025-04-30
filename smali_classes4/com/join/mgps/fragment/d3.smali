.class public final Lcom/join/mgps/fragment/d3;
.super Lcom/join/mgps/fragment/c3;
.source "LabelFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/d3$t;
    }
.end annotation


# instance fields
.field private final E:Li3/c;

.field private F:Landroid/view/View;

.field private final G:Ljava/util/Map;
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

.field private final H:Landroid/content/IntentFilter;

.field private final I:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/c3;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/d3;->E:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/d3;->G:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/d3;->H:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/fragment/d3$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d3$k;-><init>(Lcom/join/mgps/fragment/d3;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/d3;->I:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic B0(Lcom/join/mgps/fragment/d3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c3;->w0()V

    return-void
.end method

.method static synthetic C0(Lcom/join/mgps/fragment/d3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c3;->W()V

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/fragment/d3;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c3;->y0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/fragment/d3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c3;->p0()V

    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/fragment/d3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c3;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/fragment/d3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c3;->S()V

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/fragment/d3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c3;->Q(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/fragment/d3;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c3;->b0(I)V

    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/fragment/d3;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/c3;->z0(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/fragment/d3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c3;->u0()V

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/fragment/d3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c3;->r0()V

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/fragment/d3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c3;->q0()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/fragment/d3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c3;->hideLoading()V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/fragment/d3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c3;->t0()V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/fragment/d3;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c3;->v0(Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/fragment/d3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c3;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public static R0()Lcom/join/mgps/fragment/d3$t;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$t;

    invoke-direct {v0}, Lcom/join/mgps/fragment/d3$t;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/d3;->H:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/d3;->H:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method Q(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/d3$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/d3$i;-><init>(Lcom/join/mgps/fragment/d3;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method S()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/d3$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/d3$h;-><init>(Lcom/join/mgps/fragment/d3;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method W()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d3$e;-><init>(Lcom/join/mgps/fragment/d3;)V

    const-string v1, ""

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/d3$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/d3$j;-><init>(Lcom/join/mgps/fragment/d3;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method hideLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d3$a;-><init>(Lcom/join/mgps/fragment/d3;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->F:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->E:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/d3;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c3;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/d3;->I:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/fragment/d3;->H:Landroid/content/IntentFilter;

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

    iput-object p3, p0, Lcom/join/mgps/fragment/d3;->F:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c020e

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/d3;->F:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/d3;->F:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/d3;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/fragment/c3;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/d3;->F:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->g:Landroid/widget/LinearLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->h:Landroid/widget/LinearLayout;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->i:Lcom/join/mgps/customview/XListView2;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->t:Landroid/widget/ImageView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f0909b0

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0909dc

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->i:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909e2

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f090816

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->t:Landroid/widget/ImageView;

    const v0, 0x7f090d11

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 7
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 8
    new-instance v1, Lcom/join/mgps/fragment/d3$l;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/d3$l;-><init>(Lcom/join/mgps/fragment/d3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    new-instance v0, Lcom/join/mgps/fragment/d3$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d3$m;-><init>(Lcom/join/mgps/fragment/d3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/d3;->E:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method p0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d3$f;-><init>(Lcom/join/mgps/fragment/d3;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->G:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d3$s;-><init>(Lcom/join/mgps/fragment/d3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method r0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d3$r;-><init>(Lcom/join/mgps/fragment/d3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/d3$g;-><init>(Lcom/join/mgps/fragment/d3;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/d3$d;-><init>(Lcom/join/mgps/fragment/d3;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method t0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d3$b;-><init>(Lcom/join/mgps/fragment/d3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method u0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d3$q;-><init>(Lcom/join/mgps/fragment/d3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method v0(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/d3$c;-><init>(Lcom/join/mgps/fragment/d3;Lcom/join/mgps/dto/DetailResultBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method w0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/d3$n;-><init>(Lcom/join/mgps/fragment/d3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/d3$o;-><init>(Lcom/join/mgps/fragment/d3;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method z0(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/d3$p;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/d3$p;-><init>(Lcom/join/mgps/fragment/d3;Ljava/util/List;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
