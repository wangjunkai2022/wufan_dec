.class public Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;
.super Ljava/lang/Object;
.source "GameMainCommunityBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameMainCommunityBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostsBean"
.end annotation


# instance fields
.field private fid:I

.field private message:Ljava/lang/String;

.field private pid:I

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->pid:I

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->subject:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->fid:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->pid:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public setFid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->fid:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->pid:I

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainCommunityBean$PostsBean;->subject:Ljava/lang/String;

    return-void
.end method
