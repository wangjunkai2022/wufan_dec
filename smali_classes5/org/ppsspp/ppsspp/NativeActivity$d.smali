.class Lorg/ppsspp/ppsspp/NativeActivity$d;
.super Ljava/lang/Object;
.source "NativeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ppsspp/ppsspp/NativeActivity;->createDialogBuilderNew()Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/ppsspp/ppsspp/NativeActivity;


# direct methods
.method constructor <init>(Lorg/ppsspp/ppsspp/NativeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity$d;->a:Lorg/ppsspp/ppsspp/NativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity$d;->a:Lorg/ppsspp/ppsspp/NativeActivity;

    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeActivity;->access$200(Lorg/ppsspp/ppsspp/NativeActivity;)V

    return-void
.end method
