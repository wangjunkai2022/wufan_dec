.class public final Lcom/bytedance/pangle/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1e

    if-ge v0, v3, :cond_1

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    .line 2
    new-instance v0, Lcom/bytedance/pangle/flipped/FlippedV2Impl;

    invoke-direct {v0}, Lcom/bytedance/pangle/flipped/FlippedV2Impl;-><init>()V

    goto :goto_2

    :cond_2
    const/16 v3, 0x1c

    if-ge v0, v3, :cond_3

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_4

    .line 3
    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-lez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 4
    new-instance v0, Lcom/bytedance/pangle/flipped/b;

    invoke-direct {v0}, Lcom/bytedance/pangle/flipped/b;-><init>()V

    goto :goto_2

    .line 5
    :cond_5
    new-instance v0, Lcom/bytedance/pangle/flipped/a;

    invoke-direct {v0}, Lcom/bytedance/pangle/flipped/a;-><init>()V

    .line 6
    :goto_2
    invoke-interface {v0}, Lcom/bytedance/pangle/flipped/c;->invokeHiddenApiRestrictions()V

    return-void
.end method
