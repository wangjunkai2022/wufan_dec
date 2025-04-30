.class public final Lcom/join/mgps/fragment/b0;
.super Lcom/join/mgps/fragment/a0;
.source "DIscoveryTabFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/b0$m;
    }
.end annotation


# instance fields
.field private final p:Li3/c;

.field private q:Landroid/view/View;

.field private final r:Ljava/util/Map;
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

.field private final s:Landroid/content/IntentFilter;

.field private final t:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/a0;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/b0;->p:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/b0;->r:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/b0;->s:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/fragment/b0$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b0$d;-><init>(Lcom/join/mgps/fragment/b0;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/b0;->t:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic V(Lcom/join/mgps/fragment/b0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/a0;->showLoding()V

    return-void
.end method

.method static synthetic W(Lcom/join/mgps/fragment/b0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/a0;->P()V

    return-void
.end method

.method static synthetic X(Lcom/join/mgps/fragment/b0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/a0;->Q()V

    return-void
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/b0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/a0;->S()V

    return-void
.end method

.method static synthetic a0(Lcom/join/mgps/fragment/b0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/a0;->R()V

    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/fragment/b0;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/a0;->T(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/fragment/b0;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/a0;->U(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/fragment/b0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/a0;->loadData(I)V

    return-void
.end method

.method static synthetic e0(Lcom/join/mgps/fragment/b0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/a0;->O(I)V

    return-void
.end method

.method public static f0()Lcom/join/mgps/fragment/b0$m;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b0$m;

    invoke-direct {v0}, Lcom/join/mgps/fragment/b0$m;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/b0;->s:Landroid/content/IntentFilter;

    const-string v0, "com.join.update.position2"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method O(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/b0$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/b0$c;-><init>(Lcom/join/mgps/fragment/b0;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method P()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b0$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b0$h;-><init>(Lcom/join/mgps/fragment/b0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Q()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b0$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b0$i;-><init>(Lcom/join/mgps/fragment/b0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b0$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b0$k;-><init>(Lcom/join/mgps/fragment/b0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b0$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b0$j;-><init>(Lcom/join/mgps/fragment/b0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoverListItemBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b0$l;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/b0$l;-><init>(Lcom/join/mgps/fragment/b0;Ljava/util/List;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoverListWeiboItemBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b0$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/b0$a;-><init>(Lcom/join/mgps/fragment/b0;Ljava/util/List;I)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/b0;->r:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/b0;->q:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method loadData(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/b0$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/b0$b;-><init>(Lcom/join/mgps/fragment/b0;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/b0;->p:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/b0;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/b0;->t:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/fragment/b0;->s:Landroid/content/IntentFilter;

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

    iput-object p3, p0, Lcom/join/mgps/fragment/b0;->q:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c01ba

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/b0;->q:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/b0;->q:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/b0;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/b0;->q:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->c:Landroid/widget/LinearLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->d:Landroid/widget/LinearLayout;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->e:Landroid/widget/LinearLayout;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->f:Landroid/widget/ImageView;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->g:Landroid/widget/TextView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090cf3

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const v0, 0x7f090d00

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    const v0, 0x7f0909b5

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f090989

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f090d11

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->f:Landroid/widget/ImageView;

    const v0, 0x7f090b22

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/a0;->g:Landroid/widget/TextView;

    const v0, 0x7f090e21

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Lcom/join/mgps/fragment/b0$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b0$e;-><init>(Lcom/join/mgps/fragment/b0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/a0;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 11
    new-instance v0, Lcom/join/mgps/fragment/b0$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b0$f;-><init>(Lcom/join/mgps/fragment/b0;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a0;->M()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/b0;->p:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/b0;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b0$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b0$g;-><init>(Lcom/join/mgps/fragment/b0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
