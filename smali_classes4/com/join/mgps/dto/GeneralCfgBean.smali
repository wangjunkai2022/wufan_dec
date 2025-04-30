.class public Lcom/join/mgps/dto/GeneralCfgBean;
.super Ljava/lang/Object;
.source "GeneralCfgBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;,
        Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;
    }
.end annotation


# instance fields
.field private memberUrl:Ljava/lang/String;

.field private normalMode:Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;

.field private strongMode:Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemberUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GeneralCfgBean;->memberUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalMode()Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GeneralCfgBean;->normalMode:Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;

    return-object v0
.end method

.method public getStrongMode()Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GeneralCfgBean;->strongMode:Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;

    return-object v0
.end method

.method public setMemberUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GeneralCfgBean;->memberUrl:Ljava/lang/String;

    return-void
.end method

.method public setNormalMode(Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GeneralCfgBean;->normalMode:Lcom/join/mgps/dto/GeneralCfgBean$NormalModeBean;

    return-void
.end method

.method public setStrongMode(Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GeneralCfgBean;->strongMode:Lcom/join/mgps/dto/GeneralCfgBean$StrongModeBean;

    return-void
.end method
