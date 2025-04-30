.class Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;
.super Ljava/lang/Object;
.source "MyGameGuesslikeActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->getDownloadRecomedData()V
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
        "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;->this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;

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
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;->this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;

    invoke-virtual {p1}, Lcom/BaseAppCompatActivity;->showFailLayoutBase()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;->this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->showGuesslike(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;->this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;

    invoke-virtual {p1}, Lcom/BaseAppCompatActivity;->showNoDataLayoutBase()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;->this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;

    invoke-virtual {p1}, Lcom/BaseAppCompatActivity;->showFailLayoutBase()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;->this$0:Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;

    invoke-virtual {p1}, Lcom/BaseAppCompatActivity;->showFailLayoutBase()V

    :goto_0
    return-void
.end method
