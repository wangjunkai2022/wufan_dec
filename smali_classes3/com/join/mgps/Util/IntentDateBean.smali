.class public Lcom/join/mgps/Util/IntentDateBean;
.super Ljava/lang/Object;
.source "IntentDateBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private crc_link_type_val:Ljava/lang/String;

.field private ext1:Ljava/lang/String;

.field private ext2:Ljava/lang/String;

.field private ext3:Ljava/lang/String;

.field private ext4:Ljava/lang/String;

.field private extBean:Lcom/join/mgps/dto/ExtBean;

.field private from:Ljava/lang/String;

.field private jump_type:I

.field private link_type:I

.field private link_type_val:Ljava/lang/String;

.field private object:Ljava/lang/Object;

.field private tpl_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "normal"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->from:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "normal"

    .line 4
    iput-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->from:Ljava/lang/String;

    .line 5
    iput p1, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type:I

    .line 6
    iput p2, p0, Lcom/join/mgps/Util/IntentDateBean;->jump_type:I

    .line 7
    iput-object p3, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type_val:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/join/mgps/Util/IntentDateBean;->crc_link_type_val:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/join/mgps/Util/IntentDateBean;->tpl_type:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lcom/join/mgps/Util/IntentDateBean;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getExt1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->ext1:Ljava/lang/String;

    return-object v0
.end method

.method public getExt2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->ext2:Ljava/lang/String;

    return-object v0
.end method

.method public getExt3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->ext3:Ljava/lang/String;

    return-object v0
.end method

.method public getExt4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->ext4:Ljava/lang/String;

    return-object v0
.end method

.method public getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/IntentDateBean;->jump_type:I

    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type:I

    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setExt1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->ext1:Ljava/lang/String;

    return-void
.end method

.method public setExt2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->ext2:Ljava/lang/String;

    return-void
.end method

.method public setExt3(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->ext3:Ljava/lang/String;

    return-void
.end method

.method public setExt4(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->ext4:Ljava/lang/String;

    return-void
.end method

.method public setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->from:Ljava/lang/String;

    return-void
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/IntentDateBean;->jump_type:I

    return-void
.end method

.method public setLink_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type:I

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->object:Ljava/lang/Object;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->tpl_type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntentDateBean{link_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jump_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/Util/IntentDateBean;->jump_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", link_type_val=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", crc_link_type_val=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/IntentDateBean;->crc_link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tpl_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/IntentDateBean;->tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", object="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/Util/IntentDateBean;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/Util/IntentDateBean;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
