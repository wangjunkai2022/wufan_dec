.class public Lcom/join/mgps/dto/ForumData$ForumForumGroupData;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumForumGroupData"
.end annotation


# instance fields
.field private gid:I

.field private group_title:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean;",
            ">;"
        }
    .end annotation
.end field

.field private show_order:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumForumGroupData;->gid:I

    return v0
.end method

.method public getGroup_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumForumGroupData;->group_title:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumForumGroupData;->list:Ljava/util/List;

    return-object v0
.end method

.method public getShow_order()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumForumGroupData;->show_order:I

    return v0
.end method

.method public setGid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumForumGroupData;->gid:I

    return-void
.end method

.method public setGroup_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumForumGroupData;->group_title:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumForumGroupData;->list:Ljava/util/List;

    return-void
.end method

.method public setShow_order(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumForumGroupData;->show_order:I

    return-void
.end method
