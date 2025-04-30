.class public final enum Lcom/papa91/arc/MenuFrameActivity$MenuType;
.super Ljava/lang/Enum;
.source "MenuFrameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/MenuFrameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/papa91/arc/MenuFrameActivity$MenuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/papa91/arc/MenuFrameActivity$MenuType;

.field public static final enum cheating:Lcom/papa91/arc/MenuFrameActivity$MenuType;

.field public static final enum performance:Lcom/papa91/arc/MenuFrameActivity$MenuType;

.field public static final enum slot:Lcom/papa91/arc/MenuFrameActivity$MenuType;

.field public static final enum vip:Lcom/papa91/arc/MenuFrameActivity$MenuType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;

    const-string v1, "slot"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/papa91/arc/MenuFrameActivity$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->slot:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 2
    new-instance v1, Lcom/papa91/arc/MenuFrameActivity$MenuType;

    const-string v3, "cheating"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/papa91/arc/MenuFrameActivity$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/papa91/arc/MenuFrameActivity$MenuType;->cheating:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 3
    new-instance v3, Lcom/papa91/arc/MenuFrameActivity$MenuType;

    const-string v5, "performance"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/papa91/arc/MenuFrameActivity$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/papa91/arc/MenuFrameActivity$MenuType;->performance:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 4
    new-instance v5, Lcom/papa91/arc/MenuFrameActivity$MenuType;

    const-string v7, "vip"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/papa91/arc/MenuFrameActivity$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/papa91/arc/MenuFrameActivity$MenuType;->vip:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/papa91/arc/MenuFrameActivity$MenuType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/papa91/arc/MenuFrameActivity$MenuType;->$VALUES:[Lcom/papa91/arc/MenuFrameActivity$MenuType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/papa91/arc/MenuFrameActivity$MenuType;
    .locals 1

    .line 1
    const-class v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/papa91/arc/MenuFrameActivity$MenuType;

    return-object p0
.end method

.method public static values()[Lcom/papa91/arc/MenuFrameActivity$MenuType;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->$VALUES:[Lcom/papa91/arc/MenuFrameActivity$MenuType;

    invoke-virtual {v0}, [Lcom/papa91/arc/MenuFrameActivity$MenuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/papa91/arc/MenuFrameActivity$MenuType;

    return-object v0
.end method
