.class public final Lcom/join/mgps/fragment/v4;
.super Lcom/join/mgps/fragment/u4;
.source "UserCenterFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/v4$o;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field private final B:Ljava/util/Map;
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

.field private final C:Landroid/content/IntentFilter;

.field private final D:Landroid/content/BroadcastReceiver;

.field private final z:Li3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/u4;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/v4;->z:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/v4;->B:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/v4;->C:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/fragment/v4$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v4$f;-><init>(Lcom/join/mgps/fragment/v4;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/v4;->D:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic R(Lcom/join/mgps/fragment/v4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u4;->refreshViews()V

    return-void
.end method

.method static synthetic S(Lcom/join/mgps/fragment/v4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u4;->getUserInfo()V

    return-void
.end method

.method static synthetic T(Lcom/join/mgps/fragment/v4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u4;->showNotifUi()V

    return-void
.end method

.method static synthetic U(Lcom/join/mgps/fragment/v4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u4;->pullMyProfileInfo()V

    return-void
.end method

.method static synthetic V(Lcom/join/mgps/fragment/v4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u4;->loadViewConfigsFromLocal()V

    return-void
.end method

.method static synthetic W(Lcom/join/mgps/fragment/v4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u4;->hideRedPoint()V

    return-void
.end method

.method static synthetic X(Lcom/join/mgps/fragment/v4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u4;->tokenFailure()V

    return-void
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/v4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u4;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a0(Lcom/join/mgps/fragment/v4;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/u4;->updateAdapterByNewMsgCount(I)V

    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/fragment/v4;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/u4;->changeMgState(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/fragment/v4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u4;->touristLogin()V

    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/fragment/v4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u4;->getViewConfigs()V

    return-void
.end method

.method public static e0()Lcom/join/mgps/fragment/v4$o;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v4$o;

    invoke-direct {v0}, Lcom/join/mgps/fragment/v4$o;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/fragment/u4;->t:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/v4;->C:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method changeMgState(Ljava/lang/String;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/fragment/v4$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/fragment/v4$a;-><init>(Lcom/join/mgps/fragment/v4;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v4;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getUserInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/v4$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/v4$d;-><init>(Lcom/join/mgps/fragment/v4;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method getViewConfigs()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/v4$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/v4$c;-><init>(Lcom/join/mgps/fragment/v4;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method hideRedPoint()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v4$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v4$k;-><init>(Lcom/join/mgps/fragment/v4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v4;->A:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method loadViewConfigsFromLocal()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v4$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v4$j;-><init>(Lcom/join/mgps/fragment/v4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v4;->z:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/v4;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/v4;->D:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/fragment/v4;->C:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/v4;->A:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c022e

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/v4;->A:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/v4;->A:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/v4;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/fragment/u4;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/v4;->A:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->b:Landroid/widget/ImageView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->c:Landroid/widget/TextView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->d:Landroid/widget/ImageView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->e:Landroid/widget/TextView;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->f:Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->g:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->i:Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->j:Landroid/widget/LinearLayout;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->k:Landroid/widget/LinearLayout;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->l:Landroid/widget/LinearLayout;

    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->m:Landroid/widget/GridView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090834

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0907dc

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->b:Landroid/widget/ImageView;

    const v0, 0x7f09119d

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->c:Landroid/widget/TextView;

    const v0, 0x7f090836

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->d:Landroid/widget/ImageView;

    const v0, 0x7f09119e

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->e:Landroid/widget/TextView;

    const v0, 0x7f09119a

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->f:Landroid/widget/TextView;

    const v0, 0x7f09119b

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->g:Landroid/widget/TextView;

    const v0, 0x7f09119c

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->h:Landroid/widget/TextView;

    const v0, 0x7f09119f

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->i:Landroid/widget/TextView;

    const v0, 0x7f090973

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f090964

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f09093c

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0909d7

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u4;->m:Landroid/widget/GridView;

    const v0, 0x7f09091e

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    new-instance v0, Lcom/join/mgps/fragment/v4$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v4$g;-><init>(Lcom/join/mgps/fragment/v4;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u4;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/v4;->z:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method pullMyProfileInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/v4$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/v4$e;-><init>(Lcom/join/mgps/fragment/v4;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v4;->B:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method refreshViews()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v4$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v4$h;-><init>(Lcom/join/mgps/fragment/v4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showNotifUi()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v4$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v4$i;-><init>(Lcom/join/mgps/fragment/v4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v4$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v4$m;-><init>(Lcom/join/mgps/fragment/v4;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method tokenFailure()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v4$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v4$l;-><init>(Lcom/join/mgps/fragment/v4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method touristLogin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/v4$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/v4$b;-><init>(Lcom/join/mgps/fragment/v4;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method updateAdapterByNewMsgCount(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v4$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/v4$n;-><init>(Lcom/join/mgps/fragment/v4;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
