.class public final enum Lcom/wufan/friend/chat/protocol/NotificationType;
.super Ljava/lang/Enum;
.source "NotificationType.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wufan/friend/chat/protocol/NotificationType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final enum CHAT_MESSAGE:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final CHAT_MESSAGE_VALUE:I = 0x6

.field public static final enum FRIEND_ADD_REQUEST:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final FRIEND_ADD_REQUEST_VALUE:I = 0x7

.field public static final enum FRIEND_ADD_SUCCESS:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final FRIEND_ADD_SUCCESS_VALUE:I = 0x9

.field public static final enum FRIEND_ALL_FRIENDS:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final FRIEND_ALL_FRIENDS_VALUE:I = 0xb

.field public static final enum FRIEND_CHANGE_PLAY_STATE:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final FRIEND_CHANGE_PLAY_STATE_VALUE:I = 0x3

.field public static final enum FRIEND_CHANGE_STATE:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final FRIEND_CHANGE_STATE_VALUE:I = 0x2

.field public static final enum FRIEND_DELETE_SUCCESS:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final FRIEND_DELETE_SUCCESS_VALUE:I = 0xd

.field public static final enum FRIEND_ONLINE_FRIENDS:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final FRIEND_ONLINE_FRIENDS_VALUE:I = 0x5

.field public static final enum INVITE_BATTLE:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final INVITE_BATTLE_VALUE:I = 0x1

.field public static final enum LEAVE_ROOM:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final LEAVE_ROOM_VALUE:I = 0x8

.field public static final enum PLAYER_BANNED:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final PLAYER_BANNED_VALUE:I = 0xe

.field public static final enum RECOMMEND_PLAYER_STATE_CHANGE:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final RECOMMEND_PLAYER_STATE_CHANGE_VALUE:I = 0xc

.field public static final enum REJECT_BATTLE_INVITE:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final REJECT_BATTLE_INVITE_VALUE:I = 0xa

.field public static final enum SYS_KICK:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final SYS_KICK_VALUE:I = 0x4

.field public static final enum UNKNOWN_NT:Lcom/wufan/friend/chat/protocol/NotificationType;

.field public static final UNKNOWN_NT_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/NotificationType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/friend/chat/protocol/NotificationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v1, "UNKNOWN_NT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wufan/friend/chat/protocol/NotificationType;->UNKNOWN_NT:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 2
    new-instance v1, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v3, "INVITE_BATTLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/wufan/friend/chat/protocol/NotificationType;->INVITE_BATTLE:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 3
    new-instance v3, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v5, "FRIEND_CHANGE_STATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_CHANGE_STATE:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 4
    new-instance v5, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v7, "FRIEND_CHANGE_PLAY_STATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_CHANGE_PLAY_STATE:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 5
    new-instance v7, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v9, "SYS_KICK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/wufan/friend/chat/protocol/NotificationType;->SYS_KICK:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 6
    new-instance v9, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v11, "FRIEND_ONLINE_FRIENDS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_ONLINE_FRIENDS:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 7
    new-instance v11, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v13, "CHAT_MESSAGE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/wufan/friend/chat/protocol/NotificationType;->CHAT_MESSAGE:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 8
    new-instance v13, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v15, "FRIEND_ADD_REQUEST"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_ADD_REQUEST:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 9
    new-instance v15, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v14, "LEAVE_ROOM"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/wufan/friend/chat/protocol/NotificationType;->LEAVE_ROOM:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 10
    new-instance v14, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v12, "FRIEND_ADD_SUCCESS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_ADD_SUCCESS:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 11
    new-instance v12, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v10, "REJECT_BATTLE_INVITE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/wufan/friend/chat/protocol/NotificationType;->REJECT_BATTLE_INVITE:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 12
    new-instance v10, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v8, "FRIEND_ALL_FRIENDS"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_ALL_FRIENDS:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 13
    new-instance v8, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v6, "RECOMMEND_PLAYER_STATE_CHANGE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/wufan/friend/chat/protocol/NotificationType;->RECOMMEND_PLAYER_STATE_CHANGE:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 14
    new-instance v6, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v4, "FRIEND_DELETE_SUCCESS"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_DELETE_SUCCESS:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 15
    new-instance v4, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v2, "PLAYER_BANNED"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/wufan/friend/chat/protocol/NotificationType;->PLAYER_BANNED:Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 16
    new-instance v2, Lcom/wufan/friend/chat/protocol/NotificationType;

    const-string v6, "UNRECOGNIZED"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    move-object/from16 v18, v8

    const/4 v8, -0x1

    invoke-direct {v2, v6, v4, v8}, Lcom/wufan/friend/chat/protocol/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/wufan/friend/chat/protocol/NotificationType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/NotificationType;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/wufan/friend/chat/protocol/NotificationType;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v18, v6, v0

    const/16 v0, 0xd

    aput-object v16, v6, v0

    const/16 v0, 0xe

    aput-object v17, v6, v0

    aput-object v2, v6, v4

    .line 17
    sput-object v6, Lcom/wufan/friend/chat/protocol/NotificationType;->$VALUES:[Lcom/wufan/friend/chat/protocol/NotificationType;

    .line 18
    new-instance v0, Lcom/wufan/friend/chat/protocol/NotificationType$a;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/NotificationType$a;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/NotificationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/wufan/friend/chat/protocol/NotificationType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/wufan/friend/chat/protocol/NotificationType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->PLAYER_BANNED:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_DELETE_SUCCESS:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->RECOMMEND_PLAYER_STATE_CHANGE:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_ALL_FRIENDS:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->REJECT_BATTLE_INVITE:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_ADD_SUCCESS:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->LEAVE_ROOM:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_ADD_REQUEST:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->CHAT_MESSAGE:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_ONLINE_FRIENDS:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->SYS_KICK:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_CHANGE_PLAY_STATE:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 13
    :pswitch_c
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->FRIEND_CHANGE_STATE:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 14
    :pswitch_d
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->INVITE_BATTLE:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    .line 15
    :pswitch_e
    sget-object p0, Lcom/wufan/friend/chat/protocol/NotificationType;->UNKNOWN_NT:Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
            "Lcom/wufan/friend/chat/protocol/NotificationType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/wufan/friend/chat/protocol/NotificationType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/wufan/friend/chat/protocol/NotificationType;->forNumber(I)Lcom/wufan/friend/chat/protocol/NotificationType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/NotificationType;
    .locals 1

    .line 1
    const-class v0, Lcom/wufan/friend/chat/protocol/NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object p0
.end method

.method public static values()[Lcom/wufan/friend/chat/protocol/NotificationType;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationType;->$VALUES:[Lcom/wufan/friend/chat/protocol/NotificationType;

    invoke-virtual {v0}, [Lcom/wufan/friend/chat/protocol/NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wufan/friend/chat/protocol/NotificationType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/NotificationType;->value:I

    return v0
.end method
