.class public final Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;
.super Lcom/BaseAppCompatActivity;
.source "VASingleGameIndexActivity.kt"

# interfaces
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016R\u001d\u0010\u000e\u001a\u00020\t8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001d\u0010\u0013\u001a\u00020\u000f8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;",
        "Lcom/BaseAppCompatActivity;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "onClickReload",
        "onClickSetNetWork",
        "Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;",
        "viewModle$delegate",
        "Lkotlin/Lazy;",
        "getViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;",
        "viewModle",
        "Lcom/join/android/app/mgsim/wufun/databinding/k2;",
        "dataBinding$delegate",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/k2;",
        "dataBinding",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final dataBinding$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity$dataBinding$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity$dataBinding$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->dataBinding$delegate:Lkotlin/Lazy;

    .line 3
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity$viewModle$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity$viewModle$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->viewModle$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/k2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->dataBinding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/k2;

    return-object v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->viewModle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    return-object v0
.end method

.method public onClickReload()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->loadDatas(Landroid/content/Context;)V

    return-void
.end method

.method public onClickSetNetWork()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity$onCreate$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->setListener(Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/k2;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/k2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/k2;

    move-result-object p1

    const/16 v0, 0x13

    invoke-virtual {p1, v0, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "gameId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->initDatas(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->loadDatas(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->getShowStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity$onCreate$3;->INSTANCE:Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity$onCreate$3;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
