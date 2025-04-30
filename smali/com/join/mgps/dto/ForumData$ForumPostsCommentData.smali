.class public Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumPostsCommentData"
.end annotation


# instance fields
.field private error_type:I

.field private floor:I

.field private is_moderator:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_moderator"
    .end annotation
.end field

.field private member_honor:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private pic_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pid:I

.field private raw_pic_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private result:Z

.field private reward_exp:I

.field private reward_money:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->error_type:I

    return v0
.end method

.method public getFloor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->floor:I

    return v0
.end method

.method public getMember_honor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->member_honor:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->pic_list:Ljava/util/List;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->pid:I

    return v0
.end method

.method public getRaw_pic_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->raw_pic_list:Ljava/util/List;

    return-object v0
.end method

.method public getReward_exp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->reward_exp:I

    return v0
.end method

.method public getReward_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->reward_money:I

    return v0
.end method

.method public isResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->result:Z

    return v0
.end method

.method public is_moderator()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->is_moderator:Z

    return v0
.end method

.method public setError_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->error_type:I

    return-void
.end method

.method public setFloor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->floor:I

    return-void
.end method

.method public setIs_moderator(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->is_moderator:Z

    return-void
.end method

.method public setMember_honor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->member_honor:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->msg:Ljava/lang/String;

    return-void
.end method

.method public setPic_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->pic_list:Ljava/util/List;

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->pid:I

    return-void
.end method

.method public setRaw_pic_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->raw_pic_list:Ljava/util/List;

    return-void
.end method

.method public setResult(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->result:Z

    return-void
.end method

.method public setReward_exp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->reward_exp:I

    return-void
.end method

.method public setReward_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->reward_money:I

    return-void
.end method
