.class public final Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;
.super Lcom/join/kotlin/ui/base/BasViewModleActivity;
.source "UnbindThirdPartyActivity.kt"

# interfaces
.implements Lcom/join/kotlin/ui/notice/ClickProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0014J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0014R\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;",
        "Lcom/join/kotlin/ui/base/BasViewModleActivity;",
        "Lcom/join/kotlin/ui/notice/ClickProxy;",
        "",
        "initViewModel",
        "Lcom/join/kotlin/ui/base/DataBindingConfig;",
        "getDataBindingConfig",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Lcom/join/mgps/dto/BTActivityBean;",
        "data",
        "onClickItem",
        "onPause",
        "onClickBack",
        "onDestroy",
        "Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;",
        "viewModle",
        "Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;",
        "getViewModle",
        "()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;",
        "setViewModle",
        "(Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;)V",
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
.field public viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/base/BasViewModleActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getViewBinding(Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/base/BasViewModleActivity;->getViewBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDataBindingConfig()Lcom/join/kotlin/ui/base/DataBindingConfig;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/base/DataBindingConfig;

    .line 2
    iget-object v1, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-nez v1, :cond_0

    const-string v2, "viewModle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const v2, 0x7f0c05c7

    const/16 v3, 0x1b

    .line 3
    invoke-direct {v0, v2, v3, v1}, Lcom/join/kotlin/ui/base/DataBindingConfig;-><init>(IILandroidx/lifecycle/ViewModel;)V

    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1, p0}, Lcom/join/kotlin/ui/base/DataBindingConfig;->addBindingParam(ILjava/lang/Object;)Lcom/join/kotlin/ui/base/DataBindingConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-nez v0, :cond_0

    const-string v1, "viewModle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public initViewModel()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/base/BasViewModleActivity;->getActivityScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    iput-object v0, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    return-void
.end method

.method public onClickBack()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-nez v0, :cond_0

    const-string v1, "viewModle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->setBreakCodeCountDown(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClickItem(Lcom/join/mgps/dto/BTActivityBean;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/BTActivityBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An operation is not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Not yet implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/base/BasViewModleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    const-string v1, "viewModle"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->setPlatform(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->QQ_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getTitle()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const-string v0, "\u89e3\u7ed1QQ"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->WEIXIN_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getTitle()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const-string v0, "\u89e3\u7ed1\u5fae\u4fe1"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->WB_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getTitle()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const-string v0, "\u89e3\u7ed1\u5fae\u535a"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 7
    :cond_6
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    const-string v0, "AccountUtil_.getInstance_(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getAccount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f60\u7684\u5e10\u53f7\u4e3a\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "accountBean"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getMoble()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object p1

    const-string v2, "accountBean.mobile"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->setMobleNumber(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-nez p1, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1, p0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendsmsCode(Landroid/content/Context;)V

    .line 12
    iget-object p1, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-nez p1, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getCallStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity$onCreate$1;-><init>(Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 13
    iget-object p1, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-nez p1, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getHidesoftWard()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity$onCreate$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity$onCreate$2;-><init>(Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-nez v0, :cond_0

    const-string v1, "viewModle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->setBreakCodeCountDown(Z)V

    return-void
.end method

.method public final setViewModle(Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;->viewModle:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    return-void
.end method
