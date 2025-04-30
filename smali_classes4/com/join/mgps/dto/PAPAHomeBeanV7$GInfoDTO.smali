.class public Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;
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
    name = "GInfoDTO"
.end annotation


# instance fields
.field private down_state:Ljava/lang/Integer;

.field private game_info_tpl_type:Ljava/lang/String;

.field private ico:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mod_id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private plugin_num:Ljava/lang/Integer;

.field private position_path:Lcom/psk/eventmodule/StatFactory$VolcanoOther;

.field private sync_memory:Ljava/lang/String;

.field private tag_id:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tag_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDown_state()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->down_state:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->game_info_tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public getIco()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->ico:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMod_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->mod_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_num()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->plugin_num:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->position_path:Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    return-object v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->sync_memory:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_id()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->tag_id:Ljava/util/List;

    return-object v0
.end method

.method public getTag_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->tag_name:Ljava/lang/String;

    return-object v0
.end method

.method public setDown_state(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->down_state:Ljava/lang/Integer;

    return-void
.end method

.method public setGame_info_tpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->game_info_tpl_type:Ljava/lang/String;

    return-void
.end method

.method public setIco(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->ico:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->id:Ljava/lang/String;

    return-void
.end method

.method public setMod_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->mod_id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_num(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->plugin_num:Ljava/lang/Integer;

    return-void
.end method

.method public setPosition_path(Lcom/psk/eventmodule/StatFactory$VolcanoOther;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->position_path:Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    return-void
.end method

.method public setSync_memory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->sync_memory:Ljava/lang/String;

    return-void
.end method

.method public setTag_id(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->tag_id:Ljava/util/List;

    return-void
.end method

.method public setTag_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->tag_name:Ljava/lang/String;

    return-void
.end method
