.class public Lorg/ppsspp/ppsspp/a;
.super Ljava/lang/Object;
.source "AudioFocusChangeListener.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/ppsspp/ppsspp/a;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/a;->a:Z

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput-boolean v0, p0, Lorg/ppsspp/ppsspp/a;->a:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/a;->a:Z

    :goto_0
    return-void
.end method
