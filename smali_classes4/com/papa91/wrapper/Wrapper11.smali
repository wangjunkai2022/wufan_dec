.class Lcom/papa91/wrapper/Wrapper11;
.super Ljava/lang/Object;
.source "Wrapper11.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Activity_invalidateOptionsMenu(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public static MenuItem_setShowAsAction(Landroid/view/MenuItem;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method static View_setSystemUiVisibility(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static displayActionBar(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public static displayHomeAsUp(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
