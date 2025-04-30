.class Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;
.super Ljava/lang/Object;
.source "LuckDrawBasPopupWindow.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->getHistory(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;I)V
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
        "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

.field final synthetic val$adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->val$adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

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
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_7

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget v0, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->page:I

    .line 3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;->getMissing_prize()Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    move-result-object p2

    .line 5
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    invoke-direct {v0, v1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    .line 6
    iput v2, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->type:I

    .line 7
    iput-object p2, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->object:Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, v1}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->setHasAddAddress(Z)V

    .line 9
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;->getRecord_list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;->getRecord_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;->getRecord_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 12
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;

    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    invoke-direct {v0, v3}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V

    .line 13
    iput v2, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->type:I

    .line 14
    iput-object p2, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->object:Ljava/lang/Object;

    .line 15
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->val$adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    goto :goto_2

    .line 19
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 21
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_7

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->nullHistory:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->historyTitle:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method
