.class Lcom/join/mgps/rpc/impl/h$a;
.super Ljava/lang/Object;
.source "RpcGameClientImpl.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/rpc/impl/h;->I(Lcom/join/mgps/dto/RequestModel;Ll1/h;)V
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
.field final synthetic a:Ll1/h;

.field final synthetic b:Lcom/join/mgps/rpc/impl/h;


# direct methods
.method constructor <init>(Lcom/join/mgps/rpc/impl/h;Ll1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/rpc/impl/h$a;->b:Lcom/join/mgps/rpc/impl/h;

    iput-object p2, p0, Lcom/join/mgps/rpc/impl/h$a;->a:Ll1/h;

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
    iget-object p1, p0, Lcom/join/mgps/rpc/impl/h$a;->a:Ll1/h;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ll1/h;->a(Ljava/lang/Throwable;)V

    :cond_0
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

    .line 1
    iget-object p1, p0, Lcom/join/mgps/rpc/impl/h$a;->a:Ll1/h;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ResponseModel;

    invoke-interface {p1, p2}, Ll1/h;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
