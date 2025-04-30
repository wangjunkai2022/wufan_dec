.class public final enum Lcom/xinzhu/overmind/server/user/MindUserStatus;
.super Ljava/lang/Enum;
.source "MindUserStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xinzhu/overmind/server/user/MindUserStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xinzhu/overmind/server/user/MindUserStatus;

.field public static final enum DISABLE:Lcom/xinzhu/overmind/server/user/MindUserStatus;

.field public static final enum ENABLE:Lcom/xinzhu/overmind/server/user/MindUserStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserStatus;

    const-string v1, "ENABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/server/user/MindUserStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xinzhu/overmind/server/user/MindUserStatus;->ENABLE:Lcom/xinzhu/overmind/server/user/MindUserStatus;

    new-instance v1, Lcom/xinzhu/overmind/server/user/MindUserStatus;

    const-string v3, "DISABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xinzhu/overmind/server/user/MindUserStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xinzhu/overmind/server/user/MindUserStatus;->DISABLE:Lcom/xinzhu/overmind/server/user/MindUserStatus;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xinzhu/overmind/server/user/MindUserStatus;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/xinzhu/overmind/server/user/MindUserStatus;->$VALUES:[Lcom/xinzhu/overmind/server/user/MindUserStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xinzhu/overmind/server/user/MindUserStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/xinzhu/overmind/server/user/MindUserStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xinzhu/overmind/server/user/MindUserStatus;

    return-object p0
.end method

.method public static values()[Lcom/xinzhu/overmind/server/user/MindUserStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/user/MindUserStatus;->$VALUES:[Lcom/xinzhu/overmind/server/user/MindUserStatus;

    invoke-virtual {v0}, [Lcom/xinzhu/overmind/server/user/MindUserStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xinzhu/overmind/server/user/MindUserStatus;

    return-object v0
.end method
