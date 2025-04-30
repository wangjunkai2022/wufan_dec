.class public final enum Lcom/papa91/battle/protocol/Response$ProtoType;
.super Ljava/lang/Enum;
.source "Response.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/papa91/battle/protocol/Response$ProtoType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final enum ACCOUNT_KICK_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final ACCOUNT_KICK_BROADCAST_VALUE:I = 0xd

.field public static final enum CREATE_ROOM:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final enum CREATE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final CREATE_ROOM_BROADCAST_VALUE:I = 0x3

.field public static final CREATE_ROOM_VALUE:I = 0x2

.field public static final enum DISSOLVE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final DISSOLVE_ROOM_BROADCAST_VALUE:I = 0x6

.field public static final enum FORCE_DISSOLVE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final FORCE_DISSOLVE_ROOM_BROADCAST_VALUE:I = 0x16

.field public static final enum FULL_PUSH_ROOM_LIST_FINISH:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final FULL_PUSH_ROOM_LIST_FINISH_VALUE:I = 0xa

.field public static final enum FULL_PUSH_ROOM_LIST_ING:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final FULL_PUSH_ROOM_LIST_ING_VALUE:I = 0x9

.field public static final enum GLOBAL_MESSAGE_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final GLOBAL_MESSAGE_BROADCAST_VALUE:I = 0xf

.field public static final enum IDLE_TIMEOUT:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final IDLE_TIMEOUT_VALUE:I = 0x11

.field public static final enum KICK_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final KICK_ROOM_BROADCAST_VALUE:I = 0xb

.field public static final enum MULTI_USER_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final MULTI_USER_BROADCAST_VALUE:I = 0x5

.field public static final enum PONG:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final PONG_VALUE:I = 0x1

.field public static final enum REFERSH_USER_INFO:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final REFERSH_USER_INFO_VALUE:I = 0x15

.field public static final enum REFRESH_ROOM_LIST_DISSOLVE:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final REFRESH_ROOM_LIST_DISSOLVE_VALUE:I = 0x8

.field public static final enum REFRESH_ROOM_LIST_UPDATE:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final REFRESH_ROOM_LIST_UPDATE_VALUE:I = 0x7

.field public static final enum ROOM_READY_TIMEOUT_KICKOUT:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final ROOM_READY_TIMEOUT_KICKOUT_VALUE:I = 0x13

.field public static final enum ROOM_START_TIMEOUT_KICKOUT:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final ROOM_START_TIMEOUT_KICKOUT_VALUE:I = 0x14

.field public static final enum START_GAME_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final START_GAME_ROOM_BROADCAST_VALUE:I = 0xc

.field public static final enum SYNC_ROOM_INFO:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final SYNC_ROOM_INFO_VALUE:I = 0xe

.field public static final enum UNDEFINED_RESPONSE:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final UNDEFINED_RESPONSE_VALUE:I = 0x0

.field public static final enum UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final enum UPDATE_AREA_ONLINE_PEOPLE_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final UPDATE_AREA_ONLINE_PEOPLE_BROADCAST_VALUE:I = 0x12

.field public static final enum UPDATE_FRAME_SERVER_ADDR:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final UPDATE_FRAME_SERVER_ADDR_VALUE:I = 0x10

.field public static final enum UPDATE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

.field public static final UPDATE_ROOM_BROADCAST_VALUE:I = 0x4

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/papa91/battle/protocol/Response$ProtoType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v1, "UNDEFINED_RESPONSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/papa91/battle/protocol/Response$ProtoType;->UNDEFINED_RESPONSE:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 2
    new-instance v1, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v3, "PONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->PONG:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 3
    new-instance v3, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v5, "CREATE_ROOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/papa91/battle/protocol/Response$ProtoType;->CREATE_ROOM:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 4
    new-instance v5, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v7, "CREATE_ROOM_BROADCAST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/papa91/battle/protocol/Response$ProtoType;->CREATE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 5
    new-instance v7, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v9, "UPDATE_ROOM_BROADCAST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/papa91/battle/protocol/Response$ProtoType;->UPDATE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 6
    new-instance v9, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v11, "KICK_ROOM_BROADCAST"

    const/4 v12, 0x5

    const/16 v13, 0xb

    invoke-direct {v9, v11, v12, v13}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/papa91/battle/protocol/Response$ProtoType;->KICK_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 7
    new-instance v11, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v14, "MULTI_USER_BROADCAST"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v12}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/papa91/battle/protocol/Response$ProtoType;->MULTI_USER_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 8
    new-instance v14, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v12, "DISSOLVE_ROOM_BROADCAST"

    const/4 v10, 0x7

    invoke-direct {v14, v12, v10, v15}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/papa91/battle/protocol/Response$ProtoType;->DISSOLVE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 9
    new-instance v12, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v15, "REFRESH_ROOM_LIST_UPDATE"

    const/16 v8, 0x8

    invoke-direct {v12, v15, v8, v10}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/papa91/battle/protocol/Response$ProtoType;->REFRESH_ROOM_LIST_UPDATE:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 10
    new-instance v15, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v10, "REFRESH_ROOM_LIST_DISSOLVE"

    const/16 v6, 0x9

    invoke-direct {v15, v10, v6, v8}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/papa91/battle/protocol/Response$ProtoType;->REFRESH_ROOM_LIST_DISSOLVE:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 11
    new-instance v10, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v8, "FULL_PUSH_ROOM_LIST_ING"

    const/16 v4, 0xa

    invoke-direct {v10, v8, v4, v6}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/papa91/battle/protocol/Response$ProtoType;->FULL_PUSH_ROOM_LIST_ING:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 12
    new-instance v8, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v6, "FULL_PUSH_ROOM_LIST_FINISH"

    invoke-direct {v8, v6, v13, v4}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/papa91/battle/protocol/Response$ProtoType;->FULL_PUSH_ROOM_LIST_FINISH:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 13
    new-instance v6, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v13, "START_GAME_ROOM_BROADCAST"

    const/16 v4, 0xc

    invoke-direct {v6, v13, v4, v4}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/papa91/battle/protocol/Response$ProtoType;->START_GAME_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 14
    new-instance v13, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v4, "ACCOUNT_KICK_BROADCAST"

    const/16 v2, 0xd

    invoke-direct {v13, v4, v2, v2}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/papa91/battle/protocol/Response$ProtoType;->ACCOUNT_KICK_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 15
    new-instance v4, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v2, "SYNC_ROOM_INFO"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v4, v2, v13, v13}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Response$ProtoType;->SYNC_ROOM_INFO:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 16
    new-instance v2, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v13, "GLOBAL_MESSAGE_BROADCAST"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v13, v4, v4}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Response$ProtoType;->GLOBAL_MESSAGE_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 17
    new-instance v13, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v4, "UPDATE_FRAME_SERVER_ADDR"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v13, v4, v2, v2}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/papa91/battle/protocol/Response$ProtoType;->UPDATE_FRAME_SERVER_ADDR:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 18
    new-instance v4, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v2, "IDLE_TIMEOUT"

    move-object/from16 v19, v13

    const/16 v13, 0x11

    invoke-direct {v4, v2, v13, v13}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Response$ProtoType;->IDLE_TIMEOUT:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 19
    new-instance v2, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v13, "UPDATE_AREA_ONLINE_PEOPLE_BROADCAST"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v13, v4, v4}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Response$ProtoType;->UPDATE_AREA_ONLINE_PEOPLE_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 20
    new-instance v13, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v4, "ROOM_READY_TIMEOUT_KICKOUT"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v13, v4, v2, v2}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/papa91/battle/protocol/Response$ProtoType;->ROOM_READY_TIMEOUT_KICKOUT:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 21
    new-instance v4, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v2, "ROOM_START_TIMEOUT_KICKOUT"

    move-object/from16 v22, v13

    const/16 v13, 0x14

    invoke-direct {v4, v2, v13, v13}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/papa91/battle/protocol/Response$ProtoType;->ROOM_START_TIMEOUT_KICKOUT:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 22
    new-instance v2, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v13, "REFERSH_USER_INFO"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v13, v4, v4}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Response$ProtoType;->REFERSH_USER_INFO:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 23
    new-instance v13, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v4, "FORCE_DISSOLVE_ROOM_BROADCAST"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v6

    const/16 v6, 0x16

    invoke-direct {v13, v4, v2, v6}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/papa91/battle/protocol/Response$ProtoType;->FORCE_DISSOLVE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 24
    new-instance v2, Lcom/papa91/battle/protocol/Response$ProtoType;

    const-string v4, "UNRECOGNIZED"

    const/16 v6, 0x17

    move-object/from16 v26, v13

    const/4 v13, -0x1

    invoke-direct {v2, v4, v6, v13}, Lcom/papa91/battle/protocol/Response$ProtoType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/papa91/battle/protocol/Response$ProtoType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$ProtoType;

    const/16 v4, 0x18

    new-array v4, v4, [Lcom/papa91/battle/protocol/Response$ProtoType;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v14, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v15, v4, v0

    const/16 v0, 0xa

    aput-object v10, v4, v0

    const/16 v0, 0xb

    aput-object v8, v4, v0

    const/16 v0, 0xc

    aput-object v25, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v2, v4, v0

    .line 25
    sput-object v4, Lcom/papa91/battle/protocol/Response$ProtoType;->$VALUES:[Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 26
    new-instance v0, Lcom/papa91/battle/protocol/Response$ProtoType$1;

    invoke-direct {v0}, Lcom/papa91/battle/protocol/Response$ProtoType$1;-><init>()V

    sput-object v0, Lcom/papa91/battle/protocol/Response$ProtoType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/papa91/battle/protocol/Response$ProtoType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/papa91/battle/protocol/Response$ProtoType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->FORCE_DISSOLVE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->REFERSH_USER_INFO:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->ROOM_START_TIMEOUT_KICKOUT:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->ROOM_READY_TIMEOUT_KICKOUT:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->UPDATE_AREA_ONLINE_PEOPLE_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->IDLE_TIMEOUT:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->UPDATE_FRAME_SERVER_ADDR:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->GLOBAL_MESSAGE_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->SYNC_ROOM_INFO:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->ACCOUNT_KICK_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->START_GAME_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->KICK_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 13
    :pswitch_c
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->FULL_PUSH_ROOM_LIST_FINISH:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 14
    :pswitch_d
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->FULL_PUSH_ROOM_LIST_ING:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 15
    :pswitch_e
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->REFRESH_ROOM_LIST_DISSOLVE:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 16
    :pswitch_f
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->REFRESH_ROOM_LIST_UPDATE:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 17
    :pswitch_10
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->DISSOLVE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 18
    :pswitch_11
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->MULTI_USER_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 19
    :pswitch_12
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->UPDATE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 20
    :pswitch_13
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->CREATE_ROOM_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 21
    :pswitch_14
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->CREATE_ROOM:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 22
    :pswitch_15
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->PONG:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    .line 23
    :pswitch_16
    sget-object p0, Lcom/papa91/battle/protocol/Response$ProtoType;->UNDEFINED_RESPONSE:Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
            "Lcom/papa91/battle/protocol/Response$ProtoType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response$ProtoType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/papa91/battle/protocol/Response$ProtoType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/papa91/battle/protocol/Response$ProtoType;->forNumber(I)Lcom/papa91/battle/protocol/Response$ProtoType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/papa91/battle/protocol/Response$ProtoType;
    .locals 1

    .line 1
    const-class v0, Lcom/papa91/battle/protocol/Response$ProtoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object p0
.end method

.method public static values()[Lcom/papa91/battle/protocol/Response$ProtoType;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response$ProtoType;->$VALUES:[Lcom/papa91/battle/protocol/Response$ProtoType;

    invoke-virtual {v0}, [Lcom/papa91/battle/protocol/Response$ProtoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/papa91/battle/protocol/Response$ProtoType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response$ProtoType;->value:I

    return v0
.end method
