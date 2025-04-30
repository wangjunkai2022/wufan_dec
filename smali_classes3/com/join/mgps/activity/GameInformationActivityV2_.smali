.class public final Lcom/join/mgps/activity/GameInformationActivityV2_;
.super Lcom/join/mgps/activity/GameInformationActivityV2;
.source "GameInformationActivityV2_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameInformationActivityV2_$y;
    }
.end annotation


# static fields
.field public static final D0:Ljava/lang/String; = "info_id"

.field public static final E0:Ljava/lang/String; = "title"

.field public static final F0:Ljava/lang/String; = "extBean"

.field public static final G0:Ljava/lang/String; = "defaultDown"


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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->z0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->A0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->B0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$k;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->C0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/activity/GameInformationActivityV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->Z0()V

    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/activity/GameInformationActivityV2_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->W0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/activity/GameInformationActivityV2_;Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/GameInformationActivityV2;->h1(Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/activity/GameInformationActivityV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->getDownloadTaskInfo()V

    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/activity/GameInformationActivityV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->t1()V

    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/activity/GameInformationActivityV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->showLoding()V

    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/activity/GameInformationActivityV2_;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/GameInformationActivityV2;->v1(Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/activity/GameInformationActivityV2_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/activity/GameInformationActivityV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->showLodingFailed()V

    return-void
.end method

.method static synthetic J1(Lcom/join/mgps/activity/GameInformationActivityV2_;Lcom/join/mgps/dto/GameInformationBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->p1(Lcom/join/mgps/dto/GameInformationBean;)V

    return-void
.end method

.method static synthetic K1(Lcom/join/mgps/activity/GameInformationActivityV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->n1()V

    return-void
.end method

.method static synthetic L1(Lcom/join/mgps/activity/GameInformationActivityV2_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static M1(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationActivityV2_$y;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$y;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static N1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GameInformationActivityV2_$y;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$y;-><init>(Landroidx/fragment/app/Fragment;)V

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

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->b:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->c:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2_;->injectExtras_()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->B0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->B0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->C0:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->B0:Landroid/content/IntentFilter;

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

    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->s:Ljava/lang/String;

    :cond_0
    const-string v1, "title"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->t:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->u:Lcom/join/mgps/dto/ExtBean;

    :cond_2
    const-string v1, "defaultDown"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->v:Z

    :cond_3
    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/activity/GameInformationActivityV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->e1()V

    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/activity/GameInformationActivityV2_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateDownloadView()V

    return-void
.end method

.method static synthetic z1(Lcom/join/mgps/activity/GameInformationActivityV2_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->o1(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method W0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/GameInformationActivityV2_$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameInformationActivityV2_$n;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Z0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameInformationActivityV2_$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameInformationActivityV2_$m;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method e1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$a;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    const-string v1, ""

    const-wide/16 v2, 0x190

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->A0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameInformationActivityV2_$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameInformationActivityV2_$p;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method h1(Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/GameInformationActivityV2_$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/GameInformationActivityV2_$o;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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

.method n1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$i;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    const-string v1, ""

    const-wide/16 v2, 0x190

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method o1(Ljava/util/List;)V
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
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2_$b;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x190

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->z0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c024b

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->C0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f091023

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->d:Landroid/widget/TextView;

    const v0, 0x7f090101

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f090d0b

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->f:Landroid/widget/RelativeLayout;

    const v0, 0x7f0909b5

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0900d9

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f091246

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090103

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->k:Landroid/widget/TextView;

    const v0, 0x7f090109

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->l:Landroid/widget/TextView;

    const v0, 0x7f090a6f

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->m:Landroid/widget/TextView;

    const v0, 0x7f090a71

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->n:Landroid/widget/TextView;

    const v0, 0x7f0903bf

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->o:Landroid/widget/Button;

    const v0, 0x7f090e38

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->p:Landroid/widget/ImageView;

    const v0, 0x7f09029e

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->q:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->r:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f090a7b

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->A:Landroid/widget/TextView;

    const v0, 0x7f090171

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->B:Landroid/widget/LinearLayout;

    const v0, 0x7f0908a0

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->C:Landroid/widget/LinearLayout;

    const v0, 0x7f090d9a

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->D:Landroid/widget/TextView;

    const v0, 0x7f090cf3

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->E:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090131

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090d11

    .line 22
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090e21

    .line 23
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 24
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivityV2_$q;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$q;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 26
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivityV2_$r;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$r;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->C:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 28
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivityV2_$s;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$s;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 30
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivityV2_$t;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$t;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->o:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 32
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivityV2_$u;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$u;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 33
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$v;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 34
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$w;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->r:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz p1, :cond_7

    .line 36
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$x;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->afterview()V

    return-void
.end method

.method p1(Lcom/join/mgps/dto/GameInformationBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2_$h;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;Lcom/join/mgps/dto/GameInformationBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->A0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->z0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->z0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2_;->z0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$d;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$g;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2_$j;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2_$f;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method t1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$c;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    const-string v1, ""

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2_$l;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method v1(Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/GameInformationActivityV2_$e;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/GameInformationActivityV2_$e;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2_;Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v6, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
