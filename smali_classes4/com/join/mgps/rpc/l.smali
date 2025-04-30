.class public interface abstract Lcom/join/mgps/rpc/l;
.super Ljava/lang/Object;
.source "RpcOemClient.java"


# virtual methods
.method public abstract a(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/OemResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "oid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/OemResponse<",
            "Lcom/join/mgps/dto/OemData$GiftGetCdkData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/gift/get_gift?uid={uid}&token={token}&oid={oid}"
    .end annotation
.end method

.method public abstract b(ILjava/lang/String;)Lcom/join/mgps/dto/OemResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "oid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/OemResponse<",
            "Lcom/join/mgps/dto/OemData$GiftDetailData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/gift/gift_detail?uid={uid}&oid={oid}"
    .end annotation
.end method
