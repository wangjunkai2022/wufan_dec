.class public final Landroidx/databinding/ViewDataBindingKtx;
.super Ljava/lang/Object;
.source "ViewDataBindingKtx.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ&\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006H\u0007R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/databinding/ViewDataBindingKtx;",
        "",
        "Landroidx/databinding/ViewDataBinding;",
        "viewDataBinding",
        "",
        "localFieldId",
        "Lkotlinx/coroutines/flow/f;",
        "observable",
        "",
        "updateStateFlowRegistration",
        "Landroidx/databinding/CreateWeakListener;",
        "a",
        "Landroidx/databinding/CreateWeakListener;",
        "CREATE_STATE_FLOW_LISTENER",
        "<init>",
        "()V",
        "StateFlowListener",
        "databindingKtx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/databinding/ViewDataBindingKtx;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final a:Landroidx/databinding/CreateWeakListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBindingKtx;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBindingKtx;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBindingKtx;->INSTANCE:Landroidx/databinding/ViewDataBindingKtx;

    .line 2
    sget-object v0, Landroidx/databinding/ViewDataBindingKtx$CREATE_STATE_FLOW_LISTENER$1;->INSTANCE:Landroidx/databinding/ViewDataBindingKtx$CREATE_STATE_FLOW_LISTENER$1;

    sput-object v0, Landroidx/databinding/ViewDataBindingKtx;->a:Landroidx/databinding/CreateWeakListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final updateStateFlowRegistration(Landroidx/databinding/ViewDataBinding;ILkotlinx/coroutines/flow/f;)Z
    .locals 2
    .param p0    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Lkotlinx/coroutines/flow/f<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "viewDataBinding"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->q:Z

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Landroidx/databinding/ViewDataBindingKtx;->a:Landroidx/databinding/CreateWeakListener;

    .line 3
    invoke-virtual {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->Y0(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->q:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->q:Z

    throw p1
.end method
