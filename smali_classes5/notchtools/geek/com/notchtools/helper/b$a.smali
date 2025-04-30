.class final Lnotchtools/geek/com/notchtools/helper/b$a;
.super Ljava/lang/Object;
.source "NotchStatusBarUtils.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnotchtools/geek/com/notchtools/helper/b;->e(Landroid/view/Window;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/helper/b$a;->a:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lnotchtools/geek/com/notchtools/helper/b$a;->a:Landroid/view/Window;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnotchtools/geek/com/notchtools/helper/b;->e(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method
