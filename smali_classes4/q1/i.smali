.class public interface abstract Lq1/i;
.super Ljava/lang/Object;
.source "IRpcLoginClient.java"


# virtual methods
.method public abstract a(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestUserCenterArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/UserCenterBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v4/personal_center/index"
    .end annotation
.end method

.method public abstract b(Lcom/join/mgps/activity/login/ChuanglanRequest;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/activity/login/ChuanglanRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/activity/login/ChuanglanRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v4/login/flash"
    .end annotation
.end method

.method public abstract c(Lcom/join/mgps/activity/login/ChangeNiknameRequest;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/activity/login/ChangeNiknameRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/activity/login/ChangeNiknameRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/dto/AccountresultData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v3/nick_name/perfecting"
    .end annotation
.end method

.method public abstract d(Lcom/join/mgps/activity/login/LoginUserStatuRequest;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/activity/login/LoginUserStatuRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/activity/login/LoginUserStatuRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/activity/login/LoginUserStatuDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v3/member_state/index"
    .end annotation
.end method

.method public abstract e(Lcom/join/mgps/activity/login/LoginjiguangRequest;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/activity/login/LoginjiguangRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/activity/login/LoginjiguangRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v3/login/jpush"
    .end annotation
.end method
