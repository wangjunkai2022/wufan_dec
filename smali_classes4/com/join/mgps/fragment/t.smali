.class public final Lcom/join/mgps/fragment/t;
.super Lcom/join/mgps/fragment/s;
.source "CollectionModuleTwoFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/t$m;
    }
.end annotation


# instance fields
.field private final D:Li3/c;

.field private E:Landroid/view/View;

.field private final F:Ljava/util/Map;
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

.field private final G:Landroid/content/IntentFilter;

.field private final H:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/s;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/t;->D:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/t;->F:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/t;->G:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/fragment/t$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t$d;-><init>(Lcom/join/mgps/fragment/t;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/t;->H:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic i0(Lcom/join/mgps/fragment/t;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/s;->showLoding()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const v0, 0x7f110207

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/s;->o:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/s;->p:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/t;->G:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/t;->G:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j0(Lcom/join/mgps/fragment/t;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/s;->showLodingFailed()V

    return-void
.end method

.method static synthetic k0(Lcom/join/mgps/fragment/t;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/s;->showMain(Ljava/util/List;)V

    return-void
.end method

.method static synthetic l0(Lcom/join/mgps/fragment/t;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/s;->f0()V

    return-void
.end method

.method static synthetic m0(Lcom/join/mgps/fragment/t;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/s;->U()V

    return-void
.end method

.method static synthetic n0(Lcom/join/mgps/fragment/t;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/s;->b0()V

    return-void
.end method

.method static synthetic o0(Lcom/join/mgps/fragment/t;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/s;->T()V

    return-void
.end method

.method static synthetic p0(Lcom/join/mgps/fragment/t;Lcom/join/mgps/dto/CollectionDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/s;->R(Lcom/join/mgps/dto/CollectionDataBean;)V

    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/fragment/t;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/s;->Q()V

    return-void
.end method

.method public static r0()Lcom/join/mgps/fragment/t$m;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t$m;

    invoke-direct {v0}, Lcom/join/mgps/fragment/t$m;-><init>()V

    return-object v0
.end method


# virtual methods
.method Q()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/t$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/t$c;-><init>(Lcom/join/mgps/fragment/t;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method R(Lcom/join/mgps/dto/CollectionDataBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/t$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/t$b;-><init>(Lcom/join/mgps/fragment/t;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CollectionDataBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method T()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t$a;-><init>(Lcom/join/mgps/fragment/t;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t$k;-><init>(Lcom/join/mgps/fragment/t;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t$l;-><init>(Lcom/join/mgps/fragment/t;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t$j;-><init>(Lcom/join/mgps/fragment/t;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/t;->F:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/t;->E:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/t;->D:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/t;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/t;->H:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/fragment/t;->G:Landroid/content/IntentFilter;

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

    iput-object p3, p0, Lcom/join/mgps/fragment/t;->E:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c00ef

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/t;->E:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/t;->E:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/t;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/fragment/s;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/t;->E:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/s;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/s;->d:Lcom/join/mgps/customview/XListView2;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/s;->e:Landroid/widget/LinearLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/s;->f:Landroid/widget/LinearLayout;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/ImageView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f0909e2

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/s;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f09018d

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/fragment/s;->d:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909b5

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/s;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/s;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f090d11

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/ImageView;

    const v0, 0x7f090e21

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/s;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 8
    new-instance v1, Lcom/join/mgps/fragment/t$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t$e;-><init>(Lcom/join/mgps/fragment/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    new-instance v0, Lcom/join/mgps/fragment/t$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t$f;-><init>(Lcom/join/mgps/fragment/t;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/t;->D:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/t;->F:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t$g;-><init>(Lcom/join/mgps/fragment/t;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t$h;-><init>(Lcom/join/mgps/fragment/t;)V

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
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/t$i;-><init>(Lcom/join/mgps/fragment/t;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
