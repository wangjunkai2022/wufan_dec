.class public final Lcom/join/mgps/activity/GiftsDetailActivity_;
.super Lcom/join/mgps/activity/GiftsDetailActivity;
.source "GiftsDetailActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GiftsDetailActivity_$q;
    }
.end annotation


# static fields
.field public static final B:Ljava/lang/String; = "gameId"

.field public static final C:Ljava/lang/String; = "Uid"

.field public static final D:Ljava/lang/String; = "giftPackageDataInfoBean"


# instance fields
.field private final A:Ljava/util/Map;
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

.field private final z:Li3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity_;->z:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity_;->A:Ljava/util/Map;

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/GiftsDetailActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/GiftsDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->K0()V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/GiftsDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->U0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/GiftsDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->L0()V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/GiftsDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->M0()V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/GiftsDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->V0()V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/GiftsDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->O0()V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/GiftsDetailActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->R0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/GiftsDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->W0()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GiftsDetailActivity_;->injectExtras_()V

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

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->m:Ljava/lang/String;

    :cond_0
    const-string v1, "Uid"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->n:I

    :cond_1
    const-string v1, "giftPackageDataInfoBean"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    :cond_2
    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/activity/GiftsDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->X0()V

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/GiftsDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->P0()V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/GiftsDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->Y0()V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/GiftsDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->Z0()V

    return-void
.end method

.method public static n1(Landroid/content/Context;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GiftsDetailActivity_$q;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static o1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GiftsDetailActivity_$q;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GiftsDetailActivity_$q;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method K0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GiftsDetailActivity_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GiftsDetailActivity_$e;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method L0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GiftsDetailActivity_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GiftsDetailActivity_$f;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method M0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GiftsDetailActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GiftsDetailActivity_$g;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method O0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GiftsDetailActivity_$n;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GiftsDetailActivity_$b;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GiftsDetailActivity_$o;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GiftsDetailActivity_$l;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GiftsDetailActivity_$m;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GiftsDetailActivity_$p;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GiftsDetailActivity_$a;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Y0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GiftsDetailActivity_$c;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GiftsDetailActivity_$d;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity_;->A:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity_;->z:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GiftsDetailActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c02b6

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GiftsDetailActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f0909b5

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f090dc6

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->d:Landroid/widget/ScrollView;

    const v0, 0x7f091033

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0905e5

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0905ed

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f090db2

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f090db1

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0905e1

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0905f5

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f0905ea

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f090d11

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09013e

    .line 13
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 14
    new-instance v1, Lcom/join/mgps/activity/GiftsDetailActivity_$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GiftsDetailActivity_$h;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 15
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GiftsDetailActivity_$i;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 17
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GiftsDetailActivity_$j;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity_;->A:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity_;->z:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity_;->z:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity_;->z:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GiftsDetailActivity_;->injectExtras_()V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GiftsDetailActivity_$k;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GiftsDetailActivity_$k;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
