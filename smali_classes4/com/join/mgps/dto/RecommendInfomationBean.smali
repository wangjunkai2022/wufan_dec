.class public Lcom/join/mgps/dto/RecommendInfomationBean;
.super Ljava/lang/Object;
.source "RecommendInfomationBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private commit:I

.field private ico_remote:Ljava/lang/String;

.field private pic_list:[Ljava/lang/String;

.field private post_id:I

.field private praise:I

.field private times:J

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private type_color:Ljava/lang/String;

.field private view:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->commit:I

    return v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_list()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->pic_list:[Ljava/lang/String;

    return-object v0
.end method

.method public getPost_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->post_id:I

    return v0
.end method

.method public getPraise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->praise:I

    return v0
.end method

.method public getTimes()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->times:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getType_color()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->type_color:Ljava/lang/String;

    return-object v0
.end method

.method public getView()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->view:I

    return v0
.end method

.method public setCommit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->commit:I

    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setPic_list([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->pic_list:[Ljava/lang/String;

    return-void
.end method

.method public setPost_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->post_id:I

    return-void
.end method

.method public setPraise(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->praise:I

    return-void
.end method

.method public setTimes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->times:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setType_color(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->type_color:Ljava/lang/String;

    return-void
.end method

.method public setView(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecommendInfomationBean;->view:I

    return-void
.end method
