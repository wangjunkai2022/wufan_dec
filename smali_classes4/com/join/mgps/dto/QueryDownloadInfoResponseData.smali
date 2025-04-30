.class public Lcom/join/mgps/dto/QueryDownloadInfoResponseData;
.super Ljava/lang/Object;
.source "QueryDownloadInfoResponseData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actualSize:J

.field private btnStatus:Ljava/lang/String;

.field private downloadHTML:Ljava/lang/String;

.field private downloadURL:Ljava/lang/String;

.field private forceShow:Z

.field private gameId:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private resourceSize:J

.field private resourceURL:Ljava/lang/String;

.field private selectedNextTips:Z

.field private selectedUserProtocol:Z

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private userProtocolTxt:Ljava/lang/String;

.field private userProtocolURL:Ljava/lang/String;

.field private ver:Ljava/lang/String;

.field private ver_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->actualSize:J

    return-wide v0
.end method

.method public getBtnStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->btnStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadHTML()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->downloadHTML:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->downloadURL:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->resourceSize:J

    return-wide v0
.end method

.method public getResourceURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->resourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProtocolTxt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->userProtocolTxt:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProtocolURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->userProtocolURL:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public isForceShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->forceShow:Z

    return v0
.end method

.method public isSelectedNextTips()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->selectedNextTips:Z

    return v0
.end method

.method public isSelectedUserProtocol()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->selectedUserProtocol:Z

    return v0
.end method

.method public setActualSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->actualSize:J

    return-void
.end method

.method public setBtnStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->btnStatus:Ljava/lang/String;

    return-void
.end method

.method public setDownloadHTML(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->downloadHTML:Ljava/lang/String;

    return-void
.end method

.method public setDownloadURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->downloadURL:Ljava/lang/String;

    return-void
.end method

.method public setForceShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->forceShow:Z

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->gameName:Ljava/lang/String;

    return-void
.end method

.method public setResourceSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->resourceSize:J

    return-void
.end method

.method public setResourceURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->resourceURL:Ljava/lang/String;

    return-void
.end method

.method public setSelectedNextTips(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->selectedNextTips:Z

    return-void
.end method

.method public setSelectedUserProtocol(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->selectedUserProtocol:Z

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->title:Ljava/lang/String;

    return-void
.end method

.method public setUserProtocolTxt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->userProtocolTxt:Ljava/lang/String;

    return-void
.end method

.method public setUserProtocolURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->userProtocolURL:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->ver_name:Ljava/lang/String;

    return-void
.end method
