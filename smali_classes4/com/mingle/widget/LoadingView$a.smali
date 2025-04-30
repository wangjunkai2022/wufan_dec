.class Lcom/mingle/widget/LoadingView$a;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mingle/widget/LoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mingle/widget/LoadingView;


# direct methods
.method constructor <init>(Lcom/mingle/widget/LoadingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mingle/widget/LoadingView$a;->a:Lcom/mingle/widget/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/LoadingView$a;->a:Lcom/mingle/widget/LoadingView;

    invoke-virtual {v0}, Lcom/mingle/widget/LoadingView;->c()V

    return-void
.end method
