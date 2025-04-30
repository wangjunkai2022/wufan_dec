.class final Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt$writeTo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ZipUtilExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->writeTo(Ljava/io/InputStream;Ljava/io/OutputStream;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "()Z",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $br:Ljava/io/BufferedInputStream;

.field final synthetic $buffer:[B

.field final synthetic $length:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/io/BufferedInputStream;[B)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt$writeTo$1;->$length:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt$writeTo$1;->$br:Ljava/io/BufferedInputStream;

    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt$writeTo$1;->$buffer:[B

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt$writeTo$1;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt$writeTo$1;->$length:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt$writeTo$1;->$br:Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt$writeTo$1;->$buffer:[B

    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt$writeTo$1;->$length:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
