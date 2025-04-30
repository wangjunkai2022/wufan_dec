.class Lorg/ppsspp/ppsspp/NativeActivity$h;
.super Ljava/lang/Object;
.source "NativeActivity.java"

# interfaces
.implements Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ppsspp/ppsspp/NativeActivity;->updateHider()V
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
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity$h;->a:Lorg/ppsspp/ppsspp/NativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity$h;->a:Lorg/ppsspp/ppsspp/NativeActivity;

    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/NativeActivity;->hideUiDelayed()V

    :cond_0
    return-void
.end method
