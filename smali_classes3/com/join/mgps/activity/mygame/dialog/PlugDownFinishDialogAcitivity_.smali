.class public final Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;
.super Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;
.source "PlugDownFinishDialogAcitivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_$IntentBuilder_;
    }
.end annotation


# static fields
.field public static final PLUG_NUMBER_EXTRA:Ljava/lang/String; = "plugNumber"


# instance fields
.field private final beans_:Ljava/util/Map;
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

.field private final onViewChangedNotifier_:Li3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;->onViewChangedNotifier_:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;->beans_:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->notifyUi()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;->injectExtras_()V

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

    const-string v1, "plugNumber"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->plugNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_$IntentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_$IntentBuilder_;
    .locals 1

    .line 2
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
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
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;->beans_:Ljava/util/Map;

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

.method notifyUi()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_$3;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_$3;-><init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;->onViewChangedNotifier_:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0533

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09100f

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->title:Landroid/widget/TextView;

    const v0, 0x7f090c60

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    const v0, 0x7f090c59

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0900ea

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->appSize:Landroid/widget/TextView;

    const v0, 0x7f0909ae

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    const v0, 0x7f090216

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->cancle:Landroid/widget/ImageView;

    const v0, 0x7f090b5c

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->ok:Landroid/widget/TextView;

    const v0, 0x7f09075e

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->info:Landroid/widget/TextView;

    const v0, 0x7f090687

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->cancle:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 11
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_$1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_$1;-><init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->ok:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 13
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_$2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_$2;-><init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity_;->injectExtras_()V

    return-void
.end method
