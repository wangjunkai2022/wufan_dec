.class final Lcom/bytedance/pangle/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/Throwable;

.field final synthetic g:Lcom/bytedance/pangle/g;


# direct methods
.method constructor <init>(Lcom/bytedance/pangle/g;Ljava/lang/Object;IILjava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/pangle/g$3;->g:Lcom/bytedance/pangle/g;

    iput-object p2, p0, Lcom/bytedance/pangle/g$3;->a:Ljava/lang/Object;

    iput p3, p0, Lcom/bytedance/pangle/g$3;->b:I

    iput p4, p0, Lcom/bytedance/pangle/g$3;->c:I

    iput-object p5, p0, Lcom/bytedance/pangle/g$3;->d:Ljava/lang/String;

    iput p6, p0, Lcom/bytedance/pangle/g$3;->e:I

    iput-object p7, p0, Lcom/bytedance/pangle/g$3;->f:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/pangle/g$3;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/bytedance/pangle/ZeusPluginEventCallback;

    iget v2, p0, Lcom/bytedance/pangle/g$3;->b:I

    iget v3, p0, Lcom/bytedance/pangle/g$3;->c:I

    iget-object v4, p0, Lcom/bytedance/pangle/g$3;->d:Ljava/lang/String;

    iget v5, p0, Lcom/bytedance/pangle/g$3;->e:I

    iget-object v6, p0, Lcom/bytedance/pangle/g$3;->f:Ljava/lang/Throwable;

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/pangle/ZeusPluginEventCallback;->onPluginEvent(IILjava/lang/String;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
