.class Lorg/ppsspp/ppsspp/NativeActivity$f;
.super Ljava/lang/Object;
.source "NativeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ppsspp/ppsspp/NativeActivity;->inputBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lorg/ppsspp/ppsspp/NativeActivity;


# direct methods
.method constructor <init>(Lorg/ppsspp/ppsspp/NativeActivity;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity$f;->c:Lorg/ppsspp/ppsspp/NativeActivity;

    iput-object p2, p0, Lorg/ppsspp/ppsspp/NativeActivity$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/ppsspp/ppsspp/NativeActivity$f;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity$f;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity$f;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "inputbox_completed"

    invoke-static {v0, p2}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
