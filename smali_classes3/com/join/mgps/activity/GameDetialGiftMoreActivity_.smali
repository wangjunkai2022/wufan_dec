.class public final Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;
.super Lcom/join/mgps/activity/GameDetialGiftMoreActivity;
.source "GameDetialGiftMoreActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$u;
    }
.end annotation


# static fields
.field public static final p0:Ljava/lang/String; = "gameId"


# instance fields
.field private final n0:Li3/c;

.field private final o0:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->n0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->o0:Ljava/util/Map;

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showLoding()V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->W0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->R0()V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->getDownloadTaskInfo()V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->Q0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    return-void
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

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->n:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->o:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->q:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Lcom/join/mgps/dto/GamedetialMoreGiftData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->X0(Lcom/join/mgps/dto/GamedetialMoreGiftData;)V

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->c1()V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->U0()V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->updateDownloadView()V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->V0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->Y0()V

    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->Z0()V

    return-void
.end method

.method static synthetic q1(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public static r1(Landroid/content/Context;)Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$u;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$u;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static s1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$u;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$u;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method Q0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$l;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$l;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method R0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$i;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method U0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$b;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$d;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$h;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X0(Lcom/join/mgps/dto/GamedetialMoreGiftData;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$t;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$t;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Lcom/join/mgps/dto/GamedetialMoreGiftData;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Y0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$e;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$f;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$a;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->o0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$j;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->n0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c00ab

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f0909e2

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f091033

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f090cb6

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909b5

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f090d11

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f09013e

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f091030

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->k:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f090a4d

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 11
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 13
    new-instance v2, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$k;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$k;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->j:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 15
    new-instance v2, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$m;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$m;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 16
    new-instance v1, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$n;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$n;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 17
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$o;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 19
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$p;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz p1, :cond_5

    .line 21
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$q;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->o0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->n0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->n0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->n0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$r;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$s;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$g;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity_$c;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
