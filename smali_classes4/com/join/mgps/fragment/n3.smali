.class public final Lcom/join/mgps/fragment/n3;
.super Lcom/join/mgps/fragment/m3;
.source "MyVoucherGameFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/n3$i;
    }
.end annotation


# instance fields
.field private final i:Li3/c;

.field private j:Landroid/view/View;

.field private final k:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/m3;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/n3;->i:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/n3;->k:Ljava/util/Map;

    return-void
.end method

.method static synthetic P(Lcom/join/mgps/fragment/n3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m3;->O()V

    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/n3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m3;->showLoding()V

    return-void
.end method

.method static synthetic R(Lcom/join/mgps/fragment/n3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m3;->N()V

    return-void
.end method

.method static synthetic S(Lcom/join/mgps/fragment/n3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m3;->showLodingFailed()V

    return-void
.end method

.method static synthetic U(Lcom/join/mgps/fragment/n3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m3;->M()V

    return-void
.end method

.method static synthetic V(Lcom/join/mgps/fragment/n3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/m3;->loadData()V

    return-void
.end method

.method public static W()Lcom/join/mgps/fragment/n3$i;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n3$i;

    invoke-direct {v0}, Lcom/join/mgps/fragment/n3$i;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method M()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n3$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n3$g;-><init>(Lcom/join/mgps/fragment/n3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n3$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n3$e;-><init>(Lcom/join/mgps/fragment/n3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n3$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n3$c;-><init>(Lcom/join/mgps/fragment/n3;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/n3;->k:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/n3;->j:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method loadData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/n3$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/n3$h;-><init>(Lcom/join/mgps/fragment/n3;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/n3;->i:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/n3;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/n3;->j:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c037b

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/n3;->j:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/n3;->j:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/n3;->j:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/m3;->b:Lcom/join/mgps/customview/XListView;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/m3;->c:Landroid/widget/LinearLayout;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/m3;->d:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f0908e7

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView;

    iput-object v0, p0, Lcom/join/mgps/fragment/m3;->b:Lcom/join/mgps/customview/XListView;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/m3;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/m3;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f090d11

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 5
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcom/join/mgps/fragment/n3$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/n3$a;-><init>(Lcom/join/mgps/fragment/n3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Lcom/join/mgps/fragment/n3$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n3$b;-><init>(Lcom/join/mgps/fragment/n3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m3;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/n3;->i:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/n3;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n3$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n3$d;-><init>(Lcom/join/mgps/fragment/n3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/n3$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/n3$f;-><init>(Lcom/join/mgps/fragment/n3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
