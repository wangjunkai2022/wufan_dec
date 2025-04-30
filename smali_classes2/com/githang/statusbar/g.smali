.class Lcom/githang/statusbar/g;
.super Ljava/lang/Object;
.source "StatusBarLollipopImpl.java"

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
        value = 0x15
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
    invoke-static {p1, p3}, Lcom/githang/statusbar/d;->a(Landroid/view/Window;Z)V

    return-void
.end method
