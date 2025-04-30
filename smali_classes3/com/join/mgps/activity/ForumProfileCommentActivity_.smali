.class public final Lcom/join/mgps/activity/ForumProfileCommentActivity_;
.super Lcom/join/mgps/activity/ForumProfileCommentActivity;
.source "ForumProfileCommentActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumProfileCommentActivity_$j;
    }
.end annotation


# instance fields
.field private final x:Li3/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity_;->x:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity_;->y:Ljava/util/Map;

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/ForumProfileCommentActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->U0(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/ForumProfileCommentActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->I0(I)V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/ForumProfileCommentActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->T0()V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/ForumProfileCommentActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/ForumProfileCommentActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->P0()V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/ForumProfileCommentActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->S0()V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/ForumProfileCommentActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->N0()V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/ForumProfileCommentActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->K0(I)V

    return-void
.end method

.method public static d1(Landroid/content/Context;)Lcom/join/mgps/activity/ForumProfileCommentActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity_$j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static e1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumProfileCommentActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity_$j;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const v0, 0x7f110207

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->i:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method I0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity_$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity_$c;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumProfileCommentActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumProfileCommentActivity_$i;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method N0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumProfileCommentActivity_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumProfileCommentActivity_$h;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method P0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity_$f;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity_$g;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity_$d;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U0(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumProfileCommentData;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity_$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileCommentActivity_$b;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity_;Ljava/util/List;I)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity_;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity_;->x:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c042c

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09013e

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f0908a2

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f090986

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f0909e2

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f090a48

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/XListView2;

    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->e:Lcom/join/mgps/customview/XListView2;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity_$a;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileCommentActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity_;->y:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity_;->x:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity_;->x:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity_;->x:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileCommentActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileCommentActivity_$e;-><init>(Lcom/join/mgps/activity/ForumProfileCommentActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
