.class public final Lcom/join/mgps/fragment/roomlist/d;
.super Lcom/join/mgps/fragment/roomlist/c;
.source "StandardEliteRoomFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/roomlist/d$j;
    }
.end annotation


# instance fields
.field private final v0:Li3/c;

.field private w0:Landroid/view/View;

.field private final x0:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/roomlist/c;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/d;->v0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/d;->x0:Ljava/util/Map;

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/fragment/roomlist/d;Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->I0(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/fragment/roomlist/d;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->C0(I)V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/fragment/roomlist/d;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->W0(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/fragment/roomlist/d;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->n0(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/fragment/roomlist/d;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->X0(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/fragment/roomlist/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/roomlist/c;->c0()V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/fragment/roomlist/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/roomlist/c;->d0()V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/fragment/roomlist/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->a:Lcom/join/mgps/Util/b;

    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/fragment/roomlist/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->y0(Ljava/lang/String;)V

    return-void
.end method

.method public static k1()Lcom/join/mgps/fragment/roomlist/d$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/roomlist/d$j;

    invoke-direct {v0}, Lcom/join/mgps/fragment/roomlist/d$j;-><init>()V

    return-object v0
.end method


# virtual methods
.method public C0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/roomlist/d$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/roomlist/d$b;-><init>(Lcom/join/mgps/fragment/roomlist/d;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I0(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/roomlist/d$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/roomlist/d$a;-><init>(Lcom/join/mgps/fragment/roomlist/d;Lcom/papa91/battle/protocol/SimpleRoom;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public W0(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/roomlist/d$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/roomlist/d$c;-><init>(Lcom/join/mgps/fragment/roomlist/d;Ljava/util/ArrayList;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public X0(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/roomlist/d$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/roomlist/d$e;-><init>(Lcom/join/mgps/fragment/roomlist/d;Ljava/util/ArrayList;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/roomlist/d$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/roomlist/d$f;-><init>(Lcom/join/mgps/fragment/roomlist/d;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method d0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/roomlist/d$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/roomlist/d$g;-><init>(Lcom/join/mgps/fragment/roomlist/d;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/d;->x0:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/d;->w0:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method n0(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/roomlist/d$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/roomlist/d$d;-><init>(Lcom/join/mgps/fragment/roomlist/d;Ljava/util/ArrayList;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/d;->v0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/roomlist/d;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/roomlist/d;->w0:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c022d

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/d;->w0:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/d;->w0:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/d;->w0:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Landroid/widget/TextView;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->h:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090b11

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Landroid/widget/TextView;

    const v0, 0x7f0909dc

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const v0, 0x7f0909e2

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->h:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/d;->v0:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/d;->x0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/roomlist/d$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/roomlist/d$h;-><init>(Lcom/join/mgps/fragment/roomlist/d;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/roomlist/d$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/roomlist/d$i;-><init>(Lcom/join/mgps/fragment/roomlist/d;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
