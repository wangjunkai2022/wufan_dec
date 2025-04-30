.class Lcom/join/mgps/customview/CustomerDownloadView$b;
.super Ljava/lang/Object;
.source "CustomerDownloadView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/CustomerDownloadView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/CustomerDownloadView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/CustomerDownloadView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView$b;->a:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/CustomerDownloadView$b;->a:Lcom/join/mgps/customview/CustomerDownloadView;

    iget v0, p1, Lcom/join/mgps/customview/CustomerDownloadView;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/join/mgps/customview/CustomerDownloadView;->k:I

    .line 2
    iget v1, p1, Lcom/join/mgps/customview/CustomerDownloadView;->j:I

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/customview/CustomerDownloadView;->e()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/customview/CustomerDownloadView;->a()V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
