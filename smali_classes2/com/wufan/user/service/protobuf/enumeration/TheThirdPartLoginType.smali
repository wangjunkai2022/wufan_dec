.class public final enum Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;
.super Ljava/lang/Enum;
.source "TheThirdPartLoginType.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

.field public static final enum T_MG:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

.field public static final T_MG_VALUE:I = 0x4

.field public static final enum T_PAPA:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

.field public static final T_PAPA_VALUE:I = 0x0

.field public static final enum T_QQ:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

.field public static final T_QQ_VALUE:I = 0x1

.field public static final enum T_WEI_BO:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

.field public static final T_WEI_BO_VALUE:I = 0x3

.field public static final enum T_WEI_XIN:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

.field public static final T_WEI_XIN_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;",
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
    new-instance v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    const-string v1, "T_PAPA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_PAPA:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 2
    new-instance v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    const-string v3, "T_QQ"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_QQ:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 3
    new-instance v3, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    const-string v5, "T_WEI_XIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_XIN:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 4
    new-instance v5, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    const-string v7, "T_WEI_BO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_BO:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 5
    new-instance v7, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    const-string v9, "T_MG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_MG:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 6
    new-instance v9, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->$VALUES:[Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 8
    new-instance v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType$a;

    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType$a;-><init>()V

    sput-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;
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
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_MG:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_BO:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_XIN:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_QQ:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_PAPA:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->forNumber(I)Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;
    .locals 1

    .line 1
    const-class v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    return-object p0
.end method

.method public static values()[Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->$VALUES:[Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    invoke-virtual {v0}, [Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->value:I

    return v0
.end method
