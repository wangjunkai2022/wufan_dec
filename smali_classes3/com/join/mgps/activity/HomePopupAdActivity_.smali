.class public final Lcom/join/mgps/activity/HomePopupAdActivity_;
.super Lcom/join/mgps/activity/HomePopupAdActivity;
.source "HomePopupAdActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HomePopupAdActivity_$c;
    }
.end annotation


# static fields
.field public static final s:Ljava/lang/String; = "adJson"

.field public static final t:Ljava/lang/String; = "everdayLogin"

.field public static final u:Ljava/lang/String; = "isFromAccountCenter"


# instance fields
.field private final o:Li3/c;

.field private final p:Ljava/util/Map;
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

.field private final q:Landroid/content/IntentFilter;

.field private final r:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HomePopupAdActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->o:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->p:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->q:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdActivity_$a;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->r:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static K0(Landroid/content/Context;)Lcom/join/mgps/activity/HomePopupAdActivity_$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdActivity_$c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static L0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/HomePopupAdActivity_$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdActivity_$c;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/HomePopupAdActivity_;->injectExtras_()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->q:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_change"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->r:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->q:Landroid/content/IntentFilter;

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

    if-eqz v0, :cond_2

    const-string v1, "adJson"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->d:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->e:Lcom/join/mgps/dto/EverdayLogin;

    :cond_1
    const-string v1, "isFromAccountCenter"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->f:Z

    :cond_2
    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->p:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->o:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HomePopupAdActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c02c7

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HomePopupAdActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/HomePopupAdActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090a7b

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f091280

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->b:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    const v0, 0x7f09075b

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/relex/circleindicator/CircleIndicator;

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->c:Lme/relex/circleindicator/CircleIndicator;

    const v0, 0x7f090bd9

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdActivity_$b;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/HomePopupAdActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->p:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->o:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->o:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity_;->o:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/HomePopupAdActivity_;->injectExtras_()V

    return-void
.end method
