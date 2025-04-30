.class public Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cocos2dxEGLConfigChooser"
.end annotation


# instance fields
.field protected configAttribs:[I

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;IIIIII)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    const/4 p2, 0x3

    aput p5, p1, p2

    const/4 p2, 0x4

    aput p6, p1, p2

    const/4 p2, 0x5

    aput p7, p1, p2

    .line 2
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    aget p1, v0, p1

    return p1

    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v1, 0x1

    new-array v9, v1, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1
    invoke-interface {v7, v8, v10, v11, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2
    aget v2, v9, v11

    new-array v12, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v13, 0xf

    new-array v3, v13, [I

    const/16 v2, 0x3024

    aput v2, v3, v11

    .line 3
    iget-object v2, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    aget v4, v2, v11

    aput v4, v3, v1

    const/16 v4, 0x3023

    const/4 v5, 0x2

    aput v4, v3, v5

    aget v4, v2, v1

    const/4 v14, 0x3

    aput v4, v3, v14

    const/16 v4, 0x3022

    const/4 v6, 0x4

    aput v4, v3, v6

    aget v4, v2, v5

    const/4 v5, 0x5

    aput v4, v3, v5

    const/16 v4, 0x3021

    const/4 v15, 0x6

    aput v4, v3, v15

    const/4 v4, 0x7

    aget v16, v2, v14

    aput v16, v3, v4

    const/16 v4, 0x8

    const/16 v16, 0x3025

    aput v16, v3, v4

    const/16 v4, 0x9

    aget v16, v2, v6

    aput v16, v3, v4

    const/16 v4, 0xa

    const/16 v16, 0x3026

    aput v16, v3, v4

    const/16 v4, 0xb

    aget v2, v2, v5

    aput v2, v3, v4

    const/16 v2, 0xc

    const/16 v4, 0x3040

    aput v4, v3, v2

    const/16 v2, 0xd

    aput v6, v3, v2

    const/16 v2, 0xe

    const/16 v4, 0x3038

    aput v4, v3, v2

    new-array v6, v1, [I

    .line 4
    aget v5, v9, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v12

    move-object/from16 v16, v6

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 5
    aget v1, v16, v11

    if-lez v1, :cond_0

    .line 6
    iget-object v1, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    invoke-virtual {v0, v7, v8, v12, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    return-object v1

    :cond_0
    new-array v3, v13, [I

    .line 7
    fill-array-data v3, :array_0

    new-array v4, v13, [I

    .line 8
    fill-array-data v4, :array_1

    .line 9
    iget-object v1, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    aget v1, v1, v14

    if-nez v1, :cond_1

    .line 10
    aget v5, v9, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v12

    move-object/from16 v6, v16

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    new-array v1, v15, [I

    .line 11
    fill-array-data v1, :array_2

    goto :goto_0

    .line 12
    :cond_1
    aget v5, v9, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    move-object v4, v12

    move-object/from16 v6, v16

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    new-array v1, v15, [I

    .line 13
    fill-array-data v1, :array_3

    .line 14
    :goto_0
    aget v2, v16, v11

    if-lez v2, :cond_2

    .line 15
    invoke-virtual {v0, v7, v8, v12, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v10

    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3021
        0x4
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x5
        0x6
        0x5
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
    .end array-data
.end method

.method public selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 14

    move-object/from16 v0, p3

    .line 1
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v10, v0, v3

    const/16 v8, 0x3025

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object v7, v10

    .line 2
    invoke-direct/range {v4 .. v9}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v8, 0x3026

    .line 3
    invoke-direct/range {v4 .. v9}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    const/4 v5, 0x4

    .line 4
    aget v5, p4, v5

    if-lt v11, v5, :cond_0

    const/4 v5, 0x5

    aget v5, p4, v5

    if-lt v4, v5, :cond_0

    const/16 v8, 0x3024

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object v7, v10

    .line 5
    invoke-direct/range {v4 .. v9}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v8, 0x3023

    .line 6
    invoke-direct/range {v4 .. v9}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    const/16 v8, 0x3022

    .line 7
    invoke-direct/range {v4 .. v9}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    const/16 v8, 0x3021

    .line 8
    invoke-direct/range {v4 .. v9}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    .line 9
    aget v5, p4, v2

    if-lt v11, v5, :cond_0

    const/4 v5, 0x1

    aget v5, p4, v5

    if-lt v12, v5, :cond_0

    const/4 v5, 0x2

    aget v5, p4, v5

    if-lt v13, v5, :cond_0

    const/4 v5, 0x3

    aget v5, p4, v5

    if-lt v4, v5, :cond_0

    return-object v10

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
