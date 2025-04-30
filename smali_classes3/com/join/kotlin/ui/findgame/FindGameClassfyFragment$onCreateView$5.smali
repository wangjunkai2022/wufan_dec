.class public final Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$5;
.super Ljava/lang/Object;
.source "FindGameClassfyFragment.kt"

# interfaces
.implements Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;


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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$5",
        "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;",
        "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
        "type",
        "",
        "onItemselected",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$5;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemselected(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 3
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$5;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$5;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getSelectedType()I

    move-result v1

    const-string v2, "typeId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    move-result v1

    const-string v2, "tagId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tagName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$5;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
