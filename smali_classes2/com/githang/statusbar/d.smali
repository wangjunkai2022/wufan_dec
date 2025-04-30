.class Lcom/githang/statusbar/d;
.super Ljava/lang/Object;
.source "StatusBarCompatFlavorRom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/githang/statusbar/d$d;,
        Lcom/githang/statusbar/d$c;,
        Lcom/githang/statusbar/d$b;
    }
.end annotation


# static fields
.field static final a:Lcom/githang/statusbar/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/githang/statusbar/d$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/githang/statusbar/d$c;

    invoke-direct {v0}, Lcom/githang/statusbar/d$c;-><init>()V

    sput-object v0, Lcom/githang/statusbar/d;->a:Lcom/githang/statusbar/d$b;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/githang/statusbar/d$d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/githang/statusbar/d$d;

    invoke-direct {v0}, Lcom/githang/statusbar/d$d;-><init>()V

    sput-object v0, Lcom/githang/statusbar/d;->a:Lcom/githang/statusbar/d$b;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/githang/statusbar/d$a;

    invoke-direct {v0}, Lcom/githang/statusbar/d$a;-><init>()V

    sput-object v0, Lcom/githang/statusbar/d;->a:Lcom/githang/statusbar/d$b;

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/Window;Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/githang/statusbar/d;->a:Lcom/githang/statusbar/d$b;

    invoke-interface {v0, p0, p1}, Lcom/githang/statusbar/d$b;->a(Landroid/view/Window;Z)V

    return-void
.end method
