.class final Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$6;
.super Ljava/lang/Object;
.source "ModArchiveAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onClick",
        "(Landroid/view/View;)V",
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
.method constructor <init>(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$6;->$binding:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$6;->$itemDatax:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$6;->$binding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/x30;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/x30;->K:Landroid/widget/TextView;

    const-string v0, "binding.more"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "\u5c55\u5f00"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "binding.contentsimpble"

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$6;->$itemDatax:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$6;->$binding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/x30;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/x30;->E:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$6;->$binding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/x30;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/x30;->K:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u6536\u8d77"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$6;->$binding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/x30;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/x30;->K:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$6;->$itemDatax:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$6;->$binding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/x30;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/x30;->E:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void
.end method
