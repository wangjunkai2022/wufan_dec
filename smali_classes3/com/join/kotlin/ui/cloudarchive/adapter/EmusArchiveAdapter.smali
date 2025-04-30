.class public final Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;
.super Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
.source "EmusArchiveAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter<",
        "Lcom/join/mgps/dto/CloudListDataBean;",
        "Landroidx/databinding/ViewDataBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008-\u0010.J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\"\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\"\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014R\u0019\u0010\u000e\u001a\u00020\u00048\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R!\u0010\u0014\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0019\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u0019\u0010&\u001a\u00020\u00048\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u000f\u001a\u0004\u0008\'\u0010\u0011R\u0019\u0010)\u001a\u00020(8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\u00a8\u0006/"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;",
        "Lcom/join/mgps/dto/CloudListDataBean;",
        "Landroidx/databinding/ViewDataBinding;",
        "",
        "viewType",
        "getLayoutResId",
        "binding",
        "item",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "",
        "onBindItem",
        "onBindItemPayloads",
        "width",
        "I",
        "getWidth",
        "()I",
        "Landroid/view/Display;",
        "kotlin.jvm.PlatformType",
        "defaultDisplay",
        "Landroid/view/Display;",
        "getDefaultDisplay",
        "()Landroid/view/Display;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;",
        "listener",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;",
        "getListener",
        "()Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;",
        "setListener",
        "(Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V",
        "height",
        "getHeight",
        "",
        "ratio",
        "F",
        "getRatio",
        "()F",
        "<init>",
        "(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V",
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
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final defaultDisplay:Landroid/view/Display;

.field private final height:I

.field private listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ratio:F

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    .line 2
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    const-string p2, "(context as Activity).windowManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->defaultDisplay:Landroid/view/Display;

    const-string p2, "defaultDisplay"

    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->width:I

    .line 4
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->height:I

    if-le v0, p1, :cond_0

    int-to-float p2, v0

    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    int-to-float p2, v0

    div-float p2, p1, p2

    .line 5
    :goto_0
    iput p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->ratio:F

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->defaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->height:I

    return v0
.end method

.method protected getLayoutResId(I)I
    .locals 0

    const p1, 0x7f0c01ce

    return p1
.end method

.method public final getListener()Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    return-object v0
.end method

.method public final getRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->ratio:F

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->width:I

    return v0
.end method

.method protected onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/join/mgps/dto/CloudListDataBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "binding"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p3, p1, Lcom/join/android/app/mgsim/wufun/databinding/je;

    if-eqz p3, :cond_0

    .line 3
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/je;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/je;->i1(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 4
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/je;->h1(Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/join/mgps/dto/CloudListDataBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Lcom/join/mgps/dto/CloudListDataBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "binding"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p3, p1, Lcom/join/android/app/mgsim/wufun/databinding/je;

    if-eqz p3, :cond_0

    .line 3
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/je;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/je;->i1(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 4
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/je;->h1(Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Lcom/join/mgps/dto/CloudListDataBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public final setListener(Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    return-void
.end method
