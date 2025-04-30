.class Lcom/join/mgps/rpc/m$a;
.super Landroid/os/AsyncTask;
.source "RpcPapaPayClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/rpc/m;->f(Lcom/join/mgps/dto/PayCenterOrderRequest;Lcom/join/android/app/common/http/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/join/mgps/dto/PayCenterOrderRequest;",
        "Ljava/lang/Object;",
        "Lcom/join/mgps/dto/PayCenterOrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/http/b;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/rpc/m$a;->a:Lcom/join/android/app/common/http/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/join/mgps/dto/PayCenterOrderRequest;)Lcom/join/mgps/dto/PayCenterOrderResponse;
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/rpc/m;->d(Lcom/join/mgps/dto/PayCenterOrderRequest;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1, v0}, Lcom/join/mgps/Util/n0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/join/mgps/dto/PayCenterOrderResponse;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/join/mgps/dto/PayCenterOrderResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected b(Lcom/join/mgps/dto/PayCenterOrderResponse;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/rpc/m$a;->a:Lcom/join/android/app/common/http/b;

    invoke-interface {v0, p1}, Lcom/join/android/app/common/http/b;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {p0, p1}, Lcom/join/mgps/rpc/m$a;->a([Lcom/join/mgps/dto/PayCenterOrderRequest;)Lcom/join/mgps/dto/PayCenterOrderResponse;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/PayCenterOrderResponse;

    invoke-virtual {p0, p1}, Lcom/join/mgps/rpc/m$a;->b(Lcom/join/mgps/dto/PayCenterOrderResponse;)V

    return-void
.end method
