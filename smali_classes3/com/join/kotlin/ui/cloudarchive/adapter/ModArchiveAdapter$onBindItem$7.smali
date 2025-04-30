.class final Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$7;
.super Ljava/lang/Object;
.source "ModArchiveAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
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
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "run",
        "()V",
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
.field final synthetic $binding:Landroidx/databinding/ViewDataBinding;

.field final synthetic $itemDatax:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$7;->$itemDatax:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$7;->$binding:Landroidx/databinding/ViewDataBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$7;->$itemDatax:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowMoreStatus()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$7;->$binding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/v30;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->E:Landroid/widget/TextView;

    const-string v1, "binding.contentsimpble"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const-string v3, "binding.more"

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-le v4, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$7;->$binding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/v30;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->K:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$7;->$itemDatax:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v0, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    goto :goto_0

    :cond_1
    if-lez v4, :cond_4

    sub-int/2addr v4, v2

    .line 6
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$7;->$binding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/v30;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->K:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$7;->$itemDatax:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v0, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$7;->$binding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/v30;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->K:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$7;->$itemDatax:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v0, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$7;->$binding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/v30;

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/v30;->K:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$7;->$itemDatax:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v0, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    :cond_4
    :goto_0
    return-void
.end method
