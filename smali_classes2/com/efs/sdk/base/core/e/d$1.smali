.class public final Lcom/efs/sdk/base/core/e/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/core/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/base/core/d/b;

.field final synthetic b:Lcom/efs/sdk/base/core/e/d;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/core/e/d;Lcom/efs/sdk/base/core/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/base/core/e/d$1;->b:Lcom/efs/sdk/base/core/e/d;

    iput-object p2, p0, Lcom/efs/sdk/base/core/e/d$1;->a:Lcom/efs/sdk/base/core/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/e/d$1;->b:Lcom/efs/sdk/base/core/e/d;

    .line 2
    iget-object v0, v0, Lcom/efs/sdk/base/core/e/d;->a:Lcom/efs/sdk/base/core/e/a;

    .line 3
    iget-object v1, p0, Lcom/efs/sdk/base/core/e/d$1;->a:Lcom/efs/sdk/base/core/d/b;

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/core/e/a;->a(Lcom/efs/sdk/base/core/d/b;)V

    return-void
.end method
