.class public interface abstract Lcom/join/mgps/rpc/o;
.super Ljava/lang/Object;
.source "RpcPayClient.java"


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/UserPurchaseResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/GET;
        value = "/pay/emulator/get_all_permission?uid={uid}&token={token}"
    .end annotation
.end method
