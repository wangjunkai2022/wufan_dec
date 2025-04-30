.class Lcom/githang/statusbar/h;
.super Ljava/lang/Object;
.source "StatusBarMImpl.java"

# interfaces
.implements Lcom/githang/statusbar/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Window;IZ)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/high16 v0, 0x4000000

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p3, :cond_0

    or-int/lit16 p3, v0, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p3, v0, -0x2001

    .line 6
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p2, 0x1020002

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
