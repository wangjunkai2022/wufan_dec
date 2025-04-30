.class public Lapp/mgsim/arena/ArenaConstants;
.super Ljava/lang/Object;
.source "ArenaConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/mgsim/arena/ArenaConstants$ArenaCommand;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL_SUBSCRIBE:Ljava/lang/String; = "com.join.mgps.socket.fight.arena.cancel_subscribe"

.field public static final ACTION_LEAVE_ROOM:Ljava/lang/String; = "com.join.mgps.socket.fight.arena.leave_room"

.field public static final MAX_PING_TIME:I = 0x78

.field public static final MAX_RETRY_COUNT:I = 0x3

.field public static final NDS_SERVER_1:Ljava/lang/String; = "http://113.107.57.112/?ws_domain=fastbattle.5fun.com&ws_ret_type=json"

.field public static final NDS_SERVER_2:Ljava/lang/String; = "http://203.130.43.40/?ws_domain=fastbattle.5fun.com&ws_ret_type=json"

.field public static final REGISTER_TYPE_ARENAMAIN:Ljava/lang/String; = "register_type_NewArenaMainFragment"

.field public static final REGISTER_TYPE_GAMELIST:Ljava/lang/String; = "register_type_GameRoomListActivity"

.field public static final REGISTER_TYPE_GAMEMAIN:Ljava/lang/String; = "register_type_GameMainActivity"

.field public static final REGISTER_TYPE_GAMEROOM:Ljava/lang/String; = "register_type_GameRoomActivity"

.field public static final REGISTER_TYPE_NONE:Ljava/lang/String; = "register_type_none"

.field public static final REGISTER_TYPE_PUBLIC:Ljava/lang/String; = "register_type_public"

.field public static final REGISTER_TYPE_SHARE_JOIN_ROOM:Ljava/lang/String; = "register_type_share_join_room"

.field public static final ROOM_TYPE_ELITE:I = 0x2

.field public static final ROOM_TYPE_NORMAL:I = 0x1

.field public static final SOCKET_HEADER_LENGTH:I = 0x4

.field public static final TYPE_NDS_SERVER_1:I = 0x1

.field public static final TYPE_NDS_SERVER_2:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
