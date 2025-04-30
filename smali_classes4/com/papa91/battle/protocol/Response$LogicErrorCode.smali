.class public final enum Lcom/papa91/battle/protocol/Response$LogicErrorCode;
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
    name = "LogicErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/papa91/battle/protocol/Response$LogicErrorCode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final enum CREATE_ROOM_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final CREATE_ROOM_NO_CHALLENGE_COINS_VALUE:I = 0x5

.field public static final enum ERROR_MESSAGE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final ERROR_MESSAGE_VALUE:I = 0x8

.field public static final enum JOIN_GAME_ROOM_ERROR_FULL:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final JOIN_GAME_ROOM_ERROR_FULL_VALUE:I = 0x3

.field public static final enum JOIN_GAME_ROOM_ERROR_KICK:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final JOIN_GAME_ROOM_ERROR_KICK_VALUE:I = 0xa

.field public static final enum JOIN_GAME_ROOM_ERROR_NEED_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final JOIN_GAME_ROOM_ERROR_NEED_PASSWORD_VALUE:I = 0x4

.field public static final enum JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS_VALUE:I = 0x7

.field public static final enum JOIN_GAME_ROOM_ERROR_NO_WHITE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final JOIN_GAME_ROOM_ERROR_NO_WHITE_VALUE:I = 0xb

.field public static final enum JOIN_GAME_ROOM_ERROR_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final JOIN_GAME_ROOM_ERROR_PASSWORD_VALUE:I = 0x1

.field public static final enum NOT_FOUND_ROOM:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final NOT_FOUND_ROOM_VALUE:I = 0x2

.field public static final enum ROOM_ERROR_DISSOLVE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final ROOM_ERROR_DISSOLVE_VALUE:I = 0x9

.field public static final enum ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final ROOM_ERROR_NO_CHALLENGE_COINS_VALUE:I = 0x6

.field public static final enum UNDEFINED_EROR_CODE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field public static final UNDEFINED_EROR_CODE_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/papa91/battle/protocol/Response$LogicErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const-string v1, "UNDEFINED_EROR_CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNDEFINED_EROR_CODE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 2
    new-instance v1, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const-string v3, "JOIN_GAME_ROOM_ERROR_PASSWORD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 3
    new-instance v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const-string v5, "NOT_FOUND_ROOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->NOT_FOUND_ROOM:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 4
    new-instance v5, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const-string v7, "JOIN_GAME_ROOM_ERROR_FULL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_FULL:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 5
    new-instance v7, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const-string v9, "JOIN_GAME_ROOM_ERROR_NEED_PASSWORD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NEED_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 6
    new-instance v9, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const-string v11, "CREATE_ROOM_NO_CHALLENGE_COINS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->CREATE_ROOM_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 7
    new-instance v11, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const-string v13, "ROOM_ERROR_NO_CHALLENGE_COINS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 8
    new-instance v13, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const-string v15, "JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 9
    new-instance v15, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const-string v14, "ERROR_MESSAGE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ERROR_MESSAGE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 10
    new-instance v14, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const-string v12, "ROOM_ERROR_DISSOLVE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_DISSOLVE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 11
    new-instance v12, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const-string v10, "JOIN_GAME_ROOM_ERROR_KICK"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_KICK:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 12
    new-instance v10, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const-string v8, "JOIN_GAME_ROOM_ERROR_NO_WHITE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_WHITE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 13
    new-instance v8, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const-string v6, "UNRECOGNIZED"

    const/16 v4, 0xc

    const/4 v2, -0x1

    invoke-direct {v8, v6, v4, v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/papa91/battle/protocol/Response$LogicErrorCode;

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

    aput-object v8, v2, v4

    .line 14
    sput-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->$VALUES:[Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 15
    new-instance v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode$1;

    invoke-direct {v0}, Lcom/papa91/battle/protocol/Response$LogicErrorCode$1;-><init>()V

    sput-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_WHITE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_KICK:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_DISSOLVE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ERROR_MESSAGE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->ROOM_ERROR_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->CREATE_ROOM_NO_CHALLENGE_COINS:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_NEED_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_FULL:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->NOT_FOUND_ROOM:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->JOIN_GAME_ROOM_ERROR_PASSWORD:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNDEFINED_EROR_CODE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
            "Lcom/papa91/battle/protocol/Response$LogicErrorCode;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->forNumber(I)Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->$VALUES:[Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    invoke-virtual {v0}, [Lcom/papa91/battle/protocol/Response$LogicErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->value:I

    return v0
.end method
