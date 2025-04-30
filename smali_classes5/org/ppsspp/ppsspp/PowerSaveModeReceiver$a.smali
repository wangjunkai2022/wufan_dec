.class Lorg/ppsspp/ppsspp/PowerSaveModeReceiver$a;
.super Landroid/database/ContentObserver;
.source "PowerSaveModeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->e(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver$a;->a:Landroid/app/Activity;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "/"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "user_powersaver_enable"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "psm_switch"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "powersaving_switch"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    :cond_1
    iget-object p1, p0, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver$a;->a:Landroid/app/Activity;

    invoke-static {p1}, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->a(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
