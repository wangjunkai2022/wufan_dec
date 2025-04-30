.class public Lcom/join/mgps/dto/GameListItemBean;
.super Lcom/join/mgps/dto/CollectionBeanSub;
.source "GameListItemBean.java"


# instance fields
.field bg_color_tag_type:I

.field private comment_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation
.end field

.field comment_score_switch:I

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private game_describe_second:Ljava/lang/String;

.field game_score:Lcom/join/mgps/dto/GameScore;

.field itemType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dto/GameListItemBean;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    return-void
.end method


# virtual methods
.method public getBg_color_tag_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameListItemBean;->bg_color_tag_type:I

    return v0
.end method

.method public getComment_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListItemBean;->comment_list:Ljava/util/List;

    return-object v0
.end method

.method public getComment_score_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameListItemBean;->comment_score_switch:I

    return v0
.end method

.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListItemBean;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public getGame_describe_second()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListItemBean;->game_describe_second:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_score()Lcom/join/mgps/dto/GameScore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListItemBean;->game_score:Lcom/join/mgps/dto/GameScore;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameListItemBean;->itemType:I

    return v0
.end method

.method public setBg_color_tag_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameListItemBean;->bg_color_tag_type:I

    return-void
.end method

.method public setComment_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListItemBean;->comment_list:Ljava/util/List;

    return-void
.end method

.method public setComment_score_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameListItemBean;->comment_score_switch:I

    return-void
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListItemBean;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public setGame_describe_second(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListItemBean;->game_describe_second:Ljava/lang/String;

    return-void
.end method

.method public setGame_score(Lcom/join/mgps/dto/GameScore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListItemBean;->game_score:Lcom/join/mgps/dto/GameScore;

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameListItemBean;->itemType:I

    return-void
.end method
