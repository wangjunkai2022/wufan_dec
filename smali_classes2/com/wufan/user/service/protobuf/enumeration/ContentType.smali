.class public final enum Lcom/wufan/user/service/protobuf/enumeration/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wufan/user/service/protobuf/enumeration/ContentType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wufan/user/service/protobuf/enumeration/ContentType;

.field public static final enum BIND_MOBILE:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

.field public static final BIND_MOBILE_VALUE:I = 0x3

.field public static final enum CHECK_BIND_MOBILE:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

.field public static final CHECK_BIND_MOBILE_VALUE:I = 0x5

.field public static final enum FIND_PWD:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

.field public static final FIND_PWD_VALUE:I = 0x1

.field public static final enum GENERAL_SMS_CODE:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

.field public static final GENERAL_SMS_CODE_VALUE:I = 0x7

.field public static final enum MOBILE_FIND_PWD:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

.field public static final MOBILE_FIND_PWD_VALUE:I = 0x6

.field public static final enum MOBILE_REG:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

.field public static final MOBILE_REG_VALUE:I = 0x0

.field public static final enum RANDOM_PWD:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

.field public static final RANDOM_PWD_VALUE:I = 0x2

.field public static final enum UNBIND_MOBILE:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

.field public static final UNBIND_MOBILE_VALUE:I = 0x4

.field public static final enum UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/user/service/protobuf/enumeration/ContentType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    const-string v1, "MOBILE_REG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->MOBILE_REG:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 2
    new-instance v1, Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    const-string v3, "FIND_PWD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->FIND_PWD:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 3
    new-instance v3, Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    const-string v5, "RANDOM_PWD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->RANDOM_PWD:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 4
    new-instance v5, Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    const-string v7, "BIND_MOBILE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->BIND_MOBILE:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 5
    new-instance v7, Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    const-string v9, "UNBIND_MOBILE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->UNBIND_MOBILE:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 6
    new-instance v9, Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    const-string v11, "CHECK_BIND_MOBILE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->CHECK_BIND_MOBILE:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 7
    new-instance v11, Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    const-string v13, "MOBILE_FIND_PWD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->MOBILE_FIND_PWD:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 8
    new-instance v13, Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    const-string v15, "GENERAL_SMS_CODE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->GENERAL_SMS_CODE:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 9
    new-instance v15, Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    const-string v14, "UNRECOGNIZED"

    const/16 v12, 0x8

    const/4 v10, -0x1

    invoke-direct {v15, v14, v12, v10}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v15, v10, v12

    .line 10
    sput-object v10, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->$VALUES:[Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 11
    new-instance v0, Lcom/wufan/user/service/protobuf/enumeration/ContentType$a;

    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/enumeration/ContentType$a;-><init>()V

    sput-object v0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/wufan/user/service/protobuf/enumeration/ContentType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->GENERAL_SMS_CODE:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->MOBILE_FIND_PWD:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->CHECK_BIND_MOBILE:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->UNBIND_MOBILE:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->BIND_MOBILE:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->RANDOM_PWD:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->FIND_PWD:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->MOBILE_REG:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/user/service/protobuf/enumeration/ContentType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/wufan/user/service/protobuf/enumeration/ContentType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->forNumber(I)Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/enumeration/ContentType;
    .locals 1

    .line 1
    const-class v0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    return-object p0
.end method

.method public static values()[Lcom/wufan/user/service/protobuf/enumeration/ContentType;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->$VALUES:[Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    invoke-virtual {v0}, [Lcom/wufan/user/service/protobuf/enumeration/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->value:I

    return v0
.end method
