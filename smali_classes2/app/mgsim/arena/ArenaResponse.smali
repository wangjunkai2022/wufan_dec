.class public Lapp/mgsim/arena/ArenaResponse;
.super Ljava/lang/Object;
.source "ArenaResponse.java"


# static fields
.field public static final ERROR_TYPE_CREATE_ROOM_NO_CHALLENGE_COINS:I = 0xb

.field public static final ERROR_TYPE_DISABLED:I = 0x3e9

.field public static final ERROR_TYPE_ERROR_MESSAGE:I = 0xf

.field public static final ERROR_TYPE_INTERNAL_FAILURE:I = 0x3

.field public static final ERROR_TYPE_JOIN_GAME_ROOM_ERROR_FULL:I = 0x9

.field public static final ERROR_TYPE_JOIN_GAME_ROOM_ERROR_KICK:I = 0x10

.field public static final ERROR_TYPE_JOIN_GAME_ROOM_ERROR_NEED_PASSWORD:I = 0xa

.field public static final ERROR_TYPE_JOIN_GAME_ROOM_ERROR_NO_CHALLENGE_COINS:I = 0xd

.field public static final ERROR_TYPE_JOIN_GAME_ROOM_ERROR_NO_WHITE:I = 0x11

.field public static final ERROR_TYPE_JOIN_GAME_ROOM_ERROR_PASSWORD:I = 0x7

.field public static final ERROR_TYPE_NOT_FOUND_ROOM:I = 0x8

.field public static final ERROR_TYPE_OTHER:I = 0x3e8

.field public static final ERROR_TYPE_PARAMS_FAILURE:I = 0x2

.field public static final ERROR_TYPE_ROOM_ERROR_DISSOLVE:I = 0xe

.field public static final ERROR_TYPE_ROOM_ERROR_NO_CHALLENGE_COINS:I = 0xc

.field public static final ERROR_TYPE_SERVICE_FAILURE:I = 0x1

.field public static final ERROR_TYPE_UNDEFINED_CODE:I = 0x0

.field public static final MESSAGE_TYPE_PUSH:I = 0x2

.field public static final MESSAGE_TYPE_RESPONSE:I = 0x1

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1


# instance fields
.field public data:Ljava/lang/Object;

.field public errorInfo:Ljava/lang/String;

.field public errorType:I

.field public joinSpectatorReason:Ljava/lang/String;

.field public messageType:I

.field public request:Lapp/mgsim/arena/ArenaRequest;

.field public responseCode:I

.field public responseType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    return-void
.end method
