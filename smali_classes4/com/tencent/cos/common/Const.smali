.class public final enum Lcom/tencent/cos/common/Const;
.super Ljava/lang/Enum;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/common/Const;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/common/Const;

.field public static final enum ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

.field public static final enum ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/tencent/cos/common/Const;

    const-string v1, "ERROR_CLIENT_EXCEPTION"

    const/4 v2, 0x0

    const/16 v3, 0x61a8

    const-string v4, "\u51fa\u73b0client\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/cos/common/Const;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/common/Const;->ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

    .line 2
    new-instance v1, Lcom/tencent/cos/common/Const;

    const-string v3, "ERROR_OTHER_EXCEPTION"

    const/4 v4, 0x1

    const/16 v5, 0x61a9

    const-string v6, "\u51fa\u73b0\u5176\u5b83\u5f02\u5e38"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/tencent/cos/common/Const;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/common/Const;->ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tencent/cos/common/Const;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/tencent/cos/common/Const;->$VALUES:[Lcom/tencent/cos/common/Const;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tencent/cos/common/Const;->code:I

    .line 3
    iput-object p4, p0, Lcom/tencent/cos/common/Const;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/common/Const;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/cos/common/Const;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/common/Const;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/common/Const;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/cos/common/Const;->$VALUES:[Lcom/tencent/cos/common/Const;

    invoke-virtual {v0}, [Lcom/tencent/cos/common/Const;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/common/Const;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/common/Const;->code:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/common/Const;->desc:Ljava/lang/String;

    return-object v0
.end method
