.class public interface abstract Lcom/join/mgps/rpc/b;
.super Ljava/lang/Object;
.source "RpcAccountClient.java"


# virtual methods
.method public abstract A(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponseGame;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponseGame;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/game_favorites/details/indexv2"
    .end annotation
.end method

.method public abstract B(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/Check/regCodeState"
    .end annotation
.end method

.method public abstract C(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/send/send_mobile_code"
    .end annotation
.end method

.method public abstract D(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/upfile/upload_user_head_portrait"
    .end annotation
.end method

.method public abstract E(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/GameFromBooleanBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/game_favorites/dissubscribe/index"
    .end annotation
.end method

.method public abstract F(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/check_bind_mobile"
    .end annotation
.end method

.method public abstract G(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/modify/first_modify_user_info"
    .end annotation
.end method

.method public abstract H(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/anonymous/first_modify_user_info"
    .end annotation
.end method

.method public abstract I(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/JPushJoinDeviceResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/jpush/getPushStatus"
    .end annotation
.end method

.method public abstract J(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromPopoWinBeanV2;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/game_favorites/asclist/indexv2"
    .end annotation
.end method

.method public abstract K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/AccountResultMainBean;
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
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "rid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/CloudBackupsRecoverListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v16/backup/recover_record?uid={uid}&token={token}&rid={rid}"
    .end annotation
.end method

.method public abstract L(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/tourist/prefect_info/indexv2"
    .end annotation
.end method

.method public abstract M(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/bind_mobile"
    .end annotation
.end method

.method public abstract N(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/register/third_way_register"
    .end annotation
.end method

.method public abstract O(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromPopoWinBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/GameFromPopoWinBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/game_favorites/statelist/index"
    .end annotation
.end method

.method public abstract P(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/GameFromBooleanBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/game_favorites/subscribe/index"
    .end annotation
.end method

.method public abstract Q(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/GameFromBooleanBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/game_favorites/addto/index"
    .end annotation
.end method

.method public abstract R(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/JPushJoinDeviceResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/jpush/joinDevice"
    .end annotation
.end method

.method public abstract S(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/AccountResultMainBean;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/CloudBackupsListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v16/backup/record_list?uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract T(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/send/send_mobile_codev2"
    .end annotation
.end method

.method public abstract U(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/register/mobile_register"
    .end annotation
.end method

.method public abstract V(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/GameFromBooleanBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/game_favorites/del/index"
    .end annotation
.end method

.method public abstract W(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/BluetoothHandleBlackListData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/configure/bluetooth_handle_black_list"
    .end annotation
.end method

.method public abstract X(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/FavoritesCenterData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/game_favorites/usercenter/index"
    .end annotation
.end method

.method public abstract Y(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/modify/find_mobile_pass"
    .end annotation
.end method

.method public abstract Z(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/modify/first_third_way_modify_user_info"
    .end annotation
.end method

.method public abstract a(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultBean;
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
            "Lcom/join/mgps/dto/AccountResultBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/register"
    .end annotation
.end method

.method public abstract a0(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/GameFromBooleanBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/game_favorites/modifyto/index"
    .end annotation
.end method

.method public abstract b(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/logout"
    .end annotation
.end method

.method public abstract c(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/modify/modify_user_infov3"
    .end annotation
.end method

.method public abstract d(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/info/user_info"
    .end annotation
.end method

.method public abstract e(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultBean;
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
            "Lcom/join/mgps/dto/AccountResultBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/login/third_way_login"
    .end annotation
.end method

.method public abstract f(Ljava/util/Map;)Lcom/join/mgps/dto/ResultMainBean;
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
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGame;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/wallet/coupon_game_info"
    .end annotation
.end method

.method public abstract g(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/send/chk_mobile_code"
    .end annotation
.end method

.method public abstract h(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/token/check_token"
    .end annotation
.end method

.method public abstract i(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/send/send_mobile_code"
    .end annotation
.end method

.method public abstract j(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
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
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/AccountResultMainBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/login/chk_token_expired"
    .end annotation
.end method

.method public abstract k(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/login/mobile_login"
    .end annotation
.end method

.method public abstract l(Ljava/util/Map;)Lcom/join/mgps/dto/ResultMainBean;
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
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucher;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/wallet/coupon_info"
    .end annotation
.end method

.method public abstract m(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/JPushJoinDeviceResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/jpush/setPushStatus"
    .end annotation
.end method

.method public abstract n()Lcom/join/mgps/dto/ForumResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ConfigMain;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/config/global_setting/index"
    .end annotation
.end method

.method public abstract o(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/anonymous/first_thrid_way_modify_user_info"
    .end annotation
.end method

.method public abstract p(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/GameFromBooleanBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/game_favorites/create/index"
    .end annotation
.end method

.method public abstract q(Ljava/util/Map;)Lcom/join/mgps/dto/UploadResultMainBean;
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
            "Lcom/join/mgps/dto/UploadResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/rebind_mobile"
    .end annotation
.end method

.method public abstract r(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromPopoWinBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/GameFromPopoWinBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/game_favorites/selflists/index"
    .end annotation
.end method

.method public abstract s(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/tourist/login"
    .end annotation
.end method

.method public abstract t(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/UserHeadPortrait;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/info/get_user_head_portrait"
    .end annotation
.end method

.method public abstract u(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/modify/modify_set_pass"
    .end annotation
.end method

.method public abstract v(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/modify/modify_pass"
    .end annotation
.end method

.method public abstract w(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/CreateVipData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/gen_vip_order/create"
    .end annotation
.end method

.method public abstract x(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/bind_open_id/third_way_id"
    .end annotation
.end method

.method public abstract y(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
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
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/rebind_mobile/chkcode"
    .end annotation
.end method

.method public abstract z(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/GameFromBooleanBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v2/game_favorites/cancel/index"
    .end annotation
.end method
