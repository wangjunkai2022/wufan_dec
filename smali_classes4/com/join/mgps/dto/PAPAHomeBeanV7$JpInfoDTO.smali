.class public Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;
.super Ljava/lang/Object;
.source "PAPAHomeBeanV7.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PAPAHomeBeanV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JpInfoDTO"
.end annotation


# instance fields
.field private crc_link_type_val:Ljava/lang/String;

.field private is_more:Ljava/lang/Integer;

.field private jump_type:Ljava/lang/Integer;

.field private link_type:Ljava/lang/Integer;

.field private link_type_val:Ljava/lang/String;

.field private tpl_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_more()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->is_more:Ljava/lang/Integer;

    return-object v0
.end method

.method public getJump_type()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->jump_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLink_type()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->link_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setIs_more(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->is_more:Ljava/lang/Integer;

    return-void
.end method

.method public setJump_type(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->jump_type:Ljava/lang/Integer;

    return-void
.end method

.method public setLink_type(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->link_type:Ljava/lang/Integer;

    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->tpl_type:Ljava/lang/String;

    return-void
.end method
