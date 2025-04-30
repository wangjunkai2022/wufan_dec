.class public interface abstract Lcom/join/mgps/rpc/f;
.super Ljava/lang/Object;
.source "RpcConsoleGameClient.java"


# virtual methods
.method public abstract a(Ljava/util/Map;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/purchased"
    .end annotation
.end method
