.class public Lcom/join/mgps/dto/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# instance fields
.field private isSelected:Z

.field private isVideo:Z

.field private url:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/ImageInfo;->isSelected:Z

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/ImageInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/dto/ImageInfo;->isSelected:Z

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dto/ImageInfo;->url:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/join/mgps/dto/ImageInfo;->videoUrl:Ljava/lang/String;

    .line 8
    iput-boolean p3, p0, Lcom/join/mgps/dto/ImageInfo;->isVideo:Z

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ImageInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ImageInfo;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isGif()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ImageInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/dto/ImageInfo;->url:Ljava/lang/String;

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ImageInfo;->isSelected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ImageInfo;->isVideo:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ImageInfo;->isSelected:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ImageInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setVideo(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ImageInfo;->isVideo:Z

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ImageInfo;->videoUrl:Ljava/lang/String;

    return-void
.end method
