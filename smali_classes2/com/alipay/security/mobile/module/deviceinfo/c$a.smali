.class final Lcom/alipay/security/mobile/module/deviceinfo/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/security/mobile/module/deviceinfo/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/security/mobile/module/deviceinfo/c;


# direct methods
.method private constructor <init>(Lcom/alipay/security/mobile/module/deviceinfo/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/c$a;->a:Lcom/alipay/security/mobile/module/deviceinfo/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/security/mobile/module/deviceinfo/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/c$a;-><init>(Lcom/alipay/security/mobile/module/deviceinfo/c;)V

    return-void
.end method

.method private static a(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 0

    iget p0, p0, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->width:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    iget p1, p1, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->width:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
