.class Lcom/swift/sandhook/SandHookConfig$1;
.super Ljava/lang/Object;
.source "SandHookConfig.java"

# interfaces
.implements Lcom/swift/sandhook/SandHookConfig$LibLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swift/sandhook/SandHookConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadLib()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeDynamicallyLoadedCode"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/swift/sandhook/SandHookConfig;->libSandHookPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "sandhook"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/swift/sandhook/SandHookConfig;->libSandHookPath:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
