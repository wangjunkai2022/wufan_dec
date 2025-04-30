.class public final Lcom/bytedance/pangle/download/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/pangle/download/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/pangle/download/c;


# direct methods
.method public constructor <init>(Lcom/bytedance/pangle/download/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/pangle/download/c$1;->b:Lcom/bytedance/pangle/download/c;

    iput-object p2, p0, Lcom/bytedance/pangle/download/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/pangle/util/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/download/c$1;->b:Lcom/bytedance/pangle/download/c;

    invoke-static {v0}, Lcom/bytedance/pangle/download/c;->a(Lcom/bytedance/pangle/download/c;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
