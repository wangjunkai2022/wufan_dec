.class public Lcom/join/mgps/socket/fight/arena/c;
.super Ljava/lang/Object;
.source "ArenaUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eq v0, p1, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eq v0, p1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eq v0, p1, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result p0

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/papa91/battle/protocol/BattleArea;)Lapp/mgsim/arena/AreaInfo;
    .locals 1

    .line 1
    new-instance v0, Lapp/mgsim/arena/AreaInfo;

    invoke-direct {v0}, Lapp/mgsim/arena/AreaInfo;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lapp/mgsim/arena/AreaInfo;->setArea(I)V

    return-object v0
.end method

.method public static c(I)Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/papa91/battle/protocol/BattleArea;->GZ:Lcom/papa91/battle/protocol/BattleArea;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/papa91/battle/protocol/BattleArea;->SH:Lcom/papa91/battle/protocol/BattleArea;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/papa91/battle/protocol/BattleArea;->BJ:Lcom/papa91/battle/protocol/BattleArea;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    return-object p0
.end method

.method public static d(Lcom/papa91/battle/protocol/BattleArea;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v0

    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->BJ:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string p0, "\u5317\u4eac\u533a"

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v0

    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->SH:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string p0, "\u4e0a\u6d77\u533a"

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result p0

    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->GZ:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v0

    if-ne p0, v0, :cond_2

    const-string p0, "\u5e7f\u4e1c\u533a"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    const-string p0, "\u5168\u90e8"

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v1}, Lcom/join/mgps/Util/n0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "retCode"

    .line 3
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "0"

    .line 4
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "data"

    .line 5
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v2, "fastbattle.5fun.com"

    .line 6
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v2, "ips"

    .line 7
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public static f(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Lapp/mgsim/arena/UserType;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getLeader()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p0, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result p0

    if-ne p1, p0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object p0, Lapp/mgsim/arena/UserType;->SPECTATOR:Lapp/mgsim/arena/UserType;

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    sget-object p0, Lapp/mgsim/arena/UserType;->TENANT:Lapp/mgsim/arena/UserType;

    :goto_1
    return-object p0
.end method

.method public static g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    if-nez v0, :cond_0

    const-string p0, "\u672a\u5b9a\u4e49\u534f\u8bae\uff01"

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string p0, "\u7cfb\u7edf\u9519\u8bef\uff01"

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string p0, "\u53c2\u6570\u9519\u8bef\uff01"

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string p0, "\u5185\u90e8\u9519\u8bef\uff01"

    goto :goto_1

    :cond_3
    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    const-string p0, "\u5bc6\u7801\u9519\u8bef!"

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    const-string p0, "\u623f\u95f4\u5df2\u7ecf\u88ab\u89e3\u6563\uff01"

    goto :goto_1

    :cond_5
    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    const-string p0, "\u623f\u95f4\u5df2\u6ee1\uff0c\u65e0\u6cd5\u52a0\u5165!"

    goto :goto_1

    :cond_6
    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    const-string p0, "\u6b64\u623f\u95f4\u9700\u8981\u5bc6\u7801!"

    goto :goto_1

    :cond_7
    const/16 v1, 0xb

    if-ne v0, v1, :cond_8

    const-string p0, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u521b\u5efa\u623f\u95f4!"

    goto :goto_1

    :cond_8
    const/16 v1, 0xc

    if-ne v0, v1, :cond_9

    const-string p0, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u6311\u6218\u91d1\uff01"

    goto :goto_1

    :cond_9
    const/16 v1, 0xd

    if-ne v0, v1, :cond_a

    const-string p0, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u52a0\u5165\u623f\u95f4\uff01"

    goto :goto_1

    :cond_a
    const/16 v1, 0xe

    if-ne v0, v1, :cond_b

    const-string p0, "\u8be5\u623f\u95f4\u5df2\u7ecf\u89e3\u6563!"

    goto :goto_1

    :cond_b
    const/16 v1, 0x10

    if-ne v0, v1, :cond_c

    const-string p0, "\u65e0\u6cd5\u52a0\u5165\uff0c\u4f60\u88ab\u7981\u6b62\u52a0\u5165\u8be5\u623f\u95f4!"

    goto :goto_1

    :cond_c
    const/16 v1, 0x11

    if-ne v0, v1, :cond_d

    const-string p0, "\u8be5\u623f\u95f4\u4e3a\u6bd4\u8d5b\u4e13\u7528\u623f\u95f4,\u975e\u53c2\u8d5b\u9009\u624b\u65e0\u6cd5\u52a0\u5165!"

    goto :goto_1

    :cond_d
    const/16 v1, 0xf

    if-eq v0, v1, :cond_f

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    goto :goto_0

    :cond_e
    const-string p0, ""

    goto :goto_1

    .line 2
    :cond_f
    :goto_0
    iget-object p0, p0, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 3
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "\u7f51\u7edc\u5f02\u5e38\uff01"

    :cond_10
    return-object p0
.end method

.method public static h(Lcom/papa91/battle/protocol/GameRoom;I)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Lcom/papa91/battle/protocol/BattleArea;Z)I
    .locals 2

    const/16 v0, 0x9

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result p0

    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-ne p0, v1, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    return v0
.end method

.method public static j(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getType()Lcom/papa91/battle/protocol/Response$ProtoType;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->REFRESH_ROOM_LIST_DISSOLVE:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    const-string p1, "push_refresh_room_list_dissolve"

    .line 4
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->REFRESH_ROOM_LIST_UPDATE:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    const-string p1, "push_refresh_room_list_update"

    .line 7
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    goto/16 :goto_0

    .line 8
    :cond_1
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->UPDATE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v0, v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    const-string p1, "push_update_room"

    .line 10
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_2
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->DISSOLVE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v0, v1, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    const-string p1, "push_dissolve_room"

    .line 13
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_3
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->KICK_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v0, v1, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    const-string p1, "push_kick_room"

    .line 16
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_4
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->ROOM_READY_TIMEOUT_KICKOUT:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v0, v1, :cond_5

    .line 18
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    const-string p1, "push_room_ready_timeout_kickout"

    .line 19
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    goto :goto_0

    .line 20
    :cond_5
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->ROOM_START_TIMEOUT_KICKOUT:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v0, v1, :cond_6

    .line 21
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    const-string p1, "push_room_start_timeout_kickout"

    .line 22
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_6
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->START_GAME_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v0, v1, :cond_8

    const-string v0, "push_start_game_room_broadcast"

    .line 24
    iput-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->RESULT_SUCCESS:Lcom/papa91/battle/protocol/Response$StatusCode;

    if-ne v0, v1, :cond_7

    .line 26
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_7
    invoke-static {p0, p1}, Lcom/join/mgps/socket/fight/arena/c;->k(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;

    move-result-object p0

    goto :goto_0

    .line 28
    :cond_8
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->GLOBAL_MESSAGE_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v0, v1, :cond_9

    const-string v0, "push_global_broadcast_all"

    .line 29
    iput-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getNotification()Lcom/papa91/battle/protocol/Notification;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    :cond_9
    :goto_0
    return-object p0
.end method

.method public static k(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ERROR_MESSAGE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    const/16 v0, 0xf

    .line 4
    iput v0, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getError()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_KICK:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    const/16 p1, 0x10

    .line 8
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    return-object p0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_WHITE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    const/16 p1, 0x11

    .line 11
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    return-object p0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_DISSOLVE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    const/16 p1, 0xe

    .line 14
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    return-object p0

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    const/4 p1, 0x7

    .line 17
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    return-object p0

    .line 18
    :cond_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->NOT_FOUND_ROOM:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    const/16 p1, 0x8

    .line 20
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    return-object p0

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_FULL:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 22
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    const/16 p1, 0x9

    .line 23
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    return-object p0

    .line 24
    :cond_6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NEED_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    const/16 p1, 0xa

    .line 26
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    return-object p0

    .line 27
    :cond_7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->CREATE_ROOM_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 28
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    const/16 p1, 0xb

    .line 29
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    return-object p0

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    const/16 p1, 0xc

    .line 32
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    return-object p0

    .line 33
    :cond_9
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v1

    sget-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 34
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    const/16 p1, 0xd

    .line 35
    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    return-object p0

    .line 36
    :cond_a
    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->SERVICE_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->PARAMS_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->INTERNAL_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->UN_LOGIN_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    .line 40
    :cond_b
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    const/16 v0, 0x3e8

    .line 41
    iput v0, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 42
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getError()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    return-object p0

    .line 43
    :cond_c
    :goto_0
    iput v2, p0, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 44
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->s(Lcom/papa91/battle/protocol/Response$StatusCode;)I

    move-result p1

    iput p1, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    return-object p0
.end method

.method public static l(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;
    .locals 5

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_subscribe_game_roomlist"

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getType()Lcom/papa91/battle/protocol/Response$ProtoType;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->FULL_PUSH_ROOM_LIST_ING:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    const-string p1, "push_room_list_ing"

    .line 4
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getType()Lcom/papa91/battle/protocol/Response$ProtoType;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->FULL_PUSH_ROOM_LIST_FINISH:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v0, v1, :cond_7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomList()Ljava/util/List;

    move-result-object p1

    aput-object p1, v0, v1

    .line 8
    iput-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    const-string p1, "push_room_list_finish"

    .line 9
    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string v1, "cmd_get_kick_out_room_position_info"

    if-ne v0, v1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getKickInfo()Lcom/papa91/battle/protocol/KickInfo;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    const-string v1, "cmd_get_frameforward_server"

    if-ne v0, v1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v1, "cmd_quick_join_room"

    const-string v2, "cmd_share_join_room"

    const-string v3, "cmd_join_room"

    const-string v4, "cmd_create_game_room"

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    const-string v4, "cmd_kick_out_room_position"

    if-eq v0, v4, :cond_4

    if-eq v0, v1, :cond_4

    const-string v4, "cmd_search_room_by_id"

    if-eq v0, v4, :cond_4

    const-string v4, "cmd_lobby_start_game"

    if-eq v0, v4, :cond_4

    const-string v4, "cmd_set_room_close_p1_position"

    if-eq v0, v4, :cond_4

    const-string v4, "cmd_set_room_close_p2_position"

    if-eq v0, v4, :cond_4

    const-string v4, "cmd_set_room_close_p3_position"

    if-eq v0, v4, :cond_4

    const-string v4, "cmd_set_room_close_p4_position"

    if-eq v0, v4, :cond_4

    if-eq v0, v2, :cond_4

    const-string v4, "cmd_player_ready_game"

    if-eq v0, v4, :cond_4

    const-string v4, "cmd_set_room_password_altr"

    if-eq v0, v4, :cond_4

    const-string v4, "cmd_set_room_challenge_coins_altr"

    if-eq v0, v4, :cond_4

    const-string v4, "cmd_set_room_spectator_join_altr"

    if-eq v0, v4, :cond_4

    const-string v4, "cmd_set_room_peripheral_join_altr"

    if-eq v0, v4, :cond_4

    const-string v4, "cmd_set_room_pc_join_altr"

    if-eq v0, v4, :cond_4

    const-string v4, "cmd_set_room_server_play_mode"

    if-eq v0, v4, :cond_4

    const-string v4, "cmd_spectator_sit"

    if-ne v0, v4, :cond_7

    :cond_4
    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_5

    if-ne v0, v1, :cond_6

    .line 12
    :cond_5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/mgsim/arena/ArenaResponse;->joinSpectatorReason:Ljava/lang/String;

    .line 13
    :cond_6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    iput-object p1, p0, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    :cond_7
    :goto_0
    return-object p0
.end method

.method public static m(J)Z
    .locals 3

    const-wide/16 v0, 0x78

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static n(Lcom/papa91/battle/protocol/GameRoom;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa/controller/core/d;->r(Landroid/content/Context;)Lcom/papa/controller/core/d;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static p(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  closed-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  vip-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  uid-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title getBackgroudColor -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title getTitle -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  nickname-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  avatar-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  copper-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getCopper()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  peripheral-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getPeripheral()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  pingVal-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getPingVal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  state-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/battle/protocol/RoomPosition;->getState()Lcom/papa91/battle/protocol/RoomPosition$State;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/String;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gameRoom info: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " gameid->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " roomId->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Elite->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " password->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hasJoinPassword->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowSpectatorJoin->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowSpectatorJoin()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowPeripheralJoin->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " spectatorNumber->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSpectatorNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " challengeCoins->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " playerNumber->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " seatsNumber->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " leader->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getLeader()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " playerSeconds->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerSeconds()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RoomState->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    const-string v2, "-----"

    if-eqz v1, :cond_1

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " room position 1 info: ->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/socket/fight/arena/c;->p(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " room position 2 info: ->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/socket/fight/arena/c;->p(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " room position 3 info: ->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/socket/fight/arena/c;->p(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " room position 4 info: ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->p(Lcom/papa91/battle/protocol/RoomPosition;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/join/mgps/Util/t0;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static r(Ljava/lang/String;Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simpleRoom info: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " roomId->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " gameId->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " nickname->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " vip->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " createAt->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCreateAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " seatsNumber->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSeatsNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sitDownloadNumber->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSitDownloadNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hasJoinPassword->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasJoinPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowSpectatorJoin->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowSpectatorJoin()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowPeripheralJoin->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPeripheralJoin()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " challengeCoins->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getChallengeCoins()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " playSeconds->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Title.getBackgroudColor->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getHasPeripheralPlayer->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasPeripheralPlayer()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Title.Title->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " elite->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " copper->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/join/mgps/Util/t0;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static s(Lcom/papa91/battle/protocol/Response$StatusCode;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response$StatusCode;->SERVICE_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/papa91/battle/protocol/Response$StatusCode;->PARAMS_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/papa91/battle/protocol/Response$StatusCode;->INTERNAL_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    if-ne p0, v0, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/papa91/battle/protocol/Response$StatusCode;->UN_LOGIN_FAILURE:Lcom/papa91/battle/protocol/Response$StatusCode;

    if-ne p0, v0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
