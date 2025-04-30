.class public Lcom/join/mgps/dto/ConfigData;
.super Ljava/lang/Object;
.source "ConfigData.java"


# instance fields
.field anti_addiction_switch:Z

.field b_side:Z

.field client_ip:Ljava/lang/String;

.field download_game_switch:Z

.field launch_game_switch:Z

.field non_online_user_switch:Z

.field real_name_black_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClient_ip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->client_ip:Ljava/lang/String;

    return-object v0
.end method

.method public getReal_name_black_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->real_name_black_list:Ljava/util/List;

    return-object v0
.end method

.method public isAnti_addiction_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->anti_addiction_switch:Z

    return v0
.end method

.method public isB_side()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->b_side:Z

    return v0
.end method

.method public isDownload_game_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->download_game_switch:Z

    return v0
.end method

.method public isLaunch_game_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->launch_game_switch:Z

    return v0
.end method

.method public isNon_online_user_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->non_online_user_switch:Z

    return v0
.end method

.method public setAnti_addiction_switch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->anti_addiction_switch:Z

    return-void
.end method

.method public setB_side(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->b_side:Z

    return-void
.end method

.method public setClient_ip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->client_ip:Ljava/lang/String;

    return-void
.end method

.method public setDownload_game_switch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->download_game_switch:Z

    return-void
.end method

.method public setLaunch_game_switch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->launch_game_switch:Z

    return-void
.end method

.method public setNon_online_user_switch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->non_online_user_switch:Z

    return-void
.end method

.method public setReal_name_black_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->real_name_black_list:Ljava/util/List;

    return-void
.end method
