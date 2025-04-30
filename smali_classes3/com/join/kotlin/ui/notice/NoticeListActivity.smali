.class public final Lcom/join/kotlin/ui/notice/NoticeListActivity;
.super Lcom/BaseAppCompatActivity;
.source "NoticeListActivity.kt"

# interfaces
.implements Lcom/join/kotlin/ui/notice/ClickProxy;
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\u0006H\u0016J\u0008\u0010\u000f\u001a\u00020\u0006H\u0016J\u0008\u0010\u0010\u001a\u00020\u0006H\u0016R\"\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR$\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lcom/join/kotlin/ui/notice/NoticeListActivity;",
        "Lcom/BaseAppCompatActivity;",
        "Lcom/join/kotlin/ui/notice/ClickProxy;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "",
        "page",
        "loadData",
        "Lcom/join/mgps/dto/BTActivityBean;",
        "data",
        "onClickItem",
        "onClickBack",
        "onClickReload",
        "onClickSetNetWork",
        "I",
        "getPage",
        "()I",
        "setPage",
        "(I)V",
        "Lcom/join/kotlin/ui/notice/NoticeViewModle;",
        "viewModle",
        "Lcom/join/kotlin/ui/notice/NoticeViewModle;",
        "getViewModle",
        "()Lcom/join/kotlin/ui/notice/NoticeViewModle;",
        "setViewModle",
        "(Lcom/join/kotlin/ui/notice/NoticeViewModle;)V",
        "Lcom/join/android/app/mgsim/wufun/databinding/h1;",
        "viewdataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/h1;",
        "getViewdataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/h1;",
        "setViewdataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/h1;)V",
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
.field private page:I

.field public viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

.field private viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/h1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->page:I

    return-void
.end method


# virtual methods
.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->page:I

    return v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    if-nez v0, :cond_0

    const-string v1, "viewModle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/h1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/h1;

    return-object v0
.end method

.method public final loadData(I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 3
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "gameId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setGameId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setPage(I)V

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    const-string v2, "AccountUtil_.getInstance_(this)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    const-string v2, "AccountUtil_.getInstance_(this).accountData"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUid(I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 8
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    const-string v1, "viewModle"

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getRequest()Lcom/join/kotlin/ui/notice/NoticeRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/notice/NoticeRequest;->getNoticeData(Lcom/join/mgps/dto/RequestModel;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->updateShowLoadUI(Z)V

    :goto_0
    return-void
.end method

.method public onClickBack()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClickItem(Lcom/join/mgps/dto/BTActivityBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/BTActivityBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/BTActivityBean;->getJump_url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onClickReload()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    if-nez v0, :cond_0

    const-string v1, "viewModle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getLoadDataBinding()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    iget v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->page:I

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->loadData(I)V

    return-void
.end method

.method public onClickSetNetWork()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c005c

    .line 2
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/h1;

    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/h1;

    .line 3
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    new-instance v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/join/kotlin/ui/notice/NoticeViewModle;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    const-string v0, "ViewModelProvider(this, \u2026iceViewModle::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/join/kotlin/ui/notice/NoticeViewModle;

    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/h1;

    const-string v1, "viewModle"

    if-eqz v0, :cond_1

    const/16 v2, 0x1d

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v2, p1}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/h1;

    if-eqz p1, :cond_2

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/h1;

    if-eqz p1, :cond_3

    const/16 v0, 0x13

    invoke-virtual {p1, v0, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/h1;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 8
    :cond_4
    new-instance p1, Lcom/join/kotlin/ui/notice/NoticeListAdapter;

    invoke-direct {p1, p0, p0}, Lcom/join/kotlin/ui/notice/NoticeListAdapter;-><init>(Landroid/content/Context;Lcom/join/kotlin/ui/notice/ClickProxy;)V

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getNoticeDats()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v2, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$1;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$1;-><init>(Lcom/join/kotlin/ui/notice/NoticeListActivity;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/h1;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/h1;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    :cond_6
    iget-object v2, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/h1;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/h1;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz v2, :cond_7

    new-instance v3, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$2;

    invoke-direct {v3, p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$2;-><init>(Lcom/join/kotlin/ui/notice/NoticeListActivity;)V

    invoke-virtual {v2, v3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 13
    :cond_7
    iget-object v2, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    if-nez v2, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getNoticeDats()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getLoadDataBinding()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v2, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 15
    iget v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->page:I

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->loadData(I)V

    .line 16
    new-instance v0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$3;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$3;-><init>(Lcom/join/kotlin/ui/notice/NoticeListActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->setOnItemClickListener(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    if-nez p1, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getRequest()Lcom/join/kotlin/ui/notice/NoticeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeRequest;->getResultData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$4;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$4;-><init>(Lcom/join/kotlin/ui/notice/NoticeListActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->page:I

    return-void
.end method

.method public final setViewModle(Lcom/join/kotlin/ui/notice/NoticeViewModle;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/notice/NoticeViewModle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewModle:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    return-void
.end method

.method public final setViewdataBinding(Lcom/join/android/app/mgsim/wufun/databinding/h1;)V
    .locals 0
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/h1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/h1;

    return-void
.end method
