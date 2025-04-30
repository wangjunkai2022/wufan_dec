.class final Landroidx/lifecycle/DispatchQueue$runOrEnqueue$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "DispatchQueue.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/DispatchQueue;->runOrEnqueue(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "",
        "run",
        "()V",
        "androidx/lifecycle/DispatchQueue$runOrEnqueue$1$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/DispatchQueue;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/DispatchQueue$runOrEnqueue$$inlined$with$lambda$1;->a:Landroidx/lifecycle/DispatchQueue;

    iput-object p2, p0, Landroidx/lifecycle/DispatchQueue$runOrEnqueue$$inlined$with$lambda$1;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/DispatchQueue$runOrEnqueue$$inlined$with$lambda$1;->a:Landroidx/lifecycle/DispatchQueue;

    iget-object v1, p0, Landroidx/lifecycle/DispatchQueue$runOrEnqueue$$inlined$with$lambda$1;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/lifecycle/DispatchQueue;->access$enqueue(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    return-void
.end method
