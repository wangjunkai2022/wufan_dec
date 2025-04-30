.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;
.super Ljava/lang/Object;
.source "VipCenterActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity;->startScratchPrize()V
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
        "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

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
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->isstruckting:Z

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->setLastPrize(Lcom/join/mgps/activity/vipzone/bean/PrizeBean;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->setCount(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 8
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->isstruckting:Z

    :cond_1
    :goto_0
    return-void
.end method
