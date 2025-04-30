.class public Lcom/join/mgps/dto/GameMaingameinfo;
.super Ljava/lang/Object;
.source "GameMaingameinfo.java"


# instance fields
.field private community_area_id:Ljava/lang/String;

.field private community_multi_posts_id:Ljava/lang/String;

.field private community_tag_id:I

.field private down_count:I

.field private fight_funv2:Ljava/lang/String;

.field private game_back_ground_img:Ljava/lang/String;

.field private game_bespeak_switch:Ljava/lang/String;

.field private game_comment_score_switch:Ljava/lang/String;

.field private game_comment_switch:Ljava/lang/String;

.field private game_file_save_switch:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private game_is_started:I

.field private game_name:Ljava/lang/String;

.field private game_package:Ljava/lang/String;

.field private game_plugin_num:Ljava/lang/String;

.field private game_surface_hall_war_img:Ljava/lang/String;

.field private game_surface_head_image:Ljava/lang/String;

.field private game_surface_invite_war_img:Ljava/lang/String;

.field private game_surface_local_war_img:Ljava/lang/String;

.field private game_surface_ranking_of_match_img:Ljava/lang/String;

.field private game_surface_single_start_img:Ljava/lang/String;

.field private max_battle_count:I

.field private max_battle_view_count:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private tag_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommunity_area_id()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->community_area_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->community_area_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCommunity_multi_posts_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->community_multi_posts_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunity_tag_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->community_tag_id:I

    return v0
.end method

.method public getDown_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->down_count:I

    return v0
.end method

.method public getFight_funv2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->fight_funv2:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_back_ground_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_back_ground_img:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_bespeak_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_bespeak_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_comment_score_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_comment_score_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_comment_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_comment_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_file_save_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_file_save_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_is_started()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_is_started:I

    return v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_package()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_package:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_plugin_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_plugin_num:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_surface_hall_war_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_surface_hall_war_img:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_surface_head_image()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_surface_head_image:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_surface_invite_war_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_surface_invite_war_img:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_surface_local_war_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_surface_local_war_img:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_surface_ranking_of_match_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_surface_ranking_of_match_img:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_surface_single_start_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_surface_single_start_img:Ljava/lang/String;

    return-object v0
.end method

.method public getMax_battle_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->max_battle_count:I

    return v0
.end method

.method public getMax_battle_view_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->max_battle_view_count:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMaingameinfo;->tag_info:Ljava/util/List;

    return-object v0
.end method

.method public setCommunity_area_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->community_area_id:Ljava/lang/String;

    return-void
.end method

.method public setCommunity_multi_posts_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->community_multi_posts_id:Ljava/lang/String;

    return-void
.end method

.method public setCommunity_tag_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->community_tag_id:I

    return-void
.end method

.method public setDown_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->down_count:I

    return-void
.end method

.method public setFight_funv2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->fight_funv2:Ljava/lang/String;

    return-void
.end method

.method public setGame_back_ground_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_back_ground_img:Ljava/lang/String;

    return-void
.end method

.method public setGame_bespeak_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_bespeak_switch:Ljava/lang/String;

    return-void
.end method

.method public setGame_comment_score_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_comment_score_switch:Ljava/lang/String;

    return-void
.end method

.method public setGame_comment_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_comment_switch:Ljava/lang/String;

    return-void
.end method

.method public setGame_file_save_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_file_save_switch:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_is_started(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_is_started:I

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_package(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_package:Ljava/lang/String;

    return-void
.end method

.method public setGame_plugin_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_plugin_num:Ljava/lang/String;

    return-void
.end method

.method public setGame_surface_hall_war_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_surface_hall_war_img:Ljava/lang/String;

    return-void
.end method

.method public setGame_surface_head_image(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_surface_head_image:Ljava/lang/String;

    return-void
.end method

.method public setGame_surface_invite_war_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_surface_invite_war_img:Ljava/lang/String;

    return-void
.end method

.method public setGame_surface_local_war_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_surface_local_war_img:Ljava/lang/String;

    return-void
.end method

.method public setGame_surface_ranking_of_match_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_surface_ranking_of_match_img:Ljava/lang/String;

    return-void
.end method

.method public setGame_surface_single_start_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->game_surface_single_start_img:Ljava/lang/String;

    return-void
.end method

.method public setMax_battle_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->max_battle_count:I

    return-void
.end method

.method public setMax_battle_view_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->max_battle_view_count:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->score:Ljava/lang/String;

    return-void
.end method

.method public setTag_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMaingameinfo;->tag_info:Ljava/util/List;

    return-void
.end method
