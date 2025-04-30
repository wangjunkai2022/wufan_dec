.class public Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;
.super Ljava/lang/Object;
.source "ArchiveNumDataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ArchiveNumDataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataInfoBean"
.end annotation


# instance fields
.field private archiveCoin:I

.field private archiveNum:I

.field private bgImg:Ljava/lang/String;

.field private hasNoComment:I

.field private marketNum:I

.field private pid:I

.field private title:Ljava/lang/String;

.field private vipLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArchiveCoin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->archiveCoin:I

    return v0
.end method

.method public getArchiveNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->archiveNum:I

    return v0
.end method

.method public getBgImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->bgImg:Ljava/lang/String;

    return-object v0
.end method

.method public getHasNoComment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->hasNoComment:I

    return v0
.end method

.method public getMarketNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->marketNum:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->pid:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVipLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->vipLink:Ljava/lang/String;

    return-object v0
.end method

.method public setArchiveCoin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->archiveCoin:I

    return-void
.end method

.method public setArchiveNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->archiveNum:I

    return-void
.end method

.method public setBgImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->bgImg:Ljava/lang/String;

    return-void
.end method

.method public setHasNoComment(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->hasNoComment:I

    return-void
.end method

.method public setMarketNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->marketNum:I

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->pid:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setVipLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->vipLink:Ljava/lang/String;

    return-void
.end method
