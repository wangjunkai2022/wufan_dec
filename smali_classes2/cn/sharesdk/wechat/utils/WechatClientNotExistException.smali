.class public Lcn/sharesdk/wechat/utils/WechatClientNotExistException;
.super Ljava/lang/Exception;
.source "WechatClientNotExistException.java"


# static fields
.field private static final serialVersionUID:J = 0x30edf90bef12cef0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "WechatClientNotExistException"

    return-object v0
.end method
