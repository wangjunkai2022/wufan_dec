.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;
.super Ljava/lang/Object;
.source "VipCenterActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->loding_faile:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->loding_layout:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;

    invoke-static {p2, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->access$000(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->loding_faile:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->loding_layout:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
