.class public Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumUserFavoritesData"
.end annotation


# instance fields
.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private fav_time:Ljava/lang/String;

.field private game:Lcom/join/mgps/dto/CollectionBeanSub;

.field private post:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public getFav_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->fav_time:Ljava/lang/String;

    return-object v0
.end method

.method public getGame()Lcom/join/mgps/dto/CollectionBeanSub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->game:Lcom/join/mgps/dto/CollectionBeanSub;

    return-object v0
.end method

.method public getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->post:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->type:I

    return v0
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public setFav_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->fav_time:Ljava/lang/String;

    return-void
.end method

.method public setGame(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->game:Lcom/join/mgps/dto/CollectionBeanSub;

    return-void
.end method

.method public setPost(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->post:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->type:I

    return-void
.end method
