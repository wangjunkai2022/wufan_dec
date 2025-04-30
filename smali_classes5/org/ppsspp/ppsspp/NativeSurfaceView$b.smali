.class Lorg/ppsspp/ppsspp/NativeSurfaceView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NativeSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ppsspp/ppsspp/NativeSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/ppsspp/ppsspp/NativeSurfaceView;


# direct methods
.method constructor <init>(Lorg/ppsspp/ppsspp/NativeSurfaceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView$b;->a:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 2
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView$b;->a:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->a(Lorg/ppsspp/ppsspp/NativeSurfaceView;)I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView$b;->a:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->a(Lorg/ppsspp/ppsspp/NativeSurfaceView;)I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView$b;->a:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->b(Lorg/ppsspp/ppsspp/NativeSurfaceView;I)I

    .line 4
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeSurfaceView$b;->a:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    iget-object v0, p1, Lorg/ppsspp/ppsspp/NativeSurfaceView;->k:Lorg/ppsspp/ppsspp/NativeGLView$a;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->a(Lorg/ppsspp/ppsspp/NativeSurfaceView;)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/ppsspp/ppsspp/NativeGLView$a;->getMode(I)V

    :cond_1
    :goto_0
    return-void
.end method
