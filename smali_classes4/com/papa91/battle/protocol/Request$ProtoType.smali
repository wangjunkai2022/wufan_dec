.class public final enum Lcom/papa91/battle/protocol/Request$ProtoType;
.super Ljava/lang/Enum;
.source "Request.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/papa91/battle/protocol/Request$ProtoType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final enum CANCEL_SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final CANCEL_SUBSCRIBE_GAME_COLLECTION_VALUE:I = 0x20

.field public static final enum CANCEL_SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final CANCEL_SUBSCRIBE_GAME_ROOM_VALUE:I = 0x16

.field public static final enum CREATE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final CREATE_GAME_ROOM_VALUE:I = 0x4

.field public static final enum DISCONNECT_LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final DISCONNECT_LEAVE_ROOM_VALUE:I = 0x19

.field public static final enum DISSOLVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final DISSOLVE_ROOM_VALUE:I = 0x10

.field public static final enum GET_KICK_OUT_ROOM_POSITION_INFO:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final GET_KICK_OUT_ROOM_POSITION_INFO_VALUE:I = 0x1b

.field public static final enum GET_UDP_FRAME_SERVER:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final GET_UDP_FRAME_SERVER_VALUE:I = 0x1c

.field public static final enum JOIN_BATTLE_AREA:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final JOIN_BATTLE_AREA_VALUE:I = 0x1d

.field public static final enum JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final JOIN_ROOM_VALUE:I = 0xa

.field public static final enum KICK_OUT_ROOM_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final KICK_OUT_ROOM_POSITION_VALUE:I = 0x11

.field public static final enum LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final LEAVE_ROOM_VALUE:I = 0xf

.field public static final enum LOBBY_START_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final LOBBY_START_GAME_VALUE:I = 0x14

.field public static final enum LOGIN:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final LOGIN_VALUE:I = 0x1

.field public static final enum PING:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final PING_VALUE:I = 0x2

.field public static final enum PLAYER_JOIN_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final PLAYER_JOIN_GAME_VALUE:I = 0x17

.field public static final enum PLAYER_READY_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final PLAYER_READY_GAME_VALUE:I = 0x15

.field public static final enum QUICK_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final enum QUICK_JOIN_ROOM_NET_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final QUICK_JOIN_ROOM_NET_PC_VALUE:I = 0x25

.field public static final enum QUICK_JOIN_ROOM_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final QUICK_JOIN_ROOM_PC_VALUE:I = 0x21

.field public static final QUICK_JOIN_ROOM_VALUE:I = 0x12

.field public static final enum ROOM_SPECTATOR_SIT:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final ROOM_SPECTATOR_SIT_VALUE:I = 0x1a

.field public static final enum SEARCH_ROOM_BY_ID:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SEARCH_ROOM_BY_ID_VALUE:I = 0x13

.field public static final enum SET_ROOM_ALLOW_PC_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_ALLOW_PC_JOIN_VALUE:I = 0x23

.field public static final enum SET_ROOM_CHALLENGE_COINS_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_CHALLENGE_COINS_ATTR_VALUE:I = 0x5

.field public static final enum SET_ROOM_CLOSE_P1_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_CLOSE_P1_POSITION_VALUE:I = 0xb

.field public static final enum SET_ROOM_CLOSE_P2_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_CLOSE_P2_POSITION_VALUE:I = 0xc

.field public static final enum SET_ROOM_CLOSE_P3_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_CLOSE_P3_POSITION_VALUE:I = 0xd

.field public static final enum SET_ROOM_CLOSE_P4_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_CLOSE_P4_POSITION_VALUE:I = 0xe

.field public static final enum SET_ROOM_DISABLE_MOBILE_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_DISABLE_MOBILE_JOIN_VALUE:I = 0x24

.field public static final enum SET_ROOM_PASSWORD_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_PASSWORD_ATTR_VALUE:I = 0x6

.field public static final enum SET_ROOM_PERIPHERAL_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_PERIPHERAL_JOIN_ATTR_VALUE:I = 0x7

.field public static final enum SET_ROOM_POSITION_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_POSITION_ATTR_VALUE:I = 0x9

.field public static final enum SET_ROOM_SERVER_PLAY_MODE:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_SERVER_PLAY_MODE_VALUE:I = 0x22

.field public static final enum SET_ROOM_SPECTATOR_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SET_ROOM_SPECTATOR_JOIN_ATTR_VALUE:I = 0x8

.field public static final enum SHARE_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SHARE_JOIN_ROOM_VALUE:I = 0x18

.field public static final enum SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SUBSCRIBE_GAME_COLLECTION_VALUE:I = 0x1f

.field public static final enum SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final SUBSCRIBE_GAME_ROOM_VALUE:I = 0x3

.field public static final enum UNDEFINED_REQUEST:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final UNDEFINED_REQUEST_VALUE:I = 0x0

.field public static final enum UNRECOGNIZED:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final enum VERIFY_JOIN_ROOM_PASSWORD:Lcom/papa91/battle/protocol/Request$ProtoType;

.field public static final VERIFY_JOIN_ROOM_PASSWORD_VALUE:I = 0x1e

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/papa91/battle/protocol/Request$ProtoType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 42

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v1, "UNDEFINED_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->UNDEFINED_REQUEST:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 2
    new-instance v1, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v3, "LOGIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->LOGIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 3
    new-instance v3, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v5, "PING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/papa91/battle/protocol/Request$ProtoType;->PING:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 4
    new-instance v5, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v7, "SUBSCRIBE_GAME_ROOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/papa91/battle/protocol/Request$ProtoType;->SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 5
    new-instance v7, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v9, "CREATE_GAME_ROOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/papa91/battle/protocol/Request$ProtoType;->CREATE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 6
    new-instance v9, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v11, "SET_ROOM_CHALLENGE_COINS_ATTR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CHALLENGE_COINS_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 7
    new-instance v11, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v13, "SET_ROOM_PASSWORD_ATTR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PASSWORD_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 8
    new-instance v13, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v15, "SET_ROOM_PERIPHERAL_JOIN_ATTR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PERIPHERAL_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 9
    new-instance v15, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v14, "SET_ROOM_SPECTATOR_JOIN_ATTR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SPECTATOR_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 10
    new-instance v14, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v12, "SET_ROOM_POSITION_ATTR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_POSITION_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 11
    new-instance v12, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v10, "JOIN_ROOM"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 12
    new-instance v10, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v8, "SET_ROOM_CLOSE_P1_POSITION"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P1_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 13
    new-instance v8, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "SET_ROOM_CLOSE_P2_POSITION"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P2_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 14
    new-instance v6, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v4, "SET_ROOM_CLOSE_P3_POSITION"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P3_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 15
    new-instance v4, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v2, "SET_ROOM_CLOSE_P4_POSITION"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P4_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 16
    new-instance v2, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "LEAVE_ROOM"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 17
    new-instance v6, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v4, "DISSOLVE_ROOM"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/papa91/battle/protocol/Request$ProtoType;->DISSOLVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 18
    new-instance v4, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v2, "KICK_OUT_ROOM_POSITION"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Request$ProtoType;->KICK_OUT_ROOM_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 19
    new-instance v2, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "QUICK_JOIN_ROOM"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 20
    new-instance v6, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v4, "SEARCH_ROOM_BY_ID"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/papa91/battle/protocol/Request$ProtoType;->SEARCH_ROOM_BY_ID:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 21
    new-instance v4, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v2, "LOBBY_START_GAME"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Request$ProtoType;->LOBBY_START_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 22
    new-instance v2, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "PLAYER_READY_GAME"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->PLAYER_READY_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 23
    new-instance v6, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v4, "CANCEL_SUBSCRIBE_GAME_ROOM"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/papa91/battle/protocol/Request$ProtoType;->CANCEL_SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 24
    new-instance v2, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v4, "PLAYER_JOIN_GAME"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->PLAYER_JOIN_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 25
    new-instance v4, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "SHARE_JOIN_ROOM"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Request$ProtoType;->SHARE_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 26
    new-instance v2, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "DISCONNECT_LEAVE_ROOM"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->DISCONNECT_LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 27
    new-instance v4, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "ROOM_SPECTATOR_SIT"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Request$ProtoType;->ROOM_SPECTATOR_SIT:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 28
    new-instance v2, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "GET_KICK_OUT_ROOM_POSITION_INFO"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_KICK_OUT_ROOM_POSITION_INFO:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 29
    new-instance v4, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "GET_UDP_FRAME_SERVER"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_UDP_FRAME_SERVER:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 30
    new-instance v2, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "JOIN_BATTLE_AREA"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v8, v4}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_BATTLE_AREA:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 31
    new-instance v4, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "VERIFY_JOIN_ROOM_PASSWORD"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v8, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Request$ProtoType;->VERIFY_JOIN_ROOM_PASSWORD:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 32
    new-instance v2, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "SUBSCRIBE_GAME_COLLECTION"

    const/16 v8, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v8, v4}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 33
    new-instance v4, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "CANCEL_SUBSCRIBE_GAME_COLLECTION"

    const/16 v8, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v8, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Request$ProtoType;->CANCEL_SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 34
    new-instance v2, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "QUICK_JOIN_ROOM_PC"

    const/16 v8, 0x21

    move-object/from16 v36, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v8, v4}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 35
    new-instance v4, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "SET_ROOM_SERVER_PLAY_MODE"

    const/16 v8, 0x22

    move-object/from16 v37, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v8, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SERVER_PLAY_MODE:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 36
    new-instance v2, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "SET_ROOM_ALLOW_PC_JOIN"

    const/16 v8, 0x23

    move-object/from16 v38, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v8, v4}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_ALLOW_PC_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 37
    new-instance v4, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "SET_ROOM_DISABLE_MOBILE_JOIN"

    const/16 v8, 0x24

    move-object/from16 v39, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v8, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_DISABLE_MOBILE_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 38
    new-instance v2, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "QUICK_JOIN_ROOM_NET_PC"

    const/16 v8, 0x25

    move-object/from16 v40, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v8, v4}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM_NET_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 39
    new-instance v4, Lcom/papa91/battle/protocol/Request$ProtoType;

    const-string v6, "UNRECOGNIZED"

    const/16 v8, 0x26

    move-object/from16 v41, v2

    const/4 v2, -0x1

    invoke-direct {v4, v6, v8, v2}, Lcom/papa91/battle/protocol/Request$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Request$ProtoType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Request$ProtoType;

    const/16 v2, 0x27

    new-array v2, v2, [Lcom/papa91/battle/protocol/Request$ProtoType;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v25, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v4, v2, v0

    .line 40
    sput-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->$VALUES:[Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 41
    new-instance v0, Lcom/papa91/battle/protocol/Request$ProtoType$1;

    invoke-direct {v0}, Lcom/papa91/battle/protocol/Request$ProtoType$1;-><init>()V

    sput-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/papa91/battle/protocol/Request$ProtoType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/papa91/battle/protocol/Request$ProtoType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM_NET_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_DISABLE_MOBILE_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_ALLOW_PC_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SERVER_PLAY_MODE:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM_PC:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->CANCEL_SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->VERIFY_JOIN_ROOM_PASSWORD:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_BATTLE_AREA:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_UDP_FRAME_SERVER:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_KICK_OUT_ROOM_POSITION_INFO:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->ROOM_SPECTATOR_SIT:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 13
    :pswitch_c
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->DISCONNECT_LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 14
    :pswitch_d
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SHARE_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 15
    :pswitch_e
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->PLAYER_JOIN_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 16
    :pswitch_f
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->CANCEL_SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 17
    :pswitch_10
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->PLAYER_READY_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 18
    :pswitch_11
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->LOBBY_START_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 19
    :pswitch_12
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SEARCH_ROOM_BY_ID:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 20
    :pswitch_13
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 21
    :pswitch_14
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->KICK_OUT_ROOM_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 22
    :pswitch_15
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->DISSOLVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 23
    :pswitch_16
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 24
    :pswitch_17
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P4_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 25
    :pswitch_18
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P3_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 26
    :pswitch_19
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P2_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 27
    :pswitch_1a
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P1_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 28
    :pswitch_1b
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 29
    :pswitch_1c
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_POSITION_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 30
    :pswitch_1d
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SPECTATOR_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 31
    :pswitch_1e
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PERIPHERAL_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 32
    :pswitch_1f
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PASSWORD_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 33
    :pswitch_20
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CHALLENGE_COINS_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 34
    :pswitch_21
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->CREATE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 35
    :pswitch_22
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->SUBSCRIBE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 36
    :pswitch_23
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->PING:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 37
    :pswitch_24
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->LOGIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    .line 38
    :pswitch_25
    sget-object p0, Lcom/papa91/battle/protocol/Request$ProtoType;->UNDEFINED_REQUEST:Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/papa91/battle/protocol/Request$ProtoType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/papa91/battle/protocol/Request$ProtoType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/papa91/battle/protocol/Request$ProtoType;->forNumber(I)Lcom/papa91/battle/protocol/Request$ProtoType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/papa91/battle/protocol/Request$ProtoType;
    .locals 1

    .line 1
    const-class v0, Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object p0
.end method

.method public static values()[Lcom/papa91/battle/protocol/Request$ProtoType;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->$VALUES:[Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0}, [Lcom/papa91/battle/protocol/Request$ProtoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/papa91/battle/protocol/Request$ProtoType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Request$ProtoType;->value:I

    return v0
.end method
