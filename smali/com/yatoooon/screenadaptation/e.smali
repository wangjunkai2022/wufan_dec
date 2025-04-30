.class public Lcom/yatoooon/screenadaptation/e;
.super Ljava/lang/Object;
.source "ScreenAdapterTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yatoooon/screenadaptation/e$b;
    }
.end annotation


# static fields
.field private static a:Lcom/yatoooon/screenadaptation/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/yatoooon/screenadaptation/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/yatoooon/screenadaptation/e;->a:Lcom/yatoooon/screenadaptation/a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yatoooon/screenadaptation/e$a;

    invoke-direct {v0}, Lcom/yatoooon/screenadaptation/e$a;-><init>()V

    invoke-static {p0, v0}, Lcom/yatoooon/screenadaptation/e;->c(Landroid/content/Context;Lcom/yatoooon/screenadaptation/e$b;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/yatoooon/screenadaptation/e$b;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "designwidth"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 6
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "designdpi"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 7
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "fontsize"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    .line 8
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    move-object v4, p0

    .line 9
    invoke-interface/range {v3 .. v8}, Lcom/yatoooon/screenadaptation/e$b;->a(Landroid/content/Context;IIFLjava/lang/String;)Lcom/yatoooon/screenadaptation/a;

    move-result-object p0

    sput-object p0, Lcom/yatoooon/screenadaptation/e;->a:Lcom/yatoooon/screenadaptation/a;

    return-void
.end method
