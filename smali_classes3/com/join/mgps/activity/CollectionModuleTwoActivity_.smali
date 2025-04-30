.class public final Lcom/join/mgps/activity/CollectionModuleTwoActivity_;
.super Lcom/join/mgps/activity/CollectionModuleTwoActivity;
.source "CollectionModuleTwoActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;
    }
.end annotation


# static fields
.field public static final s0:Ljava/lang/String; = "collection_id"

.field public static final t0:Ljava/lang/String; = "extBean"


# instance fields
.field private final o0:Li3/c;

.field private final p0:Ljava/util/Map;
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

.field private final q0:Landroid/content/IntentFilter;

.field private final r0:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->o0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->p0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->q0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$j;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->r0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLoding()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->getDownloadTaskInfo()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->N0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->S0()V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->L0()V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->serverConnectionException()V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->K0()V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDownloadView()V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->O0(II)V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->I0()V

    return-void
.end method

.method public static e1(Landroid/content/Context;)Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static f1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$s;-><init>(Landroidx/fragment/app/Fragment;)V

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

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->s:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->t:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->injectExtras_()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->q0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->q0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->r0:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->q0:Landroid/content/IntentFilter;

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

    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->w:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->x:Lcom/join/mgps/dto/ExtBean;

    :cond_1
    return-void
.end method


# virtual methods
.method I0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$h;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method K0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$e;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$c;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N0(Ljava/util/List;)V
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
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$a;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O0(II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$g;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;II)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$b;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->p0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$i;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->o0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c00aa

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->r0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f0909e2

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f09018d

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f091033

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f090d11

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->g:Landroid/widget/ImageView;

    const v0, 0x7f09013e

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->h:Landroid/widget/ImageView;

    const v0, 0x7f091030

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->j:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f0902a6

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->I:Landroid/widget/RelativeLayout;

    const v0, 0x7f09029e

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->J:Landroid/widget/ImageView;

    const v0, 0x7f090d9a

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->K:Landroid/widget/TextView;

    const v0, 0x7f090e21

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 15
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$k;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$k;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 16
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$l;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->h:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 18
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$m;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 20
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$n;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->j:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz p1, :cond_4

    .line 22
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$o;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->J:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 24
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$p;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->p0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method serverConnectionException()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$d;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->o0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->o0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->o0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$q;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$r;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity_$f;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
