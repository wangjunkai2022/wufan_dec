.class public final Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "FindGameClassfyFragment.kt"

# interfaces
.implements Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1",
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;",
        "",
        "id",
        "",
        "onSelected",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->setSelectedType(I)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getChoiceListData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->showTypeList(I)V

    return-void
.end method
