.class public final Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;
.super Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;
.source "IntroductionProgressFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_$FragmentBuilder_;
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
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;->onViewChangedNotifier_:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;->beans_:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$001(Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_$FragmentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_$FragmentBuilder_;

    invoke-direct {v0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_$FragmentBuilder_;-><init>()V

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;->beans_:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;->contentView_:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;->onViewChangedNotifier_:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;->init_(Landroid/os/Bundle;)V

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

    iput-object p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;->contentView_:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c02e7

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;->contentView_:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;->contentView_:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;->contentView_:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->ll_empty:Landroid/widget/LinearLayout;

    .line 4
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->tv_title:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090925

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->ll_empty:Landroid/widget/LinearLayout;

    const v0, 0x7f091192

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->tv_title:Landroid/widget/TextView;

    const v0, 0x7f090da9

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0907ee

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_$1;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_$1;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->afterView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;->onViewChangedNotifier_:Li3/c;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_$2;

    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_$2;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
