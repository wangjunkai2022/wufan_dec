.class final Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$onCreateView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ChoiceArchiveDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChoiceArchiveDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChoiceArchiveDialog.kt\ncom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$onCreateView$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n1849#2,2:111\n*E\n*S KotlinDebug\n*F\n+ 1 ChoiceArchiveDialog.kt\ncom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$onCreateView$2\n*L\n61#1,2:111\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "",
        "viewId",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "item",
        "position",
        "",
        "invoke",
        "(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)V",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$onCreateView$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$onCreateView$2;->invoke(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)V
    .locals 2
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$onCreateView$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$onCreateView$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->getArchiveList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const-string p2, "viewModle.archive.value!!"

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 5
    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$onCreateView$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p3, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setCheckStatus(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p3, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setCheckStatus(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$onCreateView$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    invoke-static {p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;->access$getChoicedFun$p(Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$onCreateView$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog$onCreateView$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
