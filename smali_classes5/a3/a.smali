.class public La3/a;
.super Lz2/a;
.source "ViewHelper16.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz2/a;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/util/b$a;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
