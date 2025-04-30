.class public abstract Lcom/join/kotlin/ui/base/BasViewModleActivity;
.super Lcom/BaseAppCompatActivity;
.source "BasViewModleActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008!\u0010\"J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0004J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014J\u0008\u0010\u0008\u001a\u00020\u0006H&J\u0008\u0010\n\u001a\u00020\tH&J\'\u0010\u000f\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u000c*\u00020\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\'\u0010\u0011\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u000c*\u00020\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0010R\u001d\u0010\u0017\u001a\u00020\u00128B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001d\u0010 \u001a\u00020\u00128B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0014\u001a\u0004\u0008\u001f\u0010\u0016\u00a8\u0006#"
    }
    d2 = {
        "Lcom/join/kotlin/ui/base/BasViewModleActivity;",
        "Lcom/BaseAppCompatActivity;",
        "Landroidx/databinding/ViewDataBinding;",
        "getViewBinding",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "initViewModel",
        "Lcom/join/kotlin/ui/base/DataBindingConfig;",
        "getDataBindingConfig",
        "Landroidx/lifecycle/ViewModel;",
        "T",
        "Ljava/lang/Class;",
        "modelClass",
        "getActivityScopeViewModel",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "getApplicationScopeViewModel",
        "Landroidx/lifecycle/ViewModelProvider;",
        "mActivityProvider$delegate",
        "Lkotlin/Lazy;",
        "getMActivityProvider",
        "()Landroidx/lifecycle/ViewModelProvider;",
        "mActivityProvider",
        "dataBindingx",
        "Landroidx/databinding/ViewDataBinding;",
        "getDataBindingx",
        "()Landroidx/databinding/ViewDataBinding;",
        "setDataBindingx",
        "(Landroidx/databinding/ViewDataBinding;)V",
        "mApplicationProvider$delegate",
        "getMApplicationProvider",
        "mApplicationProvider",
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
.field private dataBindingx:Landroidx/databinding/ViewDataBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mActivityProvider$delegate:Lkotlin/Lazy;

.field private final mApplicationProvider$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/base/BasViewModleActivity$mActivityProvider$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/base/BasViewModleActivity$mActivityProvider$2;-><init>(Lcom/join/kotlin/ui/base/BasViewModleActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/base/BasViewModleActivity;->mActivityProvider$delegate:Lkotlin/Lazy;

    .line 3
    new-instance v0, Lcom/join/kotlin/ui/base/BasViewModleActivity$mApplicationProvider$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/base/BasViewModleActivity$mApplicationProvider$2;-><init>(Lcom/join/kotlin/ui/base/BasViewModleActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/base/BasViewModleActivity;->mApplicationProvider$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMActivityProvider()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/ui/base/BasViewModleActivity;->mActivityProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider;

    return-object v0
.end method

.method private final getMApplicationProvider()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/ui/base/BasViewModleActivity;->mApplicationProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider;

    return-object v0
.end method


# virtual methods
.method protected getActivityScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/base/BasViewModleActivity;->getMActivityProvider()Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    const-string v0, "mActivityProvider.get(modelClass)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/base/BasViewModleActivity;->getMApplicationProvider()Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    const-string v0, "mApplicationProvider.get(modelClass)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract getDataBindingConfig()Lcom/join/kotlin/ui/base/DataBindingConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getDataBindingx()Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/base/BasViewModleActivity;->dataBindingx:Landroidx/databinding/ViewDataBinding;

    return-object v0
.end method

.method protected final getViewBinding()Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/base/BasViewModleActivity;->dataBindingx:Landroidx/databinding/ViewDataBinding;

    return-object v0
.end method

.method public abstract initViewModel()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/base/BasViewModleActivity;->initViewModel()V

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/base/BasViewModleActivity;->getDataBindingConfig()Lcom/join/kotlin/ui/base/DataBindingConfig;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/join/kotlin/ui/base/DataBindingConfig;->getLayout()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/kotlin/ui/base/BasViewModleActivity;->dataBindingx:Landroidx/databinding/ViewDataBinding;

    const-string v1, "dataBinding"

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/kotlin/ui/base/DataBindingConfig;->getVmVariableId()I

    move-result v1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/base/DataBindingConfig;->getStateViewModle()Landroidx/lifecycle/ViewModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 8
    invoke-virtual {p1}, Lcom/join/kotlin/ui/base/DataBindingConfig;->getBindingParms()Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ltz v2, :cond_0

    .line 11
    :goto_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setDataBindingx(Landroidx/databinding/ViewDataBinding;)V
    .locals 0
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/base/BasViewModleActivity;->dataBindingx:Landroidx/databinding/ViewDataBinding;

    return-void
.end method
