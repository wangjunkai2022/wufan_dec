.class public Lcom/join/mgps/dto/JumpInfoBean;
.super Ljava/lang/Object;
.source "JumpInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private crc_link_type_val:Ljava/lang/String;

.field private jump_type:Ljava/lang/String;

.field private link_type:Ljava/lang/String;

.field private link_type_val:Ljava/lang/String;

.field private tab_name:Ljava/lang/String;

.field private tab_type:Ljava/lang/String;

.field private tpl_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/JumpInfoBean;->link_type:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/JumpInfoBean;->jump_type:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/JumpInfoBean;->link_type_val:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/JumpInfoBean;->tab_type:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/JumpInfoBean;->tab_name:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/JumpInfoBean;->crc_link_type_val:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/JumpInfoBean;->tpl_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/JumpInfoBean;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/dto/JumpInfoBean;->jump_type:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/dto/JumpInfoBean;->jump_type:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dto/JumpInfoBean;->link_type:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/JumpInfoBean;->link_type:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dto/JumpInfoBean;->link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dto/JumpInfoBean;->tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/dto/JumpInfoBean;->crc_link_type_val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    return-object v0
.end method

.method public getJump_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/JumpInfoBean;->jump_type:Ljava/lang/String;

    return-object v0
.end method

.method public getLink_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/JumpInfoBean;->link_type:Ljava/lang/String;

    return-object v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/JumpInfoBean;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getTab_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/JumpInfoBean;->tab_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTab_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/JumpInfoBean;->tab_type:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/JumpInfoBean;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/JumpInfoBean;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setJump_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/JumpInfoBean;->jump_type:Ljava/lang/String;

    return-void
.end method

.method public setLink_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/JumpInfoBean;->link_type:Ljava/lang/String;

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/JumpInfoBean;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setTab_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/JumpInfoBean;->tab_name:Ljava/lang/String;

    return-void
.end method

.method public setTab_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/JumpInfoBean;->tab_type:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/JumpInfoBean;->tpl_type:Ljava/lang/String;

    return-void
.end method
