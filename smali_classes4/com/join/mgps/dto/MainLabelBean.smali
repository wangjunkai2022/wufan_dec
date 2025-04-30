.class public Lcom/join/mgps/dto/MainLabelBean;
.super Ljava/lang/Object;
.source "MainLabelBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;,
        Lcom/join/mgps/dto/MainLabelBean$TagType;
    }
.end annotation


# instance fields
.field private forum_name:Ljava/lang/String;

.field private is_allow:Z

.field private is_follow:I

.field private manager_info:Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;

.field private posts:I

.field private tag_desc:Ljava/lang/String;

.field private tag_icon:Ljava/lang/String;

.field private tag_id:I

.field private tag_name:Ljava/lang/String;

.field private tag_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MainLabelBean$TagType;",
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
.method public getForum_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MainLabelBean;->forum_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_follow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MainLabelBean;->is_follow:I

    return v0
.end method

.method public getManager_info()Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MainLabelBean;->manager_info:Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;

    return-object v0
.end method

.method public getPosts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MainLabelBean;->posts:I

    return v0
.end method

.method public getTag_desc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MainLabelBean;->tag_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_icon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MainLabelBean;->tag_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MainLabelBean;->tag_id:I

    return v0
.end method

.method public getTag_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MainLabelBean;->tag_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_type()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MainLabelBean$TagType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MainLabelBean;->tag_type:Ljava/util/List;

    return-object v0
.end method

.method public isIs_allow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/MainLabelBean;->is_allow:Z

    return v0
.end method

.method public is_allow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/MainLabelBean;->is_allow:Z

    return v0
.end method

.method public setForum_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MainLabelBean;->forum_name:Ljava/lang/String;

    return-void
.end method

.method public setIs_allow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/MainLabelBean;->is_allow:Z

    return-void
.end method

.method public setIs_follow(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MainLabelBean;->is_follow:I

    return-void
.end method

.method public setManager_info(Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MainLabelBean;->manager_info:Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;

    return-void
.end method

.method public setPosts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MainLabelBean;->posts:I

    return-void
.end method

.method public setTag_desc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MainLabelBean;->tag_desc:Ljava/lang/String;

    return-void
.end method

.method public setTag_icon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MainLabelBean;->tag_icon:Ljava/lang/String;

    return-void
.end method

.method public setTag_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MainLabelBean;->tag_id:I

    return-void
.end method

.method public setTag_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MainLabelBean;->tag_name:Ljava/lang/String;

    return-void
.end method

.method public setTag_type(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MainLabelBean$TagType;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MainLabelBean;->tag_type:Ljava/util/List;

    return-void
.end method
