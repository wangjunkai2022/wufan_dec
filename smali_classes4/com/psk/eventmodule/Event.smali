.class public final enum Lcom/psk/eventmodule/Event;
.super Ljava/lang/Enum;
.source "Event.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/psk/eventmodule/Event;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/psk/eventmodule/Event;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "startApp",
        "visitPage",
        "itemClick",
        "exposure",
        "conversion",
        "click",
        "check",
        "EventModule_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/psk/eventmodule/Event;

.field public static final enum check:Lcom/psk/eventmodule/Event;

.field public static final enum click:Lcom/psk/eventmodule/Event;

.field public static final enum conversion:Lcom/psk/eventmodule/Event;

.field public static final enum exposure:Lcom/psk/eventmodule/Event;

.field public static final enum itemClick:Lcom/psk/eventmodule/Event;

.field public static final enum startApp:Lcom/psk/eventmodule/Event;

.field public static final enum visitPage:Lcom/psk/eventmodule/Event;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/psk/eventmodule/Event;

    new-instance v1, Lcom/psk/eventmodule/Event;

    const-string v2, "startApp"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/psk/eventmodule/Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/psk/eventmodule/Event;->startApp:Lcom/psk/eventmodule/Event;

    aput-object v1, v0, v3

    new-instance v1, Lcom/psk/eventmodule/Event;

    const-string v2, "visitPage"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/psk/eventmodule/Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/psk/eventmodule/Event;->visitPage:Lcom/psk/eventmodule/Event;

    aput-object v1, v0, v3

    new-instance v1, Lcom/psk/eventmodule/Event;

    const-string v2, "itemClick"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/psk/eventmodule/Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/psk/eventmodule/Event;->itemClick:Lcom/psk/eventmodule/Event;

    aput-object v1, v0, v3

    new-instance v1, Lcom/psk/eventmodule/Event;

    const-string v2, "exposure"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/psk/eventmodule/Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/psk/eventmodule/Event;->exposure:Lcom/psk/eventmodule/Event;

    aput-object v1, v0, v3

    new-instance v1, Lcom/psk/eventmodule/Event;

    const-string v2, "conversion"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/psk/eventmodule/Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/psk/eventmodule/Event;->conversion:Lcom/psk/eventmodule/Event;

    aput-object v1, v0, v3

    new-instance v1, Lcom/psk/eventmodule/Event;

    const-string v2, "click"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/psk/eventmodule/Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/psk/eventmodule/Event;->click:Lcom/psk/eventmodule/Event;

    aput-object v1, v0, v3

    new-instance v1, Lcom/psk/eventmodule/Event;

    const-string v2, "check"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/psk/eventmodule/Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/psk/eventmodule/Event;->check:Lcom/psk/eventmodule/Event;

    aput-object v1, v0, v3

    sput-object v0, Lcom/psk/eventmodule/Event;->$VALUES:[Lcom/psk/eventmodule/Event;

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

.method public static valueOf(Ljava/lang/String;)Lcom/psk/eventmodule/Event;
    .locals 1

    const-class v0, Lcom/psk/eventmodule/Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/psk/eventmodule/Event;

    return-object p0
.end method

.method public static values()[Lcom/psk/eventmodule/Event;
    .locals 1

    sget-object v0, Lcom/psk/eventmodule/Event;->$VALUES:[Lcom/psk/eventmodule/Event;

    invoke-virtual {v0}, [Lcom/psk/eventmodule/Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/psk/eventmodule/Event;

    return-object v0
.end method
