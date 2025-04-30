.class final Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$handler$1;
.super Ljava/lang/Object;
.source "CategoryDetailItemFragment.kt"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroid/os/Message;",
        "it",
        "",
        "handleMessage",
        "(Landroid/os/Message;)Z",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$handler$1;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$handler$1;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$handler$1;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getCategoryPrensenter()Lcom/join/kotlin/presenter/CategoryPrensenter;

    move-result-object p1

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$handler$1;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$handler$1;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getRequestArgs()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/presenter/CategoryPrensenter;->loadCategoryData(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
