.class Lcom/join/mgps/rpc/m$b;
.super Landroid/os/AsyncTask;
.source "RpcPapaPayClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/rpc/m;->g(Lcom/join/mgps/dto/PayGameDataRequest;Lcom/join/android/app/common/http/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/join/mgps/dto/PayGameDataRequest;",
        "Lcom/join/mgps/dto/CommentResponse<",
        "Lcom/join/mgps/dto/PaygameResponse;",
        ">;",
        "Lcom/join/mgps/dto/CommentResponse<",
        "Lcom/join/mgps/dto/PaygameResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/http/b;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/rpc/m$b;->a:Lcom/join/android/app/common/http/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/join/mgps/dto/PayGameDataRequest;)Lcom/join/mgps/dto/CommentResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/join/mgps/dto/PayGameDataRequest;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/PaygameResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/payment/buy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDataRequest;->getArgs()Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/join/mgps/Util/n0;->b(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/rpc/m$b$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/rpc/m$b$a;-><init>(Lcom/join/mgps/rpc/m$b;)V

    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentResponse;

    return-object p1
.end method

.method protected b(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/PaygameResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/rpc/m$b;->a:Lcom/join/android/app/common/http/b;

    invoke-interface {v0, p1}, Lcom/join/android/app/common/http/b;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/join/mgps/dto/PayGameDataRequest;

    invoke-virtual {p0, p1}, Lcom/join/mgps/rpc/m$b;->a([Lcom/join/mgps/dto/PayGameDataRequest;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/CommentResponse;

    invoke-virtual {p0, p1}, Lcom/join/mgps/rpc/m$b;->b(Lcom/join/mgps/dto/CommentResponse;)V

    return-void
.end method
