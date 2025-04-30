.class public final Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;
.super Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;
.source "ModIntroductionListFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$FragmentBuilder_;
    }
.end annotation


# instance fields
.field private final beans_:Ljava/util/Map;
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

.field private contentView_:Landroid/view/View;

.field private final onViewChangedNotifier_:Li3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->onViewChangedNotifier_:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->beans_:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$001(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showMain(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$101(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$201(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->hideLoading()V

    return-void
.end method

.method static synthetic access$301(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadingView()V

    return-void
.end method

.method static synthetic access$401(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loadData(I)V

    return-void
.end method

.method public static builder()Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$FragmentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$FragmentBuilder_;

    invoke-direct {v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$FragmentBuilder_;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method hideLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$5;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$5;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;)V

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->contentView_:Landroid/view/View;

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
    new-instance v7, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$7;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$7;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->onViewChangedNotifier_:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->init_(Landroid/os/Bundle;)V

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

    iput-object p3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->contentView_:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0215

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->contentView_:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->contentView_:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->contentView_:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_layout:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_faile:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->setNetwork:Landroid/view/View;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f090da9

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_layout:Landroid/view/View;

    const v0, 0x7f0909b0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_faile:Landroid/view/View;

    const v0, 0x7f090e21

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->setNetwork:Landroid/view/View;

    const v0, 0x7f090d11

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->setNetwork:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$1;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$1;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    new-instance v0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$2;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->aftervidew()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->onViewChangedNotifier_:Li3/c;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLoadFailed(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$4;

    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$4;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoadingView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$6;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$6;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMain(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsListBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_$3;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;Ljava/util/List;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
