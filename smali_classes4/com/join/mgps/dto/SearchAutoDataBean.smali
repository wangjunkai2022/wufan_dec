.class public Lcom/join/mgps/dto/SearchAutoDataBean;
.super Ljava/lang/Object;
.source "SearchAutoDataBean.java"


# instance fields
.field private crc_sign_id:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private isHistory:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchAutoDataBean;->crc_sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchAutoDataBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchAutoDataBean;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIsHistory()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/SearchAutoDataBean;->isHistory:Z

    return v0
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchAutoDataBean;->crc_sign_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchAutoDataBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchAutoDataBean;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setIsHistory(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/SearchAutoDataBean;->isHistory:Z

    return-void
.end method
