.class public final Lcom/join/mgps/activity/CollectionModuleThreeActivity_;
.super Lcom/join/mgps/activity/CollectionModuleThreeActivity;
.source "CollectionModuleThreeActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;
    }
.end annotation


# static fields
.field public static final v:Ljava/lang/String; = "collection_id"

.field public static final w:Ljava/lang/String; = "extBean"


# instance fields
.field private final t:Li3/c;

.field private final u:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->t:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->u:Ljava/util/Map;

    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/activity/CollectionModuleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->showLoding()V

    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/activity/CollectionModuleThreeActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/activity/CollectionModuleThreeActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->I0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/CollectionModuleThreeActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->F0(Ljava/lang/String;)V

    return-void
.end method

.method public static N0(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static O0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$h;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "collection_id"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->q:Ljava/lang/String;

    :cond_0
    const-string v1, "extBean"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->r:Lcom/join/mgps/dto/ExtBean;

    :cond_1
    return-void
.end method


# virtual methods
.method F0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$g;-><init>(Lcom/join/mgps/activity/CollectionModuleThreeActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method I0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionDataBeanInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$f;-><init>(Lcom/join/mgps/activity/CollectionModuleThreeActivity_;Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->u:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->t:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c00f7

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f0909d3

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MViewpagerV4;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->e:Lcom/join/mgps/customview/MViewpagerV4;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090d08

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f090d11

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f09073f

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f090fcc

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f090fc9

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f090fcb

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f090e21

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 12
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$a;-><init>(Lcom/join/mgps/activity/CollectionModuleThreeActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 14
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$b;-><init>(Lcom/join/mgps/activity/CollectionModuleThreeActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 15
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$c;-><init>(Lcom/join/mgps/activity/CollectionModuleThreeActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->u:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->t:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->t:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->t:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$d;-><init>(Lcom/join/mgps/activity/CollectionModuleThreeActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity_$e;-><init>(Lcom/join/mgps/activity/CollectionModuleThreeActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
