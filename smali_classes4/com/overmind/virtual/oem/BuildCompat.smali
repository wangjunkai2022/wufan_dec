.class public Lcom/overmind/virtual/oem/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/overmind/virtual/oem/BuildCompat$ROMType;
    }
.end annotation


# static fields
.field private static a:Lcom/overmind/virtual/oem/BuildCompat$ROMType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b()Lcom/overmind/virtual/oem/BuildCompat$ROMType;
    .locals 1

    .line 1
    sget-object v0, Lcom/overmind/virtual/oem/BuildCompat;->a:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    if-nez v0, :cond_8

    .line 2
    invoke-static {}, Lcom/overmind/virtual/oem/BuildCompat;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->EMUI:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    sput-object v0, Lcom/overmind/virtual/oem/BuildCompat;->a:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/overmind/virtual/oem/BuildCompat;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->MIUI:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    sput-object v0, Lcom/overmind/virtual/oem/BuildCompat;->a:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/overmind/virtual/oem/BuildCompat;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->FLYME:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    sput-object v0, Lcom/overmind/virtual/oem/BuildCompat;->a:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/overmind/virtual/oem/BuildCompat;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    sget-object v0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->COLOR_OS:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    sput-object v0, Lcom/overmind/virtual/oem/BuildCompat;->a:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lcom/overmind/virtual/oem/BuildCompat;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    sget-object v0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->_360:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    sput-object v0, Lcom/overmind/virtual/oem/BuildCompat;->a:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lcom/overmind/virtual/oem/BuildCompat;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    sget-object v0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->LETV:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    sput-object v0, Lcom/overmind/virtual/oem/BuildCompat;->a:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    goto :goto_0

    .line 14
    :cond_5
    invoke-static {}, Lcom/overmind/virtual/oem/BuildCompat;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    sget-object v0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->VIVO:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    sput-object v0, Lcom/overmind/virtual/oem/BuildCompat;->a:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    goto :goto_0

    .line 16
    :cond_6
    invoke-static {}, Lcom/overmind/virtual/oem/BuildCompat;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    sget-object v0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->SAMSUNG:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    sput-object v0, Lcom/overmind/virtual/oem/BuildCompat;->a:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    goto :goto_0

    .line 18
    :cond_7
    sget-object v0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->OTHER:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    sput-object v0, Lcom/overmind/virtual/oem/BuildCompat;->a:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    .line 19
    :cond_8
    :goto_0
    sget-object v0, Lcom/overmind/virtual/oem/BuildCompat;->a:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    return-object v0
.end method

.method public static c()Z
    .locals 2

    const-string v0, "ro.build.uiversion"

    .line 1
    invoke-static {v0}, La2/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "360UI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()Z
    .locals 1

    const-string v0, "ro.build.version.opporom"

    .line 1
    invoke-static {v0}, La2/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.rom.different.version"

    .line 2
    invoke-static {v0}, La2/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static e()Z
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "ro.build.version.emui"

    .line 2
    invoke-static {v0}, La2/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "EmotionUI"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static f()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Letv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static h()Z
    .locals 2

    const-string v0, "ro.miui.ui.version.code"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, La2/a;->c(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static i()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/overmind/virtual/oem/BuildCompat;->a()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static j()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/overmind/virtual/oem/BuildCompat;->a()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static k()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/overmind/virtual/oem/BuildCompat;->a()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static l()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/overmind/virtual/oem/BuildCompat;->a()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static m()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/overmind/virtual/oem/BuildCompat;->a()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static n()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static o()Z
    .locals 1

    const-string v0, "ro.vivo.os.build.display.id"

    .line 1
    invoke-static {v0}, La2/a;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
