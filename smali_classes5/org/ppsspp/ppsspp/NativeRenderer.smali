.class public Lorg/ppsspp/ppsspp/NativeRenderer;
.super Ljava/lang/Object;
.source "NativeRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static c:Ljava/lang/String; = "NativeRenderer"


# instance fields
.field private a:Lorg/ppsspp/ppsspp/NativeActivity;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/ppsspp/ppsspp/NativeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeRenderer;->a:Lorg/ppsspp/ppsspp/NativeActivity;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeRenderer;->b:Z

    return v0
.end method

.method public native displayInit()V
.end method

.method public native displayRender()V
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/NativeRenderer;->b:Z

    .line 2
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeRenderer;->displayRender()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/NativeRenderer;->b:Z

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeRenderer;->displayInit()V

    return-void
.end method
