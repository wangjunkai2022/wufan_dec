.class public final Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "FindGameClassfyFragment.kt"


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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
        "",
        "positon",
        "getSpanSize",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getChoiceListData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getChoiceListData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getChoiceListData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p1}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method
