.class public final enum Lcom/tencent/cos/common/COSEndPoint;
.super Ljava/lang/Enum;
.source "COSEndPoint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/common/COSEndPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/common/COSEndPoint;

.field public static final enum COS_GZ:Lcom/tencent/cos/common/COSEndPoint;

.field public static final enum COS_SH:Lcom/tencent/cos/common/COSEndPoint;

.field public static final enum COS_TJ:Lcom/tencent/cos/common/COSEndPoint;


# instance fields
.field private code:Ljava/lang/String;

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/tencent/cos/common/COSEndPoint;

    const-string v1, "COS_GZ"

    const/4 v2, 0x0

    const-string v3, "cosgz"

    const-string v4, "\u534e\u5357"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/cos/common/COSEndPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/common/COSEndPoint;->COS_GZ:Lcom/tencent/cos/common/COSEndPoint;

    .line 2
    new-instance v1, Lcom/tencent/cos/common/COSEndPoint;

    const-string v3, "COS_TJ"

    const/4 v4, 0x1

    const-string v5, "costj"

    const-string v6, "\u534e\u5317"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/tencent/cos/common/COSEndPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/common/COSEndPoint;->COS_TJ:Lcom/tencent/cos/common/COSEndPoint;

    .line 3
    new-instance v3, Lcom/tencent/cos/common/COSEndPoint;

    const-string v5, "COS_SH"

    const/4 v6, 0x2

    const-string v7, "cossh"

    const-string v8, "\u534e\u4e1c"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/tencent/cos/common/COSEndPoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/tencent/cos/common/COSEndPoint;->COS_SH:Lcom/tencent/cos/common/COSEndPoint;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tencent/cos/common/COSEndPoint;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/tencent/cos/common/COSEndPoint;->$VALUES:[Lcom/tencent/cos/common/COSEndPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/tencent/cos/common/COSEndPoint;->code:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/tencent/cos/common/COSEndPoint;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/common/COSEndPoint;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/cos/common/COSEndPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/common/COSEndPoint;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/common/COSEndPoint;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/cos/common/COSEndPoint;->$VALUES:[Lcom/tencent/cos/common/COSEndPoint;

    invoke-virtual {v0}, [Lcom/tencent/cos/common/COSEndPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/common/COSEndPoint;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/common/COSEndPoint;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/common/COSEndPoint;->desc:Ljava/lang/String;

    return-object v0
.end method
