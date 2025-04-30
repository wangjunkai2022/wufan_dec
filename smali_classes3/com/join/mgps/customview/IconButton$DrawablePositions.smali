.class final enum Lcom/join/mgps/customview/IconButton$DrawablePositions;
.super Ljava/lang/Enum;
.source "IconButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/IconButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrawablePositions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/customview/IconButton$DrawablePositions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/customview/IconButton$DrawablePositions;

.field public static final enum LEFT:Lcom/join/mgps/customview/IconButton$DrawablePositions;

.field public static final enum LEFT_AND_RIGHT:Lcom/join/mgps/customview/IconButton$DrawablePositions;

.field public static final enum NONE:Lcom/join/mgps/customview/IconButton$DrawablePositions;

.field public static final enum RIGHT:Lcom/join/mgps/customview/IconButton$DrawablePositions;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/join/mgps/customview/IconButton$DrawablePositions;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/IconButton$DrawablePositions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/join/mgps/customview/IconButton$DrawablePositions;->NONE:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 2
    new-instance v1, Lcom/join/mgps/customview/IconButton$DrawablePositions;

    const-string v3, "LEFT_AND_RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/customview/IconButton$DrawablePositions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/join/mgps/customview/IconButton$DrawablePositions;->LEFT_AND_RIGHT:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 3
    new-instance v3, Lcom/join/mgps/customview/IconButton$DrawablePositions;

    const-string v5, "LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/join/mgps/customview/IconButton$DrawablePositions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/join/mgps/customview/IconButton$DrawablePositions;->LEFT:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 4
    new-instance v5, Lcom/join/mgps/customview/IconButton$DrawablePositions;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/join/mgps/customview/IconButton$DrawablePositions;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/join/mgps/customview/IconButton$DrawablePositions;->RIGHT:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/join/mgps/customview/IconButton$DrawablePositions;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/join/mgps/customview/IconButton$DrawablePositions;->$VALUES:[Lcom/join/mgps/customview/IconButton$DrawablePositions;

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

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/customview/IconButton$DrawablePositions;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/customview/IconButton$DrawablePositions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/customview/IconButton$DrawablePositions;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/customview/IconButton$DrawablePositions;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/IconButton$DrawablePositions;->$VALUES:[Lcom/join/mgps/customview/IconButton$DrawablePositions;

    invoke-virtual {v0}, [Lcom/join/mgps/customview/IconButton$DrawablePositions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/customview/IconButton$DrawablePositions;

    return-object v0
.end method
