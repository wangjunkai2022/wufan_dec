.class Lcom/join/android/app/common/servcie/DownloadBaseActivity$g;
.super Ljava/lang/Object;
.source "DownloadBaseActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/servcie/DownloadBaseActivity;->getDetailData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResultMainBean<",
        "Ljava/util/List<",
        "Lcom/join/mgps/dto/DetailResultBean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/servcie/DownloadBaseActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/servcie/DownloadBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$g;->a:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

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
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetailResultBean;",
            ">;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetailResultBean;",
            ">;>;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetailResultBean;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    .line 6
    iget-object p2, p0, Lcom/join/android/app/common/servcie/DownloadBaseActivity$g;->a:Lcom/join/android/app/common/servcie/DownloadBaseActivity;

    invoke-virtual {p2, p1}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    :cond_1
    :goto_0
    return-void
.end method
