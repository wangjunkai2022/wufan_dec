.class public Lcom/join/mgps/dto/ShareToBaseBean;
.super Ljava/lang/Object;
.source "ShareToBaseBean.java"


# instance fields
.field private device_id:Ljava/lang/String;

.field private group_id:I

.field private group_uid:I

.field private page:I

.field private token:Ljava/lang/String;

.field private uid:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareToBaseBean;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ShareToBaseBean;->group_id:I

    return v0
.end method

.method public getGroup_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ShareToBaseBean;->group_uid:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ShareToBaseBean;->page:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareToBaseBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ShareToBaseBean;->uid:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareToBaseBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareToBaseBean;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setGroup_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ShareToBaseBean;->group_id:I

    return-void
.end method

.method public setGroup_uid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ShareToBaseBean;->group_uid:I

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ShareToBaseBean;->page:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareToBaseBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ShareToBaseBean;->uid:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareToBaseBean;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/ShareToBaseBean;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ShareToBaseBean;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", group_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/ShareToBaseBean;->group_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", group_uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/ShareToBaseBean;->group_uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", page="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/ShareToBaseBean;->page:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/ShareToBaseBean;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/ShareToBaseBean;->device_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
