.class Lcom/papa91/wrapper/Wrapper12;
.super Ljava/lang/Object;
.source "Wrapper12.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static keyCodeToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
