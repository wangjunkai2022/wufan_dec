.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;
.super Ljava/lang/Object;
.source "VipSpecialZoneActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->getGamelist()V
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
        "Ljava/util/List<",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

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
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget v0, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7
    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->businessList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->t1()V

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 11
    iget v3, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 12
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget v0, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    .line 16
    invoke-static {p2, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->access$200(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Ljava/util/List;)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    return-void

    .line 18
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p2

    const/16 v0, 0x1f4

    if-ne p2, v0, :cond_5

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 20
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    return-void
.end method
