.class final Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$adapterx$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ModgameCloudListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;",
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;",
        "invoke",
        "()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$adapterx$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$adapterx$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$adapterx$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveTag()Lcom/join/mgps/dto/ModGameArchiveTagBean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$adapterx$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveTag()Lcom/join/mgps/dto/ModGameArchiveTagBean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v4, "\u7cbe\u9009"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-direct {v0, v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;-><init>(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;Z)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$adapterx$2;->invoke()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    move-result-object v0

    return-object v0
.end method
