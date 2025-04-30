.class public Lcom/papa/gsyvideoplayer/render/effect/o;
.super Ljava/lang/Object;
.source "InvertColorsEffect.java"

# interfaces
.implements Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/opengl/GLSurfaceView;)Ljava/lang/String;
    .locals 0

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float colorR = (1.0 - color.r) / 1.0;\n  float colorG = (1.0 - color.g) / 1.0;\n  float colorB = (1.0 - color.b) / 1.0;\n  gl_FragColor = vec4(colorR, colorG, colorB, color.a);\n}\n"

    return-object p1
.end method
