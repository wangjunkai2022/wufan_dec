.class public Lorg/ppsspp/ppsspp/ShortcutActivity;
.super Landroid/app/Activity;
.source "ShortcutActivity.java"


# static fields
.field private static final b:Ljava/lang/String; = "PPSSPP"


# instance fields
.field private a:Lorg/ppsspp/ppsspp/h$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Lorg/ppsspp/ppsspp/ShortcutActivity$b;

    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/ShortcutActivity$b;-><init>(Lorg/ppsspp/ppsspp/ShortcutActivity;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/ShortcutActivity;->a:Lorg/ppsspp/ppsspp/h$c;

    return-void
.end method

.method static synthetic a(Lorg/ppsspp/ppsspp/ShortcutActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/ppsspp/ppsspp/ShortcutActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/ppsspp/ppsspp/PpssppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shortcut URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "org.ppsspp.ppsspp.Shortcuts"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lorg/ppsspp/ppsspp/PpssppActivity;->CheckABIAndLoadLibrary()V

    .line 7
    invoke-static {p1}, Lorg/ppsspp/ppsspp/ShortcutActivity;->queryGameName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/ShortcutActivity;->c()V

    return-void

    .line 10
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    .line 11
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 12
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    sget p1, Lorg/ppsspp/ppsspp/R$drawable;->ic_launcher:I

    invoke-static {p0, p1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p1

    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 14
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 15
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    new-instance v0, Lorg/ppsspp/ppsspp/ShortcutActivity$a;

    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/ShortcutActivity$a;-><init>(Lorg/ppsspp/ppsspp/ShortcutActivity;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0xbb8

    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, -0x1

    .line 5
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static native queryGameName(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lorg/ppsspp/ppsspp/h;

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/ppsspp/ppsspp/ShortcutActivity;->a:Lorg/ppsspp/ppsspp/h$c;

    invoke-direct {p1, p0, v0, v1}, Lorg/ppsspp/ppsspp/h;-><init>(Landroid/app/Activity;Ljava/io/File;Lorg/ppsspp/ppsspp/h$c;)V

    .line 3
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/h;->g()V

    return-void
.end method
