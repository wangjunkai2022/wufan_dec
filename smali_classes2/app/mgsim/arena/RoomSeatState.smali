.class public final enum Lapp/mgsim/arena/RoomSeatState;
.super Ljava/lang/Enum;
.source "RoomSeatState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lapp/mgsim/arena/RoomSeatState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lapp/mgsim/arena/RoomSeatState;

.field public static final enum CLOSE:Lapp/mgsim/arena/RoomSeatState;

.field public static final enum OPEN:Lapp/mgsim/arena/RoomSeatState;

.field public static final enum REMOVE:Lapp/mgsim/arena/RoomSeatState;

.field public static final enum REMOVE_AND_REPORT:Lapp/mgsim/arena/RoomSeatState;

.field public static final enum REPORT:Lapp/mgsim/arena/RoomSeatState;

.field public static final enum SEAT:Lapp/mgsim/arena/RoomSeatState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lapp/mgsim/arena/RoomSeatState;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lapp/mgsim/arena/RoomSeatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/mgsim/arena/RoomSeatState;->OPEN:Lapp/mgsim/arena/RoomSeatState;

    .line 2
    new-instance v1, Lapp/mgsim/arena/RoomSeatState;

    const-string v3, "CLOSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lapp/mgsim/arena/RoomSeatState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lapp/mgsim/arena/RoomSeatState;->CLOSE:Lapp/mgsim/arena/RoomSeatState;

    .line 3
    new-instance v3, Lapp/mgsim/arena/RoomSeatState;

    const-string v5, "REMOVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lapp/mgsim/arena/RoomSeatState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lapp/mgsim/arena/RoomSeatState;->REMOVE:Lapp/mgsim/arena/RoomSeatState;

    .line 4
    new-instance v5, Lapp/mgsim/arena/RoomSeatState;

    const-string v7, "SEAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lapp/mgsim/arena/RoomSeatState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lapp/mgsim/arena/RoomSeatState;->SEAT:Lapp/mgsim/arena/RoomSeatState;

    .line 5
    new-instance v7, Lapp/mgsim/arena/RoomSeatState;

    const-string v9, "REPORT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lapp/mgsim/arena/RoomSeatState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lapp/mgsim/arena/RoomSeatState;->REPORT:Lapp/mgsim/arena/RoomSeatState;

    .line 6
    new-instance v9, Lapp/mgsim/arena/RoomSeatState;

    const-string v11, "REMOVE_AND_REPORT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lapp/mgsim/arena/RoomSeatState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lapp/mgsim/arena/RoomSeatState;->REMOVE_AND_REPORT:Lapp/mgsim/arena/RoomSeatState;

    const/4 v11, 0x6

    new-array v11, v11, [Lapp/mgsim/arena/RoomSeatState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lapp/mgsim/arena/RoomSeatState;->$VALUES:[Lapp/mgsim/arena/RoomSeatState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/mgsim/arena/RoomSeatState;
    .locals 1

    .line 1
    const-class v0, Lapp/mgsim/arena/RoomSeatState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lapp/mgsim/arena/RoomSeatState;

    return-object p0
.end method

.method public static values()[Lapp/mgsim/arena/RoomSeatState;
    .locals 1

    .line 1
    sget-object v0, Lapp/mgsim/arena/RoomSeatState;->$VALUES:[Lapp/mgsim/arena/RoomSeatState;

    invoke-virtual {v0}, [Lapp/mgsim/arena/RoomSeatState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapp/mgsim/arena/RoomSeatState;

    return-object v0
.end method
