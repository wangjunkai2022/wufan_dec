.class public Lcom/join/mgps/dto/VideoChaptersBean;
.super Ljava/lang/Object;
.source "VideoChaptersBean.java"


# instance fields
.field private content:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private duration:Ljava/lang/Integer;

.field private id:Ljava/lang/Integer;

.field private isChecked:Z

.field private page:Ljava/lang/Integer;

.field private pic:Ljava/lang/String;

.field private pid:Ljava/lang/Integer;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/VideoChaptersBean;->isChecked:Z

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VideoChaptersBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VideoChaptersBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VideoChaptersBean;->duration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VideoChaptersBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPage()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VideoChaptersBean;->page:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VideoChaptersBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VideoChaptersBean;->pid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VideoChaptersBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/VideoChaptersBean;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/VideoChaptersBean;->isChecked:Z

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VideoChaptersBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VideoChaptersBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VideoChaptersBean;->duration:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VideoChaptersBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setPage(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VideoChaptersBean;->page:Ljava/lang/Integer;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VideoChaptersBean;->pic:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VideoChaptersBean;->pid:Ljava/lang/Integer;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VideoChaptersBean;->title:Ljava/lang/String;

    return-void
.end method
