.class public final Lcom/join/mgps/fragment/f3;
.super Lcom/join/mgps/fragment/e3;
.source "MGManageFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/f3$f;
    }
.end annotation


# instance fields
.field private final f:Li3/c;

.field private g:Landroid/view/View;

.field private final h:Ljava/util/Map;
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

.field private final i:Landroid/content/IntentFilter;

.field private final j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e3;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/f3;->f:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/f3;->h:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/f3;->i:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/fragment/f3$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/f3$a;-><init>(Lcom/join/mgps/fragment/f3;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/f3;->j:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic R(Lcom/join/mgps/fragment/f3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e3;->Q()V

    return-void
.end method

.method static synthetic S(Lcom/join/mgps/fragment/f3;Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/e3;->P(Lcom/join/mgps/dto/AccountBean;)V

    return-void
.end method

.method static synthetic T(Lcom/join/mgps/fragment/f3;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/e3;->O(I)V

    return-void
.end method

.method static synthetic U(Lcom/join/mgps/fragment/f3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e3;->N()V

    return-void
.end method

.method public static V()Lcom/join/mgps/fragment/f3$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/f3$f;

    invoke-direct {v0}, Lcom/join/mgps/fragment/f3$f;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/f3;->i:Landroid/content/IntentFilter;

    const-string v0, "com.join.apkinstal.action.broadcast"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method N()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/f3$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/f3$e;-><init>(Lcom/join/mgps/fragment/f3;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method O(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/f3$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/f3$d;-><init>(Lcom/join/mgps/fragment/f3;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P(Lcom/join/mgps/dto/AccountBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/f3$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/f3$c;-><init>(Lcom/join/mgps/fragment/f3;Lcom/join/mgps/dto/AccountBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Q()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/f3$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/f3$b;-><init>(Lcom/join/mgps/fragment/f3;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/f3;->h:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/f3;->g:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/f3;->f:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f3;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/f3;->j:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/fragment/f3;->i:Landroid/content/IntentFilter;

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

    iput-object p3, p0, Lcom/join/mgps/fragment/f3;->g:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0470

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/f3;->g:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/f3;->g:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/f3;->j:Landroid/content/BroadcastReceiver;

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
    iput-object v0, p0, Lcom/join/mgps/fragment/f3;->g:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/e3;->d:Lcom/join/mgps/customview/XListView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f0909fd

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/XListView;

    iput-object p1, p0, Lcom/join/mgps/fragment/e3;->d:Lcom/join/mgps/customview/XListView;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e3;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/f3;->f:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/f3;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
