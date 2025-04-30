.class public Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumProfilePostsData"
.end annotation


# instance fields
.field private posts_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation
.end field

.field private user_info:Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosts_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;->posts_list:Ljava/util/List;

    return-object v0
.end method

.method public getUser_info()Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;->user_info:Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;

    return-object v0
.end method

.method public setPosts_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;->posts_list:Ljava/util/List;

    return-void
.end method

.method public setUser_info(Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;->user_info:Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;

    return-void
.end method
