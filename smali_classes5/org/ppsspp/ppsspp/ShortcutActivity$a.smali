.class Lorg/ppsspp/ppsspp/ShortcutActivity$a;
.super Ljava/lang/Thread;
.source "ShortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ppsspp/ppsspp/ShortcutActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/ppsspp/ppsspp/ShortcutActivity;


# direct methods
.method constructor <init>(Lorg/ppsspp/ppsspp/ShortcutActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/ShortcutActivity$a;->a:Lorg/ppsspp/ppsspp/ShortcutActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/ShortcutActivity$a;->a:Lorg/ppsspp/ppsspp/ShortcutActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lorg/ppsspp/ppsspp/ShortcutActivity$a;->a:Lorg/ppsspp/ppsspp/ShortcutActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/ppsspp/ppsspp/R$string;->bad_disc_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4
    iget-object v1, p0, Lorg/ppsspp/ppsspp/ShortcutActivity$a;->a:Lorg/ppsspp/ppsspp/ShortcutActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/ppsspp/ppsspp/R$string;->bad_disc_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 6
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
