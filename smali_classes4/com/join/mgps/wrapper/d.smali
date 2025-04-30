.class Lcom/join/mgps/wrapper/d;
.super Ljava/lang/Object;
.source "Wrapper14.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/ViewConfiguration;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
