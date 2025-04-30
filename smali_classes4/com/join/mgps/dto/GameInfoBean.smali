.class public Lcom/join/mgps/dto/GameInfoBean;
.super Ljava/lang/Object;
.source "GameInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x34f0e9a1f18c061fL


# instance fields
.field private battle_area:I

.field private collection_id:Ljava/lang/String;

.field private elite_match_switch:I

.field private game_ico:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private game_surface_head_image:Ljava/lang/String;

.field private general_match_switch:I

.field private hall_game_list_img:Ljava/lang/String;

.field private only_show_mobile_gamers_room:I

.field private pic_cover:Ljava/lang/String;

.field private pic_remote:Ljava/lang/String;

.field private pic_remote_vertical:Ljava/lang/String;

.field private room_count:I

.field private the_hot:Z

.field private the_new:Z

.field private the_score:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerialVersionUID()J
    .locals 2

    const-wide v0, -0x34f0e9a1f18c061fL    # -3.7219734391440505E53

    return-wide v0
.end method


# virtual methods
.method public getBattle_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameInfoBean;->battle_area:I

    return v0
.end method

.method public getCollection_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInfoBean;->collection_id:Ljava/lang/String;

    return-object v0
.end method

.method public getElite_match_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameInfoBean;->elite_match_switch:I

    return v0
.end method

.method public getGame_ico()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInfoBean;->game_ico:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInfoBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInfoBean;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_surface_head_image()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInfoBean;->game_surface_head_image:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneral_match_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameInfoBean;->general_match_switch:I

    return v0
.end method

.method public getHall_game_list_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInfoBean;->hall_game_list_img:Ljava/lang/String;

    return-object v0
.end method

.method public getOnly_show_mobile_gamers_room()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameInfoBean;->only_show_mobile_gamers_room:I

    return v0
.end method

.method public getPic_cover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInfoBean;->pic_cover:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInfoBean;->pic_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_remote_vertical()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInfoBean;->pic_remote_vertical:Ljava/lang/String;

    return-object v0
.end method

.method public getRoom_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameInfoBean;->room_count:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInfoBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isThe_hot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameInfoBean;->the_hot:Z

    return v0
.end method

.method public isThe_new()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameInfoBean;->the_new:Z

    return v0
.end method

.method public isThe_score()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameInfoBean;->the_score:Z

    return v0
.end method

.method public setBattle_area(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameInfoBean;->battle_area:I

    return-void
.end method

.method public setCollection_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInfoBean;->collection_id:Ljava/lang/String;

    return-void
.end method

.method public setElite_match_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameInfoBean;->elite_match_switch:I

    return-void
.end method

.method public setGame_ico(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInfoBean;->game_ico:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInfoBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInfoBean;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_surface_head_image(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInfoBean;->game_surface_head_image:Ljava/lang/String;

    return-void
.end method

.method public setGeneral_match_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameInfoBean;->general_match_switch:I

    return-void
.end method

.method public setHall_game_list_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInfoBean;->hall_game_list_img:Ljava/lang/String;

    return-void
.end method

.method public setOnly_show_mobile_gamers_room(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameInfoBean;->only_show_mobile_gamers_room:I

    return-void
.end method

.method public setPic_cover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInfoBean;->pic_cover:Ljava/lang/String;

    return-void
.end method

.method public setPic_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInfoBean;->pic_remote:Ljava/lang/String;

    return-void
.end method

.method public setPic_remote_vertical(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInfoBean;->pic_remote_vertical:Ljava/lang/String;

    return-void
.end method

.method public setRoom_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameInfoBean;->room_count:I

    return-void
.end method

.method public setThe_hot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameInfoBean;->the_hot:Z

    return-void
.end method

.method public setThe_new(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameInfoBean;->the_new:Z

    return-void
.end method

.method public setThe_score(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameInfoBean;->the_score:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInfoBean;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameInfoBean{game_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/GameInfoBean;->game_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameInfoBean;->game_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_ico=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameInfoBean;->game_ico:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", room_count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/GameInfoBean;->room_count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", game_surface_head_image=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/GameInfoBean;->game_surface_head_image:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
