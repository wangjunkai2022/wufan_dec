.class public final Lcom/join/mgps/activity/MYAccountReginFinishActivity_;
.super Lcom/join/mgps/activity/MYAccountReginFinishActivity;
.source "MYAccountReginFinishActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MYAccountReginFinishActivity_$l;
    }
.end annotation


# static fields
.field public static final x:Ljava/lang/String; = "accountBean"

.field public static final y:Ljava/lang/String; = "fromWhere"


# instance fields
.field private final v:Li3/c;

.field private final w:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_;->v:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_;->w:Ljava/util/Map;

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->N0()V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->J0()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->M0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showLoding()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showLodingDismis()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->O0()V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->I0()V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->P0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->L0(Ljava/lang/String;)V

    return-void
.end method

.method public static a1(Landroid/content/Context;)Lcom/join/mgps/activity/MYAccountReginFinishActivity_$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$l;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MYAccountReginFinishActivity_$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$l;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_;->injectExtras_()V

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

    const-string v1, "accountBean"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountBean;

    iput-object v1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->l:Lcom/join/mgps/dto/AccountBean;

    :cond_0
    const-string v1, "fromWhere"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->m:I

    :cond_1
    return-void
.end method


# virtual methods
.method I0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$k;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$k;-><init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method J0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$e;-><init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$b;-><init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method M0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$f;-><init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$d;-><init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$i;-><init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$a;-><init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$j;-><init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_;->w:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_;->v:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c04c3

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090265

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MyGridView;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->b:Lcom/join/mgps/customview/MyGridView;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f091033

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f090dc6

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->f:Landroid/widget/ScrollView;

    const v0, 0x7f090d02

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->g:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$c;-><init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->afterview()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_;->w:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$g;-><init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingDismis()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity_$h;-><init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
