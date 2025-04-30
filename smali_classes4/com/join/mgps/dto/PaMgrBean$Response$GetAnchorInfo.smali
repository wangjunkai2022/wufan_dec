.class public Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;
.super Ljava/lang/Object;
.source "PaMgrBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetAnchorInfo"
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private charm:I

.field private fans:I

.field private intro:Ljava/lang/String;

.field private isFollowed:Z

.field private nickname:Ljava/lang/String;

.field private svipLevel:I

.field private weekViewer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaMgrBean$Response$WeekViewerBean;",
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
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCharm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->charm:I

    return v0
.end method

.method public getFans()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->fans:I

    return v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getSvipLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->svipLevel:I

    return v0
.end method

.method public getWeekViewer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaMgrBean$Response$WeekViewerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->weekViewer:Ljava/util/List;

    return-object v0
.end method

.method public isFollowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->isFollowed:Z

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCharm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->charm:I

    return-void
.end method

.method public setFans(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->fans:I

    return-void
.end method

.method public setFollowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->isFollowed:Z

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->intro:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setSvipLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->svipLevel:I

    return-void
.end method

.method public setWeekViewer(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaMgrBean$Response$WeekViewerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;->weekViewer:Ljava/util/List;

    return-void
.end method
