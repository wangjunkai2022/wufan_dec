.class public Lcom/tencent/cos/common/COSHttpRequestHead;
.super Ljava/lang/Object;
.source "COSHttpRequestHead.java"


# static fields
.field public static KEY:Lcom/tencent/cos/common/HeadKey;

.field public static VALUE:Lcom/tencent/cos/common/HeadValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/cos/common/HeadKey;->getInstance()Lcom/tencent/cos/common/HeadKey;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/common/COSHttpRequestHead;->KEY:Lcom/tencent/cos/common/HeadKey;

    .line 2
    invoke-static {}, Lcom/tencent/cos/common/HeadValue;->getInstance()Lcom/tencent/cos/common/HeadValue;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
