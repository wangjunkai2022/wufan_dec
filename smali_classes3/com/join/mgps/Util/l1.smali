.class public Lcom/join/mgps/Util/l1;
.super Ljava/lang/Object;
.source "PermissionManagerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Landroid/app/Activity;ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 1
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
