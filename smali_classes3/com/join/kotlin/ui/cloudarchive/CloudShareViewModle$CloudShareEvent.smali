.class public final Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;
.super Ljava/lang/Object;
.source "CloudShareViewModle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloudShareEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;",
        "",
        "",
        "showdownloadModDialog",
        "I",
        "getShowdownloadModDialog",
        "()I",
        "setShowdownloadModDialog",
        "(I)V",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private showdownloadModDialog:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShowdownloadModDialog()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;->showdownloadModDialog:I

    return v0
.end method

.method public final setShowdownloadModDialog(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;->showdownloadModDialog:I

    return-void
.end method
