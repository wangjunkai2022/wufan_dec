.class public final enum Lcom/wufan/friend/chat/protocol/ServicePath;
.super Ljava/lang/Enum;
.source "ServicePath.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wufan/friend/chat/protocol/ServicePath;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final enum BAT_CHAT_ROOM:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final BAT_CHAT_ROOM_VALUE:I = 0x8

.field public static final enum BAT_CHAT_SEND:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final BAT_CHAT_SEND_VALUE:I = 0x9

.field public static final enum BTL_GAME_INVITE:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final BTL_GAME_INVITE_VALUE:I = 0x6

.field public static final enum BTL_GAME_PLAY:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final BTL_GAME_PLAY_VALUE:I = 0x3

.field public static final enum BTL_STATE_CHANGE:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final BTL_STATE_CHANGE_VALUE:I = 0x4

.field public static final enum FRD_GET_ALL_FRIENDS:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final FRD_GET_ALL_FRIENDS_VALUE:I = 0xa

.field public static final enum FRD_GET_FRIENDS:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final FRD_GET_FRIENDS_VALUE:I = 0x7

.field public static final enum RCM_GET_LOCAL_BATTLE_GAME:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final RCM_GET_LOCAL_BATTLE_GAME_VALUE:I = 0xd

.field public static final enum RCM_GET_PLAYER:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final enum RCM_GET_PLAYER_V2:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final RCM_GET_PLAYER_V2_VALUE:I = 0xc

.field public static final RCM_GET_PLAYER_VALUE:I = 0xb

.field public static final enum SYS_HEART:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final SYS_HEART_VALUE:I = 0x2

.field public static final enum SYS_LOGIN:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final SYS_LOGIN_VALUE:I = 0x1

.field public static final enum SYS_ONLINE_STATE:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final SYS_ONLINE_STATE_VALUE:I = 0x5

.field public static final enum UNDEFINED_SP:Lcom/wufan/friend/chat/protocol/ServicePath;

.field public static final UNDEFINED_SP_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ServicePath;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/friend/chat/protocol/ServicePath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v1, "UNDEFINED_SP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wufan/friend/chat/protocol/ServicePath;->UNDEFINED_SP:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 2
    new-instance v1, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v3, "SYS_LOGIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->SYS_LOGIN:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 3
    new-instance v3, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v5, "SYS_HEART"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/wufan/friend/chat/protocol/ServicePath;->SYS_HEART:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 4
    new-instance v5, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v7, "BTL_GAME_PLAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/wufan/friend/chat/protocol/ServicePath;->BTL_GAME_PLAY:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 5
    new-instance v7, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v9, "BTL_STATE_CHANGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/wufan/friend/chat/protocol/ServicePath;->BTL_STATE_CHANGE:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 6
    new-instance v9, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v11, "SYS_ONLINE_STATE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/wufan/friend/chat/protocol/ServicePath;->SYS_ONLINE_STATE:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 7
    new-instance v11, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v13, "BTL_GAME_INVITE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/wufan/friend/chat/protocol/ServicePath;->BTL_GAME_INVITE:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 8
    new-instance v13, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v15, "FRD_GET_FRIENDS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/wufan/friend/chat/protocol/ServicePath;->FRD_GET_FRIENDS:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 9
    new-instance v15, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v14, "BAT_CHAT_ROOM"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/wufan/friend/chat/protocol/ServicePath;->BAT_CHAT_ROOM:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 10
    new-instance v14, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v12, "BAT_CHAT_SEND"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/wufan/friend/chat/protocol/ServicePath;->BAT_CHAT_SEND:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 11
    new-instance v12, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v10, "FRD_GET_ALL_FRIENDS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/wufan/friend/chat/protocol/ServicePath;->FRD_GET_ALL_FRIENDS:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 12
    new-instance v10, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v8, "RCM_GET_PLAYER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/wufan/friend/chat/protocol/ServicePath;->RCM_GET_PLAYER:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 13
    new-instance v8, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v6, "RCM_GET_PLAYER_V2"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/wufan/friend/chat/protocol/ServicePath;->RCM_GET_PLAYER_V2:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 14
    new-instance v6, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v4, "RCM_GET_LOCAL_BATTLE_GAME"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/wufan/friend/chat/protocol/ServicePath;->RCM_GET_LOCAL_BATTLE_GAME:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 15
    new-instance v4, Lcom/wufan/friend/chat/protocol/ServicePath;

    const-string v2, "UNRECOGNIZED"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    move-object/from16 v17, v8

    const/4 v8, -0x1

    invoke-direct {v4, v2, v6, v8}, Lcom/wufan/friend/chat/protocol/ServicePath;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/wufan/friend/chat/protocol/ServicePath;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ServicePath;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/wufan/friend/chat/protocol/ServicePath;

    const/4 v8, 0x0

    aput-object v0, v2, v8

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

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    aput-object v4, v2, v6

    .line 16
    sput-object v2, Lcom/wufan/friend/chat/protocol/ServicePath;->$VALUES:[Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 17
    new-instance v0, Lcom/wufan/friend/chat/protocol/ServicePath$a;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/ServicePath$a;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/ServicePath;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/wufan/friend/chat/protocol/ServicePath;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/wufan/friend/chat/protocol/ServicePath;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->RCM_GET_LOCAL_BATTLE_GAME:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->RCM_GET_PLAYER_V2:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->RCM_GET_PLAYER:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->FRD_GET_ALL_FRIENDS:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->BAT_CHAT_SEND:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->BAT_CHAT_ROOM:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->FRD_GET_FRIENDS:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->BTL_GAME_INVITE:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->SYS_ONLINE_STATE:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->BTL_STATE_CHANGE:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->BTL_GAME_PLAY:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->SYS_HEART:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    .line 13
    :pswitch_c
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->SYS_LOGIN:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    .line 14
    :pswitch_d
    sget-object p0, Lcom/wufan/friend/chat/protocol/ServicePath;->UNDEFINED_SP:Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
            "Lcom/wufan/friend/chat/protocol/ServicePath;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ServicePath;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/wufan/friend/chat/protocol/ServicePath;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/wufan/friend/chat/protocol/ServicePath;->forNumber(I)Lcom/wufan/friend/chat/protocol/ServicePath;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/ServicePath;
    .locals 1

    .line 1
    const-class v0, Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object p0
.end method

.method public static values()[Lcom/wufan/friend/chat/protocol/ServicePath;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ServicePath;->$VALUES:[Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v0}, [Lcom/wufan/friend/chat/protocol/ServicePath;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wufan/friend/chat/protocol/ServicePath;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/ServicePath;->value:I

    return v0
.end method
