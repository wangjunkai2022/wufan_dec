.class public final Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;
.super Ljava/lang/Object;
.source "CategoryDetailItemFragment.kt"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCategoryDetailItemFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoryDetailItemFragment.kt\ncom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,270:1\n1#2:271\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2",
        "Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;",
        "",
        "onRefresh",
        "onLoadMore",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getRequestArgs()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setPage(I)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getCategoryPrensenter()Lcom/join/kotlin/presenter/CategoryPrensenter;

    move-result-object v1

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getRequestArgs()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/join/kotlin/presenter/CategoryPrensenter;->loadCategoryData(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
