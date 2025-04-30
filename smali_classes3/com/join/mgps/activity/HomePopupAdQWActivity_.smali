.class public final Lcom/join/mgps/activity/HomePopupAdQWActivity_;
.super Lcom/join/mgps/activity/HomePopupAdQWActivity;
.source "HomePopupAdQWActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HomePopupAdQWActivity_$f;
    }
.end annotation


# static fields
.field public static final B:Ljava/lang/String; = "adJson"

.field public static final C:Ljava/lang/String; = "everdayLogin"

.field public static final D:Ljava/lang/String; = "isFromAccountCenter"


# instance fields
.field private final A:Landroid/content/BroadcastReceiver;

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

.field private final x:Landroid/content/IntentFilter;

.field private final y:Landroid/content/BroadcastReceiver;

.field private final z:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->v:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->w:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->x:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity_$a;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->y:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->z:Landroid/content/IntentFilter;

    .line 7
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity_$b;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->A:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic n(Lcom/join/mgps/activity/HomePopupAdQWActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->m(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcom/join/mgps/activity/HomePopupAdQWActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private p(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->q()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->x:Landroid/content/IntentFilter;

    const-string v0, "com.join.apkinstal.action.broadcast"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->z:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_change"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->y:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->x:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->A:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->z:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "adJson"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->h:Ljava/lang/String;

    :cond_0
    const-string v1, "everdayLogin"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/EverdayLogin;

    iput-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->i:Lcom/join/mgps/dto/EverdayLogin;

    :cond_1
    const-string v1, "isFromAccountCenter"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->j:Z

    :cond_2
    return-void
.end method

.method public static r(Landroid/content/Context;)Lcom/join/mgps/activity/HomePopupAdQWActivity_$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity_$f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static s(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/HomePopupAdQWActivity_$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity_$f;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/HomePopupAdQWActivity_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/HomePopupAdQWActivity_$e;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->w:Ljava/util/Map;

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

.method m(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/HomePopupAdQWActivity_$d;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->v:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->p(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c02ca

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-super {p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090a7b

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f091280

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->b:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    const v0, 0x7f09075b

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/relex/circleindicator/CircleIndicator;

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->c:Lme/relex/circleindicator/CircleIndicator;

    const v0, 0x7f090c59

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomCircleProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->d:Lcom/join/mgps/customview/CustomCircleProgressBar;

    const v0, 0x7f0903a1

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f09076f

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0903ae

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->g:Landroid/widget/RelativeLayout;

    const v0, 0x7f090bd9

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity_$c;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->e()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->w:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->q()V

    return-void
.end method
