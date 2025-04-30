.class public final Lcom/join/mgps/activity/CollectionModuleSixActivity_;
.super Lcom/join/mgps/activity/CollectionModuleSixActivity;
.source "CollectionModuleSixActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CollectionModuleSixActivity_$x;
    }
.end annotation


# static fields
.field public static final D0:Ljava/lang/String; = "collection_id"

.field public static final E0:Ljava/lang/String; = "extBean"


# instance fields
.field private final A0:Ljava/util/Map;
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

.field private final B0:Landroid/content/IntentFilter;

.field private final C0:Landroid/content/BroadcastReceiver;

.field private final z0:Li3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->z0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->A0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->B0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$k;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->C0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->showLoding()V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->K0()V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->getDownloadTaskInfo()V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/CollectionModuleSixActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->Q0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->W0()V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->O0()V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->serverConnectionException()V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->N0()V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateDownloadView()V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/CollectionModuleSixActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateDownloadingPoint(I)V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/CollectionModuleSixActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->R0(II)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const v0, 0x7f110207

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->z:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->A:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->injectExtras_()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->B0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->B0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->C0:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->B0:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

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

    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->D:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->E:Lcom/join/mgps/dto/ExtBean;

    :cond_1
    return-void
.end method

.method public static j1(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleSixActivity_$x;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$x;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static k1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/CollectionModuleSixActivity_$x;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$x;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method K0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CollectionModuleSixActivity_$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$n;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method N0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$i;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$g;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Q0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$e;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R0(II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$m;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$m;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;II)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$f;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->A0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CollectionModuleSixActivity_$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$o;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->z0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0029

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->C0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f0909e2

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f09018d

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->c:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f091033

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f090d11

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->g:Landroid/widget/ImageView;

    const v0, 0x7f09013e

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->h:Landroid/widget/ImageView;

    const v0, 0x7f09013f

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f090a6a

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f090a69

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f09102d

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->l:Landroid/widget/RelativeLayout;

    const v0, 0x7f091030

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f091031

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->n:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->o:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f0903ac

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f09015e

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f0906a2

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->v0:Landroid/widget/ImageView;

    const v0, 0x7f0903c1

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->w0:Landroid/widget/ImageView;

    const v0, 0x7f090e21

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09029e

    .line 20
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->f:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 22
    new-instance v2, Lcom/join/mgps/activity/CollectionModuleSixActivity_$p;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$p;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 24
    new-instance v2, Lcom/join/mgps/activity/CollectionModuleSixActivity_$q;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$q;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 25
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleSixActivity_$r;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$r;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 27
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleSixActivity_$s;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$s;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 29
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleSixActivity_$t;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$t;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 31
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleSixActivity_$u;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$u;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 33
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleSixActivity_$v;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$v;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->o:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz v0, :cond_7

    .line 35
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleSixActivity_$w;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$w;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->p:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    .line 37
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleSixActivity_$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$a;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 38
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$b;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->A0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method serverConnectionException()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$h;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->z0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->z0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->z0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$c;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$d;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$j;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadingPoint(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleSixActivity_$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CollectionModuleSixActivity_$l;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
