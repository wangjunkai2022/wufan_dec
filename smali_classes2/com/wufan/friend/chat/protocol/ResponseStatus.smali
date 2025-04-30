.class public final enum Lcom/wufan/friend/chat/protocol/ResponseStatus;
.super Ljava/lang/Enum;
.source "ResponseStatus.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wufan/friend/chat/protocol/ResponseStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wufan/friend/chat/protocol/ResponseStatus;

.field public static final enum INTERNAL_EXCEPTION:Lcom/wufan/friend/chat/protocol/ResponseStatus;

.field public static final INTERNAL_EXCEPTION_VALUE:I = 0x3

.field public static final enum NON_SUPPORT_SERVICE:Lcom/wufan/friend/chat/protocol/ResponseStatus;

.field public static final NON_SUPPORT_SERVICE_VALUE:I = 0x2

.field public static final enum OK:Lcom/wufan/friend/chat/protocol/ResponseStatus;

.field public static final OK_VALUE:I = 0x1

.field public static final enum UNAUTHORIZED:Lcom/wufan/friend/chat/protocol/ResponseStatus;

.field public static final UNAUTHORIZED_VALUE:I = 0x4

.field public static final enum UNKNOWN_RS:Lcom/wufan/friend/chat/protocol/ResponseStatus;

.field public static final UNKNOWN_RS_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ResponseStatus;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/friend/chat/protocol/ResponseStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/ResponseStatus;

    const-string v1, "UNKNOWN_RS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/friend/chat/protocol/ResponseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wufan/friend/chat/protocol/ResponseStatus;->UNKNOWN_RS:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    .line 2
    new-instance v1, Lcom/wufan/friend/chat/protocol/ResponseStatus;

    const-string v3, "OK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/wufan/friend/chat/protocol/ResponseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/wufan/friend/chat/protocol/ResponseStatus;->OK:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    .line 3
    new-instance v3, Lcom/wufan/friend/chat/protocol/ResponseStatus;

    const-string v5, "NON_SUPPORT_SERVICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/wufan/friend/chat/protocol/ResponseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/wufan/friend/chat/protocol/ResponseStatus;->NON_SUPPORT_SERVICE:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    .line 4
    new-instance v5, Lcom/wufan/friend/chat/protocol/ResponseStatus;

    const-string v7, "INTERNAL_EXCEPTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/wufan/friend/chat/protocol/ResponseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/wufan/friend/chat/protocol/ResponseStatus;->INTERNAL_EXCEPTION:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    .line 5
    new-instance v7, Lcom/wufan/friend/chat/protocol/ResponseStatus;

    const-string v9, "UNAUTHORIZED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/wufan/friend/chat/protocol/ResponseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/wufan/friend/chat/protocol/ResponseStatus;->UNAUTHORIZED:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    .line 6
    new-instance v9, Lcom/wufan/friend/chat/protocol/ResponseStatus;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lcom/wufan/friend/chat/protocol/ResponseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/wufan/friend/chat/protocol/ResponseStatus;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/wufan/friend/chat/protocol/ResponseStatus;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/wufan/friend/chat/protocol/ResponseStatus;->$VALUES:[Lcom/wufan/friend/chat/protocol/ResponseStatus;

    .line 8
    new-instance v0, Lcom/wufan/friend/chat/protocol/ResponseStatus$a;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/ResponseStatus$a;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/ResponseStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/wufan/friend/chat/protocol/ResponseStatus;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/wufan/friend/chat/protocol/ResponseStatus;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/wufan/friend/chat/protocol/ResponseStatus;->UNAUTHORIZED:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/wufan/friend/chat/protocol/ResponseStatus;->INTERNAL_EXCEPTION:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/wufan/friend/chat/protocol/ResponseStatus;->NON_SUPPORT_SERVICE:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/wufan/friend/chat/protocol/ResponseStatus;->OK:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/wufan/friend/chat/protocol/ResponseStatus;->UNKNOWN_RS:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/friend/chat/protocol/ResponseStatus;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/wufan/friend/chat/protocol/ResponseStatus;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/wufan/friend/chat/protocol/ResponseStatus;->forNumber(I)Lcom/wufan/friend/chat/protocol/ResponseStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/ResponseStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/wufan/friend/chat/protocol/ResponseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseStatus;

    return-object p0
.end method

.method public static values()[Lcom/wufan/friend/chat/protocol/ResponseStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseStatus;->$VALUES:[Lcom/wufan/friend/chat/protocol/ResponseStatus;

    invoke-virtual {v0}, [Lcom/wufan/friend/chat/protocol/ResponseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wufan/friend/chat/protocol/ResponseStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/ResponseStatus;->value:I

    return v0
.end method
