.class public Lcom/bytedance/sdk/openadsdk/downloadnew/b;
.super Ljava/lang/Object;
.source "BundleFactory.java"


# direct methods
.method public static a(I)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
