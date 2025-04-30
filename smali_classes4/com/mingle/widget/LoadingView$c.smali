.class Lcom/mingle/widget/LoadingView$c;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Lcom/nineoldandroids/animation/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mingle/widget/LoadingView;->c()V
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
    iput-object p1, p0, Lcom/mingle/widget/LoadingView$c;->a:Lcom/mingle/widget/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mingle/widget/LoadingView$c;->a:Lcom/mingle/widget/LoadingView;

    invoke-static {p1}, Lcom/mingle/widget/LoadingView;->a(Lcom/mingle/widget/LoadingView;)Lcom/mingle/widget/ShapeLoadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mingle/widget/ShapeLoadingView;->a()V

    .line 2
    iget-object p1, p0, Lcom/mingle/widget/LoadingView$c;->a:Lcom/mingle/widget/LoadingView;

    invoke-virtual {p1}, Lcom/mingle/widget/LoadingView;->g()V

    return-void
.end method
