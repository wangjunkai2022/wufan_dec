.class public Lcom/join/mgps/dto/AccountLoginresultData;
.super Ljava/lang/Object;
.source "AccountLoginresultData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private error_code:I

.field private error_msg:Ljava/lang/String;

.field private game_list_permission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/UserPurchaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private is_success:Z

.field private reward:Lcom/join/mgps/dto/RewardBean;

.field private user_info:Lcom/join/mgps/dto/AccountBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError_code()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountLoginresultData;->error_code:I

    return v0
.end method

.method public getError_msg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountLoginresultData;->error_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_list_permission()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/UserPurchaseInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountLoginresultData;->game_list_permission:Ljava/util/List;

    return-object v0
.end method

.method public getReward()Lcom/join/mgps/dto/RewardBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountLoginresultData;->reward:Lcom/join/mgps/dto/RewardBean;

    return-object v0
.end method

.method public getUser_info()Lcom/join/mgps/dto/AccountBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountLoginresultData;->user_info:Lcom/join/mgps/dto/AccountBean;

    return-object v0
.end method

.method public isIs_success()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/AccountLoginresultData;->is_success:Z

    return v0
.end method

.method public is_success()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/AccountLoginresultData;->is_success:Z

    return v0
.end method

.method public setError_code(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountLoginresultData;->error_code:I

    return-void
.end method

.method public setError_msg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountLoginresultData;->error_msg:Ljava/lang/String;

    return-void
.end method

.method public setGame_list_permission(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/UserPurchaseInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountLoginresultData;->game_list_permission:Ljava/util/List;

    return-void
.end method

.method public setIs_success(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/AccountLoginresultData;->is_success:Z

    return-void
.end method

.method public setReward(Lcom/join/mgps/dto/RewardBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountLoginresultData;->reward:Lcom/join/mgps/dto/RewardBean;

    return-void
.end method

.method public setUser_info(Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountLoginresultData;->user_info:Lcom/join/mgps/dto/AccountBean;

    return-void
.end method
