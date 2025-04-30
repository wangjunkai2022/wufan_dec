.class Lcom/githang/statusbar/d$d;
.super Ljava/lang/Object;
.source "StatusBarCompatFlavorRom.java"

# interfaces
.implements Lcom/githang/statusbar/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/githang/statusbar/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/view/Window;Z)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    :try_start_0
    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "meizuFlags"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz p2, :cond_0

    or-int p2, v4, v3

    goto :goto_0

    :cond_0
    xor-int/lit8 p2, v3, -0x1

    and-int/2addr p2, v4

    .line 8
    :goto_0
    invoke-virtual {v2, v0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
