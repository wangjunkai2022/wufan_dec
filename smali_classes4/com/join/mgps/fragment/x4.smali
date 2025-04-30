.class public final Lcom/join/mgps/fragment/x4;
.super Lcom/join/mgps/fragment/w4;
.source "VoucherFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/x4$j;
    }
.end annotation


# instance fields
.field private final q:Li3/c;

.field private r:Landroid/view/View;

.field private final s:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/w4;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/x4;->q:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/x4;->s:Ljava/util/Map;

    return-void
.end method

.method static synthetic h0(Lcom/join/mgps/fragment/x4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/w4;->d0()V

    return-void
.end method

.method static synthetic i0(Lcom/join/mgps/fragment/x4;Lcom/join/mgps/dto/PapayVoucherResultMain;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/w4;->c0(Lcom/join/mgps/dto/PapayVoucherResultMain;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method static synthetic j0(Lcom/join/mgps/fragment/x4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/w4;->g0()V

    return-void
.end method

.method static synthetic k0(Lcom/join/mgps/fragment/x4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/w4;->f0()V

    return-void
.end method

.method static synthetic l0(Lcom/join/mgps/fragment/x4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/w4;->e0()V

    return-void
.end method

.method static synthetic m0(Lcom/join/mgps/fragment/x4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/w4;->showLodingFailed()V

    return-void
.end method

.method static synthetic n0(Lcom/join/mgps/fragment/x4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/w4;->b0()V

    return-void
.end method

.method static synthetic o0(Lcom/join/mgps/fragment/x4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/w4;->loadData()V

    return-void
.end method

.method public static p0()Lcom/join/mgps/fragment/x4$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x4$j;

    invoke-direct {v0}, Lcom/join/mgps/fragment/x4$j;-><init>()V

    return-object v0
.end method


# virtual methods
.method b0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x4$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/x4$h;-><init>(Lcom/join/mgps/fragment/x4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c0(Lcom/join/mgps/dto/PapayVoucherResultMain;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/ResultMyVoucherBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x4$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/x4$c;-><init>(Lcom/join/mgps/fragment/x4;Lcom/join/mgps/dto/PapayVoucherResultMain;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method d0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x4$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/x4$b;-><init>(Lcom/join/mgps/fragment/x4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method e0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x4$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/x4$f;-><init>(Lcom/join/mgps/fragment/x4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x4$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/x4$e;-><init>(Lcom/join/mgps/fragment/x4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x4$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/x4$d;-><init>(Lcom/join/mgps/fragment/x4;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/x4;->s:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/x4;->r:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public loadData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/x4$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/x4$i;-><init>(Lcom/join/mgps/fragment/x4;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x4;->q:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/x4;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/basefragment/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/x4;->r:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c021f

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/x4;->r:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/x4;->r:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/x4;->r:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/w4;->b:Lcom/join/mgps/customview/XListView2;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/w4;->d:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f0908e7

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/fragment/w4;->b:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f090674

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/fragment/w4;->d:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/fragment/x4$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/x4$a;-><init>(Lcom/join/mgps/fragment/x4;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w4;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/x4;->q:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/x4;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x4$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/x4$g;-><init>(Lcom/join/mgps/fragment/x4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
