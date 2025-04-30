.class Lorg/ppsspp/ppsspp/NativeActivity$a;
.super Ljava/lang/Object;
.source "NativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ppsspp/ppsspp/NativeActivity;
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
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity$a;->a:Lorg/ppsspp/ppsspp/NativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeActivity;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting the render loop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity$a;->a:Lorg/ppsspp/ppsspp/NativeActivity;

    invoke-static {v1}, Lorg/ppsspp/ppsspp/NativeActivity;->access$100(Lorg/ppsspp/ppsspp/NativeActivity;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity$a;->a:Lorg/ppsspp/ppsspp/NativeActivity;

    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeActivity;->access$100(Lorg/ppsspp/ppsspp/NativeActivity;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ppsspp/ppsspp/NativeActivity;->runEGLRenderLoop(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeActivity;->access$000()Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeActivity;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Left the render loop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity$a;->a:Lorg/ppsspp/ppsspp/NativeActivity;

    invoke-static {v1}, Lorg/ppsspp/ppsspp/NativeActivity;->access$100(Lorg/ppsspp/ppsspp/NativeActivity;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method
