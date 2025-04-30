.class public Lcom/tencent/cos/common/COSHttpRequstBody;
.super Ljava/lang/Object;
.source "COSHttpRequstBody.java"


# static fields
.field public static KEY:Lcom/tencent/cos/common/BodyKey;

.field public static OP:Lcom/tencent/cos/common/BodyValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/cos/common/BodyKey;->getInstance()Lcom/tencent/cos/common/BodyKey;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 2
    invoke-static {}, Lcom/tencent/cos/common/BodyValue;->getInstance()Lcom/tencent/cos/common/BodyValue;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
