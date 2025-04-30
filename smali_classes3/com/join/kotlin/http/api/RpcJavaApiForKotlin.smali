.class public interface abstract Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
.super Ljava/lang/Object;
.source "RpcJavaApiForKotlin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0019\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J+\u0010\t\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u00022\u000c\u0008\u0001\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ/\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00080\u00022\u000e\u0008\u0001\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\nJ)\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00022\u000e\u0008\u0001\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\nJ#\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00022\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0010H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;",
        "",
        "Lcom/join/mgps/dto/ResponseModel;",
        "",
        "getUserData",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/join/mgps/dto/RequestModel;",
        "requestMain",
        "",
        "getRankingList",
        "(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/join/mgps/dto/RequestGameIdArgs;",
        "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;",
        "getMustplayDatas",
        "Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;",
        "getBtReginDatas",
        "Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;",
        "",
        "unbindThirdfParty",
        "(Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract getBtReginDatas(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/btGame/areaList"
    .end annotation
.end method

.method public abstract getMustplayDatas(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/mustPlay/gameList"
    .end annotation
.end method

.method public abstract getRankingList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "*>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "*>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/special_game_board/ranking_game_list"
    .end annotation
.end method

.method public abstract getUserData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = ""
    .end annotation
.end method

.method public abstract unbindThirdfParty(Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/thirdParty/account/unbind"
    .end annotation
.end method
