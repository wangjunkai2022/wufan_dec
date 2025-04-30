.class public final Lcom/join/mgps/activity/recomend/RecomendActivity_;
.super Lcom/join/mgps/activity/recomend/RecomendActivity;
.source "RecomendActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/recomend/RecomendActivity_$IntentBuilder_;
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

.field private final onViewChangedNotifier_:Li3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_;->onViewChangedNotifier_:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_;->beans_:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/recomend/RecomendActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/recomend/RecomendActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/recomend/RecomendActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->finishActivit()V

    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/recomend/RecomendActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->delayRequest()V

    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/recomend/RecomendActivity_;Ljava/util/List;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/recomend/RecomendActivity;->updateUI(Ljava/util/List;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V

    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/recomend/RecomendActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->getData()V

    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/recomend/RecomendActivity_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/recomend/RecomendActivity;->downv2(Z)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/recomend/RecomendActivity_$IntentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/recomend/RecomendActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/recomend/RecomendActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/recomend/RecomendActivity_$IntentBuilder_;
    .locals 1

    .line 2
    new-instance v0, Lcom/join/mgps/activity/recomend/RecomendActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/recomend/RecomendActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method delayRequest()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/recomend/RecomendActivity_$5;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/recomend/RecomendActivity_$5;-><init>(Lcom/join/mgps/activity/recomend/RecomendActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method downv2(Z)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/recomend/RecomendActivity_$8;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/recomend/RecomendActivity_$8;-><init>(Lcom/join/mgps/activity/recomend/RecomendActivity_;Ljava/lang/String;JLjava/lang/String;Z)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method finishActivit()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/recomend/RecomendActivity_$4;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/recomend/RecomendActivity_$4;-><init>(Lcom/join/mgps/activity/recomend/RecomendActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/recomend/RecomendActivity_$7;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/recomend/RecomendActivity_$7;-><init>(Lcom/join/mgps/activity/recomend/RecomendActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/RecomendActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0559

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/recomend/RecomendActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f090cf2

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090426

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->enterGame:Landroid/widget/TextView;

    const v0, 0x7f09100f

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->title:Landroid/widget/TextView;

    const v0, 0x7f090c71

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->protocol:Landroid/view/View;

    const v0, 0x7f090c72

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->protocolCheck:Landroid/view/View;

    const v0, 0x7f09123c

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->userProtocolTxt:Landroid/widget/TextView;

    const v0, 0x7f0909ad

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->lodingImg:Landroid/widget/ImageView;

    const v0, 0x7f090c73

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->enterGame:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lcom/join/mgps/activity/recomend/RecomendActivity_$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/RecomendActivity_$1;-><init>(Lcom/join/mgps/activity/recomend/RecomendActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    new-instance v0, Lcom/join/mgps/activity/recomend/RecomendActivity_$2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/recomend/RecomendActivity_$2;-><init>(Lcom/join/mgps/activity/recomend/RecomendActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->afterView()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/recomend/RecomendActivity_$3;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/recomend/RecomendActivity_$3;-><init>(Lcom/join/mgps/activity/recomend/RecomendActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateUI(Ljava/util/List;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/RecomentBean;",
            ">;",
            "Lcom/join/mgps/activity/recomend/UserProtocolBean;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/recomend/RecomendActivity_$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/recomend/RecomendActivity_$6;-><init>(Lcom/join/mgps/activity/recomend/RecomendActivity_;Ljava/util/List;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
