.class public Lorg/ppsspp/ppsspp/g;
.super Ljava/lang/Object;
.source "NativeEGLConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ppsspp/ppsspp/g$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NativeEGLConfigChooser"

.field private static final b:I = 0x4


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)[Lorg/ppsspp/ppsspp/g$b;
    .locals 5

    .line 1
    array-length v0, p3

    new-array v0, v0, [Lorg/ppsspp/ppsspp/g$b;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lorg/ppsspp/ppsspp/g$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/ppsspp/ppsspp/g$b;-><init>(Lorg/ppsspp/ppsspp/g;Lorg/ppsspp/ppsspp/g$a;)V

    .line 4
    aget-object v3, p3, v1

    iput-object v3, v2, Lorg/ppsspp/ppsspp/g$b;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 5
    aget-object v3, p3, v1

    const/16 v4, 0x3024

    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/g;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    iput v3, v2, Lorg/ppsspp/ppsspp/g$b;->b:I

    .line 6
    aget-object v3, p3, v1

    const/16 v4, 0x3023

    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/g;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    iput v3, v2, Lorg/ppsspp/ppsspp/g$b;->c:I

    .line 7
    aget-object v3, p3, v1

    const/16 v4, 0x3022

    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/g;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    iput v3, v2, Lorg/ppsspp/ppsspp/g$b;->d:I

    .line 8
    aget-object v3, p3, v1

    const/16 v4, 0x3021

    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/g;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    iput v3, v2, Lorg/ppsspp/ppsspp/g$b;->e:I

    .line 9
    aget-object v3, p3, v1

    const/16 v4, 0x3025

    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/g;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    iput v3, v2, Lorg/ppsspp/ppsspp/g$b;->g:I

    .line 10
    aget-object v3, p3, v1

    const/16 v4, 0x3026

    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/g;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    iput v3, v2, Lorg/ppsspp/ppsspp/g$b;->f:I

    .line 11
    aget-object v3, p3, v1

    const/16 v4, 0x3031

    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/ppsspp/ppsspp/g;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    iput v3, v2, Lorg/ppsspp/ppsspp/g$b;->h:I

    .line 12
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, -0x1

    .line 1
    :try_start_0
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    aget p1, v0, p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    return v1

    :catch_0
    nop

    if-nez p3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal argument to getEglConfigAttrib: attr="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    return v1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 10

    const/16 v0, 0xf

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v6, v7

    .line 2
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v8, 0x0

    .line 3
    aget v5, v7, v8

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " egl configs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v5, :cond_14

    .line 5
    new-array v9, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v9

    move-object v6, v7

    .line 6
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7
    invoke-virtual {p0, p1, p2, v9}, Lorg/ppsspp/ppsspp/g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)[Lorg/ppsspp/ppsspp/g$b;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 9
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/ppsspp/ppsspp/g$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_1
    array-length v1, p1

    const/16 v2, 0x18

    const/16 v3, 0x8

    if-ge v0, v1, :cond_2

    .line 11
    aget-object v1, p1, v0

    .line 12
    iget v4, v1, Lorg/ppsspp/ppsspp/g$b;->b:I

    if-ne v4, v3, :cond_1

    iget v4, v1, Lorg/ppsspp/ppsspp/g$b;->c:I

    if-ne v4, v3, :cond_1

    iget v4, v1, Lorg/ppsspp/ppsspp/g$b;->d:I

    if-ne v4, v3, :cond_1

    iget v4, v1, Lorg/ppsspp/ppsspp/g$b;->e:I

    if-nez v4, :cond_1

    iget v4, v1, Lorg/ppsspp/ppsspp/g$b;->f:I

    if-lt v4, v3, :cond_1

    iget v4, v1, Lorg/ppsspp/ppsspp/g$b;->g:I

    if-lt v4, v2, :cond_1

    move-object p2, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez p2, :cond_4

    const/4 v0, 0x0

    .line 13
    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 14
    aget-object v1, p1, v0

    .line 15
    iget v4, v1, Lorg/ppsspp/ppsspp/g$b;->b:I

    if-ne v4, v3, :cond_3

    iget v4, v1, Lorg/ppsspp/ppsspp/g$b;->c:I

    if-ne v4, v3, :cond_3

    iget v4, v1, Lorg/ppsspp/ppsspp/g$b;->d:I

    if-ne v4, v3, :cond_3

    iget v4, v1, Lorg/ppsspp/ppsspp/g$b;->e:I

    if-nez v4, :cond_3

    iget v4, v1, Lorg/ppsspp/ppsspp/g$b;->f:I

    if-lt v4, v3, :cond_3

    iget v4, v1, Lorg/ppsspp/ppsspp/g$b;->g:I

    const/16 v5, 0x14

    if-lt v4, v5, :cond_3

    move-object p2, v1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    const/16 v0, 0x10

    if-nez p2, :cond_6

    const/4 v1, 0x0

    .line 16
    :goto_5
    array-length v4, p1

    if-ge v1, v4, :cond_6

    .line 17
    aget-object v4, p1, v1

    .line 18
    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->b:I

    if-ne v5, v3, :cond_5

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->c:I

    if-ne v5, v3, :cond_5

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->d:I

    if-ne v5, v3, :cond_5

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->e:I

    if-nez v5, :cond_5

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->f:I

    if-lt v5, v3, :cond_5

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->g:I

    if-lt v5, v0, :cond_5

    move-object p2, v4

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    if-nez p2, :cond_8

    const/4 v1, 0x0

    .line 19
    :goto_7
    array-length v4, p1

    if-ge v1, v4, :cond_8

    .line 20
    aget-object v4, p1, v1

    .line 21
    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->b:I

    if-ne v5, v3, :cond_7

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->c:I

    if-ne v5, v3, :cond_7

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->d:I

    if-ne v5, v3, :cond_7

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->e:I

    if-nez v5, :cond_7

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->g:I

    if-lt v5, v0, :cond_7

    move-object p2, v4

    goto :goto_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    if-nez p2, :cond_a

    const/4 v1, 0x0

    .line 22
    :goto_9
    array-length v4, p1

    if-ge v1, v4, :cond_a

    .line 23
    aget-object v4, p1, v1

    .line 24
    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->b:I

    if-ne v5, v3, :cond_9

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->c:I

    if-ne v5, v3, :cond_9

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->d:I

    if-ne v5, v3, :cond_9

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->e:I

    if-ne v5, v3, :cond_9

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->f:I

    if-lt v5, v3, :cond_9

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->g:I

    if-lt v5, v2, :cond_9

    move-object p2, v4

    goto :goto_a

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    :goto_a
    if-nez p2, :cond_c

    const/4 v1, 0x0

    .line 25
    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_c

    .line 26
    aget-object v2, p1, v1

    .line 27
    iget v4, v2, Lorg/ppsspp/ppsspp/g$b;->b:I

    if-ne v4, v3, :cond_b

    iget v4, v2, Lorg/ppsspp/ppsspp/g$b;->c:I

    if-ne v4, v3, :cond_b

    iget v4, v2, Lorg/ppsspp/ppsspp/g$b;->d:I

    if-ne v4, v3, :cond_b

    iget v4, v2, Lorg/ppsspp/ppsspp/g$b;->e:I

    if-ne v4, v3, :cond_b

    iget v4, v2, Lorg/ppsspp/ppsspp/g$b;->f:I

    if-lt v4, v3, :cond_b

    iget v4, v2, Lorg/ppsspp/ppsspp/g$b;->g:I

    if-lt v4, v0, :cond_b

    move-object p2, v2

    goto :goto_c

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_c
    :goto_c
    const/4 v1, 0x6

    const/4 v2, 0x5

    if-nez p2, :cond_e

    const/4 v4, 0x0

    .line 28
    :goto_d
    array-length v5, p1

    if-ge v4, v5, :cond_e

    .line 29
    aget-object v5, p1, v4

    .line 30
    iget v6, v5, Lorg/ppsspp/ppsspp/g$b;->b:I

    if-lt v6, v2, :cond_d

    iget v6, v5, Lorg/ppsspp/ppsspp/g$b;->c:I

    if-lt v6, v1, :cond_d

    iget v6, v5, Lorg/ppsspp/ppsspp/g$b;->d:I

    if-lt v6, v2, :cond_d

    iget v6, v5, Lorg/ppsspp/ppsspp/g$b;->g:I

    if-lt v6, v0, :cond_d

    iget v6, v5, Lorg/ppsspp/ppsspp/g$b;->f:I

    if-lt v6, v3, :cond_d

    move-object p2, v5

    goto :goto_e

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_e
    :goto_e
    if-nez p2, :cond_10

    const/4 v3, 0x0

    .line 31
    :goto_f
    array-length v4, p1

    if-ge v3, v4, :cond_10

    .line 32
    aget-object v4, p1, v3

    .line 33
    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->b:I

    if-lt v5, v2, :cond_f

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->c:I

    if-lt v5, v1, :cond_f

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->d:I

    if-lt v5, v2, :cond_f

    iget v5, v4, Lorg/ppsspp/ppsspp/g$b;->g:I

    if-lt v5, v0, :cond_f

    move-object p2, v4

    goto :goto_10

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_10
    :goto_10
    if-nez p2, :cond_11

    .line 34
    array-length v0, p1

    if-lez v0, :cond_11

    .line 35
    aget-object p2, p1, v8

    :cond_11
    if-eqz p2, :cond_12

    .line 36
    invoke-virtual {p2}, Lorg/ppsspp/ppsspp/g$b;->a()V

    .line 37
    iget-object p1, p2, Lorg/ppsspp/ppsspp/g$b;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p1

    .line 38
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed to find a valid EGL config"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig failed when retrieving"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig failed when counting"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :goto_11
    throw p1

    :goto_12
    goto :goto_11

    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3025
        0x10
        0x3026
        0x0
        0x3033
        0x4
        0x3040
        0x4
        0x3038
    .end array-data
.end method
