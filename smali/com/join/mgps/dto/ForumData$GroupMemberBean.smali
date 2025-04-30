.class public Lcom/join/mgps/dto/ForumData$GroupMemberBean;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupMemberBean"
.end annotation


# instance fields
.field private avatar_src:Ljava/lang/String;

.field private grade:I

.field private is_joined:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_joined"
    .end annotation
.end field

.field private join_time:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->avatar_src:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->grade:I

    return v0
.end method

.method public getJoin_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->join_time:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public is_joined()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->is_joined:Z

    return v0
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->avatar_src:Ljava/lang/String;

    return-void
.end method

.method public setGrade(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->grade:I

    return-void
.end method

.method public setIs_joined(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->is_joined:Z

    return-void
.end method

.method public setJoin_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->join_time:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$GroupMemberBean;->uid:Ljava/lang/String;

    return-void
.end method
