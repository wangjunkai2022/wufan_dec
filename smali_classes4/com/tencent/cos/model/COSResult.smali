.class public abstract Lcom/tencent/cos/model/COSResult;
.super Ljava/lang/Object;
.source "COSResult.java"


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/cos/model/COSResult;->code:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getResponse(Lcom/tencent/cos/network/HttpResponse;)V
.end method
