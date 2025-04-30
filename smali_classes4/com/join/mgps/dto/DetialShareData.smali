.class public Lcom/join/mgps/dto/DetialShareData;
.super Ljava/lang/Object;
.source "DetialShareData.java"


# instance fields
.field private jump_info:Lcom/join/mgps/dto/BannerBean;

.field private share_config:Ljava/lang/String;

.field private share_switch:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJump_info()Lcom/join/mgps/dto/BannerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetialShareData;->jump_info:Lcom/join/mgps/dto/BannerBean;

    return-object v0
.end method

.method public getShare_config()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetialShareData;->share_config:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetialShareData;->share_switch:I

    return v0
.end method

.method public setJump_info(Lcom/join/mgps/dto/BannerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetialShareData;->jump_info:Lcom/join/mgps/dto/BannerBean;

    return-void
.end method

.method public setShare_config(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetialShareData;->share_config:Ljava/lang/String;

    return-void
.end method

.method public setShare_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetialShareData;->share_switch:I

    return-void
.end method
