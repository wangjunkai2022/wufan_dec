.class public final enum Lcom/papa/sim/statistic/ExtFrom;
.super Ljava/lang/Enum;
.source "ExtFrom.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/papa/sim/statistic/ExtFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/papa/sim/statistic/ExtFrom;

.field public static final enum battle:Lcom/papa/sim/statistic/ExtFrom;

.field public static final enum home:Lcom/papa/sim/statistic/ExtFrom;

.field public static final enum platform:Lcom/papa/sim/statistic/ExtFrom;

.field public static final enum world:Lcom/papa/sim/statistic/ExtFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/ExtFrom;

    const-string v1, "world"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/papa/sim/statistic/ExtFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/papa/sim/statistic/ExtFrom;->world:Lcom/papa/sim/statistic/ExtFrom;

    new-instance v1, Lcom/papa/sim/statistic/ExtFrom;

    const-string v3, "platform"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/papa/sim/statistic/ExtFrom;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/papa/sim/statistic/ExtFrom;->platform:Lcom/papa/sim/statistic/ExtFrom;

    new-instance v3, Lcom/papa/sim/statistic/ExtFrom;

    const-string v5, "battle"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/papa/sim/statistic/ExtFrom;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/papa/sim/statistic/ExtFrom;->battle:Lcom/papa/sim/statistic/ExtFrom;

    new-instance v5, Lcom/papa/sim/statistic/ExtFrom;

    const-string v7, "home"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/papa/sim/statistic/ExtFrom;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/papa/sim/statistic/ExtFrom;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/papa/sim/statistic/ExtFrom;->$VALUES:[Lcom/papa/sim/statistic/ExtFrom;

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

.method public static valueOf(Ljava/lang/String;)Lcom/papa/sim/statistic/ExtFrom;
    .locals 1

    .line 1
    const-class v0, Lcom/papa/sim/statistic/ExtFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/papa/sim/statistic/ExtFrom;

    return-object p0
.end method

.method public static values()[Lcom/papa/sim/statistic/ExtFrom;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/ExtFrom;->$VALUES:[Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v0}, [Lcom/papa/sim/statistic/ExtFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/papa/sim/statistic/ExtFrom;

    return-object v0
.end method
