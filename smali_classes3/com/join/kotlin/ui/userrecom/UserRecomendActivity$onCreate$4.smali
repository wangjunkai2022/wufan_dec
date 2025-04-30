.class final Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$4;
.super Ljava/lang/Object;
.source "UserRecomendActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Ljava/util/List<",
        "+",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserRecomendActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserRecomendActivity.kt\ncom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,171:1\n1849#2,2:172\n*E\n*S KotlinDebug\n*F\n+ 1 UserRecomendActivity.kt\ncom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$4\n*L\n76#1,2:172\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u00020\u00052&\u0010\u0004\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0001 \u0003*\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Lcom/join/mgps/dto/ResponseModel;",
        "",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onChanged",
        "(Lcom/join/mgps/dto/ResponseModel;)V",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$4;->this$0:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/join/mgps/dto/ResponseModel;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "it.data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 5
    new-instance v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v3, v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$4;->this$0:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;->getViewModle()Lcom/join/kotlin/ui/userrecom/RecomViewModle;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;->updateDowState(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$4;->this$0:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;->getViewModle()Lcom/join/kotlin/ui/userrecom/RecomViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/userrecom/RecomViewModle;->getShowDataList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/ArrayList;

    new-instance v8, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$4;->this$0:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;->getAdapter()Lcom/join/kotlin/ui/userrecom/UserRecomendAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$4;->onChanged(Lcom/join/mgps/dto/ResponseModel;)V

    return-void
.end method
