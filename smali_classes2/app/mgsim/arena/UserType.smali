.class public final enum Lapp/mgsim/arena/UserType;
.super Ljava/lang/Enum;
.source "UserType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lapp/mgsim/arena/UserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lapp/mgsim/arena/UserType;

.field public static final enum OWNER:Lapp/mgsim/arena/UserType;

.field public static final enum SPECTATOR:Lapp/mgsim/arena/UserType;

.field public static final enum TENANT:Lapp/mgsim/arena/UserType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lapp/mgsim/arena/UserType;

    const-string v1, "OWNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lapp/mgsim/arena/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 2
    new-instance v1, Lapp/mgsim/arena/UserType;

    const-string v3, "TENANT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lapp/mgsim/arena/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lapp/mgsim/arena/UserType;->TENANT:Lapp/mgsim/arena/UserType;

    .line 3
    new-instance v3, Lapp/mgsim/arena/UserType;

    const-string v5, "SPECTATOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lapp/mgsim/arena/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lapp/mgsim/arena/UserType;->SPECTATOR:Lapp/mgsim/arena/UserType;

    const/4 v5, 0x3

    new-array v5, v5, [Lapp/mgsim/arena/UserType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lapp/mgsim/arena/UserType;->$VALUES:[Lapp/mgsim/arena/UserType;

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

.method public static valueOf(Ljava/lang/String;)Lapp/mgsim/arena/UserType;
    .locals 1

    .line 1
    const-class v0, Lapp/mgsim/arena/UserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lapp/mgsim/arena/UserType;

    return-object p0
.end method

.method public static values()[Lapp/mgsim/arena/UserType;
    .locals 1

    .line 1
    sget-object v0, Lapp/mgsim/arena/UserType;->$VALUES:[Lapp/mgsim/arena/UserType;

    invoke-virtual {v0}, [Lapp/mgsim/arena/UserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapp/mgsim/arena/UserType;

    return-object v0
.end method
