.class public final Lcom/join/mgps/activity/MGInformationActivity_;
.super Lcom/join/mgps/activity/MGInformationActivity;
.source "MGInformationActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MGInformationActivity_$l;
    }
.end annotation


# static fields
.field public static final s:Ljava/lang/String; = "extBean"


# instance fields
.field private final q:Li3/c;

.field private final r:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/MGInformationActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity_;->q:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity_;->r:Ljava/util/Map;

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/MGInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGInformationActivity;->showLoading()V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/MGInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGInformationActivity;->J0()V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/MGInformationActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGInformationActivity;->K0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/MGInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGInformationActivity;->updateDownloadView()V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/MGInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGInformationActivity;->H0()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/MGInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGInformationActivity;->getDownloadTaskInfo()V

    return-void
.end method

.method public static T0(Landroid/content/Context;)Lcom/join/mgps/activity/MGInformationActivity_$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGInformationActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGInformationActivity_$l;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static U0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MGInformationActivity_$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGInformationActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGInformationActivity_$l;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MGInformationActivity_;->injectExtras_()V

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

    const-string v1, "extBean"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    iput-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity;->k:Lcom/join/mgps/dto/ExtBean;

    :cond_0
    return-void
.end method


# virtual methods
.method H0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGInformationActivity_$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGInformationActivity_$a;-><init>(Lcom/join/mgps/activity/MGInformationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method J0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGInformationActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGInformationActivity_$i;-><init>(Lcom/join/mgps/activity/MGInformationActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGInformationActivity_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGInformationActivity_$j;-><init>(Lcom/join/mgps/activity/MGInformationActivity_;Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity_;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGInformationActivity_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGInformationActivity_$b;-><init>(Lcom/join/mgps/activity/MGInformationActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity_;->q:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGInformationActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c02d9

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGInformationActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f0909e2

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f0912e4

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity;->d:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909b5

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f091033

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f091030

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity;->j:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f090d11

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 9
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09013e

    .line 10
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 11
    new-instance v2, Lcom/join/mgps/activity/MGInformationActivity_$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MGInformationActivity_$c;-><init>(Lcom/join/mgps/activity/MGInformationActivity_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 12
    new-instance v0, Lcom/join/mgps/activity/MGInformationActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGInformationActivity_$d;-><init>(Lcom/join/mgps/activity/MGInformationActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 13
    new-instance v0, Lcom/join/mgps/activity/MGInformationActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGInformationActivity_$e;-><init>(Lcom/join/mgps/activity/MGInformationActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGInformationActivity;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 15
    new-instance v0, Lcom/join/mgps/activity/MGInformationActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGInformationActivity_$f;-><init>(Lcom/join/mgps/activity/MGInformationActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/MGInformationActivity;->j:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz p1, :cond_4

    .line 17
    new-instance v0, Lcom/join/mgps/activity/MGInformationActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGInformationActivity_$g;-><init>(Lcom/join/mgps/activity/MGInformationActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGInformationActivity;->D0()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGInformationActivity_;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGInformationActivity_;->q:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGInformationActivity_;->q:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGInformationActivity_;->q:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MGInformationActivity_;->injectExtras_()V

    return-void
.end method

.method showLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGInformationActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGInformationActivity_$h;-><init>(Lcom/join/mgps/activity/MGInformationActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGInformationActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGInformationActivity_$k;-><init>(Lcom/join/mgps/activity/MGInformationActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
