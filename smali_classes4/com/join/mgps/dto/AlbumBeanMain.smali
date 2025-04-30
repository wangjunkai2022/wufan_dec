.class public Lcom/join/mgps/dto/AlbumBeanMain;
.super Lcom/join/mgps/dto/BaseDto;
.source "AlbumBeanMain.java"


# instance fields
.field private collection_id:Ljava/lang/String;

.field private collection_title:Ljava/lang/String;

.field private cover_pic_local:Ljava/lang/String;

.field private cover_pic_remote:Ljava/lang/String;

.field private crc_collection_id:Ljava/lang/String;

.field private game_count:Ljava/lang/String;

.field private ico_local:Ljava/lang/String;

.field private ico_remote:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private show_tag_range:Ljava/lang/String;

.field private tpl_count:Ljava/lang/String;

.field private tpl_id:Ljava/lang/String;

.field private tpl_pic:Ljava/lang/String;

.field private tpl_range:Ljava/lang/String;

.field private tpl_title:Ljava/lang/String;

.field private tpl_type:Ljava/lang/String;

.field private tpl_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->collection_id:Ljava/lang/String;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->crc_collection_id:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->collection_title:Ljava/lang/String;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->ico_local:Ljava/lang/String;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->ico_remote:Ljava/lang/String;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->cover_pic_local:Ljava/lang/String;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->cover_pic_remote:Ljava/lang/String;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->info:Ljava/lang/String;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->show_tag_range:Ljava/lang/String;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->game_count:Ljava/lang/String;

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->tpl_id:Ljava/lang/String;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->tpl_title:Ljava/lang/String;

    move-object v1, p13

    .line 15
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->tpl_pic:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->tpl_url:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->tpl_range:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->tpl_count:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/join/mgps/dto/AlbumBeanMain;->tpl_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCollection_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AlbumBeanMain;->collection_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCollection_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AlbumBeanMain;->collection_title:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc_collection_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AlbumBeanMain;->crc_collection_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIco_local()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AlbumBeanMain;->ico_local:Ljava/lang/String;

    return-object v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AlbumBeanMain;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AlbumBeanMain;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AlbumBeanMain;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setCollection_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AlbumBeanMain;->collection_id:Ljava/lang/String;

    return-void
.end method

.method public setCollection_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AlbumBeanMain;->collection_title:Ljava/lang/String;

    return-void
.end method

.method public setCrc_collection_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AlbumBeanMain;->crc_collection_id:Ljava/lang/String;

    return-void
.end method

.method public setIco_local(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AlbumBeanMain;->ico_local:Ljava/lang/String;

    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AlbumBeanMain;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AlbumBeanMain;->info:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AlbumBeanMain;->tpl_type:Ljava/lang/String;

    return-void
.end method
