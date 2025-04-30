.class Lmoe/codeest/enviews/ENDownloadView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ENDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/codeest/enviews/ENDownloadView;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmoe/codeest/enviews/ENDownloadView;


# direct methods
.method constructor <init>(Lmoe/codeest/enviews/ENDownloadView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$b;->a:Lmoe/codeest/enviews/ENDownloadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$b;->a:Lmoe/codeest/enviews/ENDownloadView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmoe/codeest/enviews/ENDownloadView;->c(Lmoe/codeest/enviews/ENDownloadView;I)I

    .line 2
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$b;->a:Lmoe/codeest/enviews/ENDownloadView;

    invoke-static {p1}, Lmoe/codeest/enviews/ENDownloadView;->d(Lmoe/codeest/enviews/ENDownloadView;)V

    return-void
.end method
