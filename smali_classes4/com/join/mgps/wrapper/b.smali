.class public Lcom/join/mgps/wrapper/b;
.super Ljava/lang/Object;
.source "Wrapper11.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public static b(Landroid/view/MenuItem;Z)V
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

.method static c(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static d(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public static e(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
