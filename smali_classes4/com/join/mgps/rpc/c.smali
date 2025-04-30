.class public interface abstract Lcom/join/mgps/rpc/c;
.super Ljava/lang/Object;
.source "RpcArchiveClient.java"


# virtual methods
.method public abstract a(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveEvaluteDataBean;
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
            "Lcom/join/mgps/dto/ArchiveEvaluteDataBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/market/commentArchive"
    .end annotation
.end method

.method public abstract b(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveResponseMain;
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
            "Lcom/join/mgps/dto/ArchiveResponseMain<",
            "Lcom/join/mgps/dto/ArchiveResponseMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/market/deleteArchive "
    .end annotation
.end method

.method public abstract c(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveResponseMain;
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
            "Lcom/join/mgps/dto/ArchiveResponseMain<",
            "Lcom/join/mgps/dto/ArchiveResponseMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud/deleteArchive"
    .end annotation
.end method

.method public abstract d(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveDownDataBean;
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
            "Lcom/join/mgps/dto/ArchiveDownDataBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/market/downloadArchive"
    .end annotation
.end method

.method public abstract e(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveResponseMain;
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
            "Lcom/join/mgps/dto/ArchiveResponseMain<",
            "Lcom/join/mgps/dto/ArchiveResponseMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/market/deleteMyBuy"
    .end annotation
.end method

.method public abstract f(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveNumDataBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ArchiveNumDataBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud/archiveStat"
    .end annotation
.end method

.method public abstract g(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveShopDataBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ArchiveShopDataBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/market/archiveListV2"
    .end annotation
.end method

.method public abstract h(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveDataBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ArchiveDataBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud/archiveList"
    .end annotation
.end method

.method public abstract i(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveShopDataBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ArchiveShopDataBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/market/myBuyArchiveV2"
    .end annotation
.end method
