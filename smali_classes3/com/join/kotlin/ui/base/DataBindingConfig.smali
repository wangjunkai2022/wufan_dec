.class public final Lcom/join/kotlin/ui/base/DataBindingConfig;
.super Ljava/lang/Object;
.source "DataBindingConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0016\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0001R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0007\u001a\u0004\u0008\u000b\u0010\tR(\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0014\u001a\u00020\u00138\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/join/kotlin/ui/base/DataBindingConfig;",
        "",
        "",
        "variableId",
        "any",
        "addBindingParam",
        "layout",
        "I",
        "getLayout",
        "()I",
        "vmVariableId",
        "getVmVariableId",
        "Landroid/util/SparseArray;",
        "bindingParms",
        "Landroid/util/SparseArray;",
        "getBindingParms",
        "()Landroid/util/SparseArray;",
        "setBindingParms",
        "(Landroid/util/SparseArray;)V",
        "Landroidx/lifecycle/ViewModel;",
        "stateViewModle",
        "Landroidx/lifecycle/ViewModel;",
        "getStateViewModle",
        "()Landroidx/lifecycle/ViewModel;",
        "<init>",
        "(IILandroidx/lifecycle/ViewModel;)V",
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
.field private bindingParms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layout:I

.field private final stateViewModle:Landroidx/lifecycle/ViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final vmVariableId:I


# direct methods
.method public constructor <init>(IILandroidx/lifecycle/ViewModel;)V
    .locals 1
    .param p3    # Landroidx/lifecycle/ViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stateViewModle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->layout:I

    iput p2, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->vmVariableId:I

    iput-object p3, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->stateViewModle:Landroidx/lifecycle/ViewModel;

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->bindingParms:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final addBindingParam(ILjava/lang/Object;)Lcom/join/kotlin/ui/base/DataBindingConfig;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "any"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->bindingParms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->bindingParms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public final getBindingParms()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->bindingParms:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final getLayout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->layout:I

    return v0
.end method

.method public final getStateViewModle()Landroidx/lifecycle/ViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->stateViewModle:Landroidx/lifecycle/ViewModel;

    return-object v0
.end method

.method public final getVmVariableId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->vmVariableId:I

    return v0
.end method

.method public final setBindingParms(Landroid/util/SparseArray;)V
    .locals 1
    .param p1    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->bindingParms:Landroid/util/SparseArray;

    return-void
.end method
