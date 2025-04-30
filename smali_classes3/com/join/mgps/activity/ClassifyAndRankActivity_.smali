.class public final Lcom/join/mgps/activity/ClassifyAndRankActivity_;
.super Lcom/join/mgps/activity/ClassifyAndRankActivity;
.source "ClassifyAndRankActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String; = "intentFrom"

.field public static final m:Ljava/lang/String; = "currentIndex"

.field public static final n:Ljava/lang/String; = "isFormNewRank"


# instance fields
.field private final j:Li3/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->j:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->k:Ljava/util/Map;

    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/activity/ClassifyAndRankActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity;->updateDownloadView()V

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/activity/ClassifyAndRankActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity;->getDownloadTaskInfo()V

    return-void
.end method

.method public static H0(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static I0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity_$f;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "intentFrom"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->a:I

    :cond_0
    const-string v1, "currentIndex"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->b:I

    :cond_1
    const-string v1, "isFormNewRank"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->c:Z

    :cond_2
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
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ClassifyAndRankActivity_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ClassifyAndRankActivity_$e;-><init>(Lcom/join/mgps/activity/ClassifyAndRankActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->j:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c00d5

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f090535

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f091033

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f091030

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->f:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->g:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f09013e

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/ClassifyAndRankActivity_$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity_$a;-><init>(Lcom/join/mgps/activity/ClassifyAndRankActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity;->g:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz v0, :cond_1

    .line 9
    new-instance v1, Lcom/join/mgps/activity/ClassifyAndRankActivity_$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity_$b;-><init>(Lcom/join/mgps/activity/ClassifyAndRankActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 10
    new-instance v0, Lcom/join/mgps/activity/ClassifyAndRankActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity_$c;-><init>(Lcom/join/mgps/activity/ClassifyAndRankActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity;->afterviews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->j:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->j:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->j:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity_;->injectExtras_()V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyAndRankActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ClassifyAndRankActivity_$d;-><init>(Lcom/join/mgps/activity/ClassifyAndRankActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
