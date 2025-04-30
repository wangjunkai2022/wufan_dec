.class public Lz2/a;
.super Lit/sephiroth/android/library/util/b$b;
.source "ViewHelper14.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/util/b$b;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/util/b$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/util/b$a;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollX(I)V

    return-void
.end method
