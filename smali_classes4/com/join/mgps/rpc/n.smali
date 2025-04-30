.class public interface abstract Lcom/join/mgps/rpc/n;
.super Ljava/lang/Object;
.source "RpcPawalletClient.java"


# virtual methods
.method public abstract a(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;
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
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/AccountGetVoucherResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/wallet/coupon_get"
    .end annotation
.end method

.method public abstract b(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;
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
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/ResultMyVoucherBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/wallet/coupon_recommend"
    .end annotation
.end method

.method public abstract c(Ljava/util/Map;)Lcom/join/mgps/dto/PapayWalletResultMain;
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
            "Lcom/join/mgps/dto/PapayWalletResultMain;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/wallet/red_envelope_info"
    .end annotation
.end method

.method public abstract d(Ljava/util/Map;)Lcom/join/mgps/dto/PapayWalletResultMain;
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
            "Lcom/join/mgps/dto/PapayWalletResultMain;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/wallet/wallet_info"
    .end annotation
.end method

.method public abstract e(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;
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
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/AccountPaBiBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/wallet/wallet_welcome"
    .end annotation
.end method

.method public abstract f(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;
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
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/ResultMyVoucherGameBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/wallet/coupon_game_info"
    .end annotation
.end method

.method public abstract g(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;
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
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/PayActivityConfig;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/wallet/pay_rebate_config"
    .end annotation
.end method

.method public abstract l(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;
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
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/ResultMyVoucherBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/wallet/coupon_info"
    .end annotation
.end method
