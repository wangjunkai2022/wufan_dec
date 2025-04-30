.class public final Lcom/join/mgps/fragment/p;
.super Lcom/join/mgps/fragment/o;
.source "CodesBoxFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/p$l;
    }
.end annotation


# instance fields
.field private final w:Li3/c;

.field private x:Landroid/view/View;

.field private final y:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/o;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/p;->w:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/p;->y:Ljava/util/Map;

    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/fragment/p;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o;->V(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/fragment/p;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/fragment/p;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o;->Z()V

    return-void
.end method

.method static synthetic e0(Lcom/join/mgps/fragment/p;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o;->showMain(Ljava/util/List;)V

    return-void
.end method

.method static synthetic f0(Lcom/join/mgps/fragment/p;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o;->X()V

    return-void
.end method

.method static synthetic g0(Lcom/join/mgps/fragment/p;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o;->a0()V

    return-void
.end method

.method static synthetic h0(Lcom/join/mgps/fragment/p;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o;->W()V

    return-void
.end method

.method static synthetic i0(Lcom/join/mgps/fragment/p;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o;->S()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method static synthetic j0(Lcom/join/mgps/fragment/p;Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/o;->T(Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    return-void
.end method

.method public static k0()Lcom/join/mgps/fragment/p$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p$l;

    invoke-direct {v0}, Lcom/join/mgps/fragment/p$l;-><init>()V

    return-object v0
.end method


# virtual methods
.method S()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/p$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/p$a;-><init>(Lcom/join/mgps/fragment/p;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method T(Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/fragment/p$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/fragment/p$b;-><init>(Lcom/join/mgps/fragment/p;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method V(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p$e;-><init>(Lcom/join/mgps/fragment/p;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p$k;-><init>(Lcom/join/mgps/fragment/p;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p$i;-><init>(Lcom/join/mgps/fragment/p;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p$g;-><init>(Lcom/join/mgps/fragment/p;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p$j;-><init>(Lcom/join/mgps/fragment/p;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/p;->y:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/p;->x:Landroid/view/View;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p;->w:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/p;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/p;->x:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c01fc

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/p;->x:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/p;->x:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/p;->x:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->b:Landroid/widget/LinearLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->c:Landroid/widget/LinearLayout;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->e:Lcom/join/mgps/customview/XListView2;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/o;->f:Landroid/widget/ListView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f0909b5

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0909e2

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f0908e2

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/fragment/o;->e:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f090cec

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/fragment/o;->f:Landroid/widget/ListView;

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
    new-instance v1, Lcom/join/mgps/fragment/p$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/p$c;-><init>(Lcom/join/mgps/fragment/p;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    new-instance v0, Lcom/join/mgps/fragment/p$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p$d;-><init>(Lcom/join/mgps/fragment/p;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/p;->w:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/p;->y:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p$h;-><init>(Lcom/join/mgps/fragment/p;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p$f;-><init>(Lcom/join/mgps/fragment/p;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
