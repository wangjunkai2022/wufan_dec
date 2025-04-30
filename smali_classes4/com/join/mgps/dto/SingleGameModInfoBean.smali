.class public Lcom/join/mgps/dto/SingleGameModInfoBean;
.super Ljava/lang/Object;
.source "SingleGameModInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private downUrl:Ljava/lang/String;

.field private extUrl:Ljava/lang/String;

.field private extVer:Ljava/lang/String;

.field private isIncompatible:Z

.field private status:I

.field private version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/SingleGameModInfoBean;->status:I

    return-void
.end method


# virtual methods
.method public getDownUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameModInfoBean;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameModInfoBean;->extUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameModInfoBean;->extVer:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SingleGameModInfoBean;->status:I

    return v0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameModInfoBean;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public isIncompatible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/SingleGameModInfoBean;->isIncompatible:Z

    return v0
.end method

.method public setDownUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameModInfoBean;->downUrl:Ljava/lang/String;

    return-void
.end method

.method public setExtUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameModInfoBean;->extUrl:Ljava/lang/String;

    return-void
.end method

.method public setExtVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameModInfoBean;->extVer:Ljava/lang/String;

    return-void
.end method

.method public setIncompatible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/SingleGameModInfoBean;->isIncompatible:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SingleGameModInfoBean;->status:I

    return-void
.end method

.method public setVersion(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameModInfoBean;->version:Ljava/lang/Integer;

    return-void
.end method
