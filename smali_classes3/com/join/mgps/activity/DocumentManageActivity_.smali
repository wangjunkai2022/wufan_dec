.class public final Lcom/join/mgps/activity/DocumentManageActivity_;
.super Lcom/join/mgps/activity/DocumentManageActivity;
.source "DocumentManageActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/DocumentManageActivity_$u;
    }
.end annotation


# static fields
.field public static final M0:Ljava/lang/String; = "from"

.field public static final N0:Ljava/lang/String; = "gameid"


# instance fields
.field private final E0:Li3/c;

.field private final F0:Ljava/util/Map;
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

.field private final G0:Landroid/content/IntentFilter;

.field private final H0:Landroid/content/BroadcastReceiver;

.field private final I0:Landroid/content/IntentFilter;

.field private final J0:Landroid/content/BroadcastReceiver;

.field private final K0:Landroid/content/IntentFilter;

.field private final L0:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->E0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->F0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->G0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$k;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->H0:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->I0:Landroid/content/IntentFilter;

    .line 7
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$m;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->J0:Landroid/content/BroadcastReceiver;

    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->K0:Landroid/content/IntentFilter;

    .line 9
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$n;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->L0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/activity/DocumentManageActivity_;Lcom/join/mgps/dto/ArchiveNumDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity;->e1(Lcom/join/mgps/dto/ArchiveNumDataBean;)V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/activity/DocumentManageActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->showRedPoint()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->u:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity_;->injectExtras_()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->G0:Landroid/content/IntentFilter;

    const-string v0, "com.cloud.downCloud"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->I0:Landroid/content/IntentFilter;

    const-string v0, "com.wufun.cloud.showDownDialog"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->K0:Landroid/content/IntentFilter;

    const-string v0, "com.cloud.downCloud.all"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->H0:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->G0:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->J0:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->I0:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->L0:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->K0:Landroid/content/IntentFilter;

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

    const-string v1, "from"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/join/mgps/activity/DocumentManageActivity;->D0:I

    :cond_0
    const-string v1, "gameid"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->y:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic j1(Lcom/join/mgps/activity/DocumentManageActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity;->f1(I)V

    return-void
.end method

.method static synthetic k1(Lcom/join/mgps/activity/DocumentManageActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity;->d1(I)V

    return-void
.end method

.method static synthetic l1(Lcom/join/mgps/activity/DocumentManageActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->hideRedPoint()V

    return-void
.end method

.method static synthetic m1(Lcom/join/mgps/activity/DocumentManageActivity_;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity;->g1(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic n1(Lcom/join/mgps/activity/DocumentManageActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->L0()V

    return-void
.end method

.method static synthetic o1(Lcom/join/mgps/activity/DocumentManageActivity_;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity;->I0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic p1(Lcom/join/mgps/activity/DocumentManageActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/DocumentManageActivity;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static q1(Landroid/content/Context;)Lcom/join/mgps/activity/DocumentManageActivity_$u;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$u;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static r1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/DocumentManageActivity_$u;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$u;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method I0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/DocumentManageActivity_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/DocumentManageActivity_$j;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/DocumentManageActivity_$l;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/DocumentManageActivity_$l;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method L0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/DocumentManageActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/DocumentManageActivity_$i;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method d1(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity_$f;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method e1(Lcom/join/mgps/dto/ArchiveNumDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity_$c;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;Lcom/join/mgps/dto/ArchiveNumDataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f1(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity_$e;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g1(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity_$h;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;Lcom/join/mgps/dto/CloudListDataBean;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->F0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method hideRedPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$g;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->E0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c002e

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->H0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->J0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->L0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    invoke-super {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09010e

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f090d6b

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f09113d

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090814

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->d:Landroid/widget/ImageView;

    const v0, 0x7f090d32

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->e:Landroid/widget/RadioGroup;

    const v0, 0x7f090cc0

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->f:Landroid/widget/RadioButton;

    const v0, 0x7f090cbe

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->g:Landroid/widget/RadioButton;

    const v0, 0x7f090d79

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f091177

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f090827

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f090d33

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->k:Landroid/widget/RadioGroup;

    const v0, 0x7f090cc6

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->l:Landroid/widget/RadioButton;

    const v0, 0x7f090cbd

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->m:Landroid/widget/RadioButton;

    const v0, 0x7f09093b

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f09112b

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f090533

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->p:Landroid/widget/FrameLayout;

    const v0, 0x7f090d56

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->q:Landroid/widget/RelativeLayout;

    const v0, 0x7f090e67

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09116b

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->s:Landroid/widget/TextView;

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->f:Landroid/widget/RadioButton;

    if-eqz p1, :cond_0

    .line 21
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$o;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->g:Landroid/widget/RadioButton;

    if-eqz p1, :cond_1

    .line 23
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$p;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->l:Landroid/widget/RadioButton;

    if-eqz p1, :cond_2

    .line 25
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$q;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->m:Landroid/widget/RadioButton;

    if-eqz p1, :cond_3

    .line 27
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$r;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->b:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4

    .line 29
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$s;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->a:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    .line 31
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$t;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->h:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_6

    .line 33
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$a;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->n:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    .line 35
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$b;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->F0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->E0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->E0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_;->E0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity_;->injectExtras_()V

    return-void
.end method

.method showRedPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity_$d;-><init>(Lcom/join/mgps/activity/DocumentManageActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
