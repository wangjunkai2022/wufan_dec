.class public interface abstract Lq1/k;
.super Ljava/lang/Object;
.source "IRpcOemClient.java"


# virtual methods
.method public abstract a(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/OemResponse<",
            "Lcom/join/mgps/dto/OemData$GiftGetCdkData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/gift/get_gift"
    .end annotation
.end method

.method public abstract b(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/OemResponse<",
            "Lcom/join/mgps/dto/OemData$GiftDetailData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/forum/gift/gift_detail"
    .end annotation
.end method
