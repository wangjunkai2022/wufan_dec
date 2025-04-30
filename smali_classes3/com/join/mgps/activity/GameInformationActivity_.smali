.class public final Lcom/join/mgps/activity/GameInformationActivity_;
.super Lcom/join/mgps/activity/GameInformationActivity;
.source "GameInformationActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameInformationActivity_$a0;
    }
.end annotation


# static fields
.field public static final N0:Ljava/lang/String; = "info_id"

.field public static final O0:Ljava/lang/String; = "title"

.field public static final P0:Ljava/lang/String; = "extBean"

.field public static final Q0:Ljava/lang/String; = "defaultDown"


# instance fields
.field private final J0:Li3/c;

.field private final K0:Ljava/util/Map;
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

.field private final L0:Landroid/content/IntentFilter;

.field private final M0:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->J0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->K0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->L0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$k;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->M0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->U0()V

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

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->b:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->c:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity_;->injectExtras_()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_;->L0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_;->L0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_;->M0:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->L0:Landroid/content/IntentFilter;

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

    if-eqz v0, :cond_3

    const-string v1, "info_id"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    :cond_0
    const-string v1, "title"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->D:Ljava/lang/String;

    :cond_1
    const-string v1, "extBean"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ExtBean;

    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->E:Lcom/join/mgps/dto/ExtBean;

    :cond_2
    const-string v1, "defaultDown"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->F:Z

    :cond_3
    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->Z0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateDownloadView()V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->R0()V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->Q0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/activity/GameInformationActivity_;Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/GameInformationActivity;->W0(Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->getDownloadTaskInfo()V

    return-void
.end method

.method static synthetic q1(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->e1()V

    return-void
.end method

.method static synthetic r1(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLoding()V

    return-void
.end method

.method static synthetic s1(Lcom/join/mgps/activity/GameInformationActivity_;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/GameInformationActivity;->g1(Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic t1(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/activity/GameInformationActivity_;Lcom/join/mgps/dto/GameInformationBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->a1(Lcom/join/mgps/dto/GameInformationBean;)V

    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->M0()V

    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/activity/GameInformationActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->Y0()V

    return-void
.end method

.method public static y1(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationActivity_$a0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$a0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$a0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static z1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GameInformationActivity_$a0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$a0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$a0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method M0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$j;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Q0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GameInformationActivity_$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameInformationActivity_$p;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method R0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameInformationActivity_$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameInformationActivity_$o;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method U0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$b;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W0(Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/GameInformationActivity_$q;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/GameInformationActivity_$q;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Y0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$l;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameInformationActivity_$c;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x3e8

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a1(Lcom/join/mgps/dto/GameInformationBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameInformationActivity_$i;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Lcom/join/mgps/dto/GameInformationBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method e1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$d;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g1(Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameInformationActivity_$f;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameInformationActivity_$f;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v6, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->K0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameInformationActivity_$r;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameInformationActivity_$r;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->J0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c024a

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->M0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f091023

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f090dc6

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/SmartScrollView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->e:Lcom/join/mgps/customview/SmartScrollView;

    const v0, 0x7f0912c9

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ObservableWebView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->f:Lcom/join/mgps/customview/ObservableWebView;

    const v0, 0x7f090101

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->g:Landroid/widget/RelativeLayout;

    const v0, 0x7f09054c

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f090d0b

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f0909b5

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f0900d9

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090220

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090fa4

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f090103

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f09021b

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f09021f

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f09021a

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f090226

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f09021d

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    const v0, 0x7f090109

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f090a6f

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f090a71

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f0903bf

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    const v0, 0x7f090e38

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->y:Landroid/widget/ImageView;

    const v0, 0x7f09029e

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->z:Landroid/widget/ImageView;

    const v0, 0x7f0909eb

    .line 24
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->A:Landroid/widget/LinearLayout;

    const v0, 0x7f09102e

    .line 25
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->B:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f0902f5

    .line 26
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->K:Landroid/widget/TextView;

    const v0, 0x7f0902ee

    .line 27
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->n0:Landroid/widget/TextView;

    const v0, 0x7f0902f0

    .line 28
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->o0:Landroid/widget/TextView;

    const v0, 0x7f0902bd

    .line 29
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->p0:Landroid/widget/TextView;

    const v0, 0x7f090a7b

    .line 30
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->q0:Landroid/widget/TextView;

    const v0, 0x7f090590

    .line 31
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->r0:Landroid/widget/LinearLayout;

    const v0, 0x7f090171

    .line 32
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->s0:Landroid/widget/LinearLayout;

    const v0, 0x7f0908a0

    .line 33
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t0:Landroid/widget/LinearLayout;

    const v0, 0x7f090d9a

    .line 34
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->u0:Landroid/widget/TextView;

    const v0, 0x7f090131

    .line 35
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090d11

    .line 36
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090e21

    .line 37
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 38
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity_$s;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity_$s;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 40
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity_$t;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity_$t;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 42
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity_$u;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity_$u;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 44
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity_$v;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity_$v;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->x:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 46
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity_$w;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity_$w;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->t:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 48
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity_$x;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity_$x;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 49
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$y;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 50
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$z;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->B:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz p1, :cond_8

    .line 52
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$a;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->afterview()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity_;->K0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_;->J0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_;->J0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity_;->J0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$e;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$h;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameInformationActivity_$m;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameInformationActivity_$g;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity_$n;-><init>(Lcom/join/mgps/activity/GameInformationActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
